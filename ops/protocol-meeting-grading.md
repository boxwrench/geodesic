# Protocol: Planning-Meeting Grading

Watching planning board meetings is the project's proven highest-signal qualitative instrument. This protocol turns "watch a few meetings and gauge friendliness" into a reproducible grade — **script-first**: deterministic code does every count it can; AI touches only what scripts can't measure. Tokens are a budget line, not a default.

**Inputs:** 24 months of planning board + commission meetings for a county.
**Output:** per-meeting JSON records + one county **Development Friendliness Grade** with component scores, filed in the county file and scorecard.

## Running it

This protocol is implemented in [`scripts/meetings/`](../scripts/meetings/README.md).
Do not run the stages by hand unless a script has failed and you are working around it.

```
python scripts/meetings/discover.py "Ellis County" TX   # Stage 1 - emits a registry stub
python scripts/meetings/probe.py ellis                  # Stage 1 - what is reachable
python scripts/meetings/acquire.py ellis --dry-run      # Stage 2 - plan
python scripts/meetings/acquire.py ellis --limit 3      # Stage 2 - test, then drop --limit
python scripts/meetings/transcribe.py ellis             # Stage 2 - only if no captions
python scripts/meetings/score.py ellis --per-meeting    # Stages 3 and 5
```

**Stage 4 (board tone) has no script and is not going to get one.** It needs a
reading pass. `score.py` reports its 10 points as *unscored* rather than guessing,
which is why a fresh county's grade is out of 90 at best.

**County facts live in [`scripts/meetings/registry.json`](../scripts/meetings/registry.json)**,
which is the single source of truth. The fact tables in the
[meeting-records registry](../results/meeting-records.md) are generated from it by
`render_records.py`; the interpretation in that document is hand-written. After
changing registry.json, run:

```
python scripts/meetings/render_records.py          # regenerate
python scripts/meetings/render_records.py --check  # verify in sync (use in review)
```

## Stage 1 — Discover (Mode C, once per county, ~30 min)

> **Scripted:** `discover.py "<County> County" <ST>` probes Legistar, then Granicus,
> then crawls the county site and classifies every record host it recognises,
> emitting a `registry.json` stub. `probe.py <county>` then reports which sources
> are actually reachable versus client-rendered. What remains manual is the
> judgement the script deliberately refuses to make: **which body is the real
> land-use gate, and the topology class.** The stub emits `topology: "unknown"`,
> which makes `score.py` withhold the grade until a human sets it.

Find where meetings live, in this order: Legistar/Granicus subscription (check `webapi.legistar.com/v1/{county}` and the county site footer) → county YouTube channel → agenda/minutes PDFs on the clerk's site → Google-Drive/Vimeo unstructured → records request. Log the answer in the county file **and in the [meeting-records registry](../results/meeting-records.md)** — *where and how records live is itself a capacity signal and a standing national tracking dimension* ([L2](../research/pilot-lessons.md), [L20](../research/pilot-lessons.md)).

**Record all four dimensions, not just the host (the pilot proved no two counties are alike and none had clean verbatim transcripts — [L20](../research/pilot-lessons.md)):**

1. **Format & tone-fidelity** — video+captions ▸ audio ▸ verbatim minutes ▸ summary minutes ▸ agendas-only. *Can tone be read, or only counts/outcomes?* (Determines whether the Stage-4 board-tone component is valid.)
2. **Availability & access** — public vs. **gated** (JS-rendered Granicus `ViewPublisher`, Vimeo, Google-Drive PDFs, login/PACER); 24-month depth; **script-retrievable vs. needs-human/browser.** (Gated portals are the recurring pipeline wall — [L14](../research/pilot-lessons.md).)
3. **Coverage & diversity** — *which* bodies are recorded (Commission / P&Z / Planning Board) and **is the land-use gate body itself captured**? (A rich video archive of the wrong body is useless.)
4. **Capacity-signal read** — what the host tier + coverage imply about institutional capacity, feeding the [topology classification](../framework/03-county-screen.md).

Capture these in the registry's four-dimension schema so every county screened adds to a comparable national map. *PDF-only, Drive/Vimeo, or records-request-only are progressively lower capacity tiers.* **Pair every record assessment with the topology class** — a rich record in a no-zoning county still can't produce a valid friendliness ranking ([L15](../research/pilot-lessons.md)).

## Stage 2 — Acquire (Mode A, scripted, $0 tokens)

> **Scripted:** `acquire.py <county>` handles PDF indexes, direct PDFs, Google-Drive
> file links, and YouTube/Vimeo enumeration; `transcribe.py <county>` runs
> faster-whisper over any audio that had no captions. Granicus and Facebook are
> reported and skipped by design — clear those in a browser and drop the files into
> the cache directory using the same `YYYY-MM-DD-{body}.txt` naming.
>
> Known live blocker: Vimeo is unextractable as of 2026-07-25
> ([yt-dlp #17271](https://github.com/yt-dlp/yt-dlp/issues/17271)).

| Source | Command/approach |
|---|---|
| YouTube | `yt-dlp --write-auto-subs --sub-langs en --skip-download --convert-subs srt <channel/playlist URL>` — auto-captions are free transcripts; good enough for grading |
| YouTube w/o captions | Download audio (`yt-dlp -x`), transcribe locally with faster-whisper — still $0 tokens |
| Legistar | REST API: events + matters endpoints → minutes text |
| PDF minutes | `pdftotext -layout`; OCR via tesseract if scanned |

Everything lands in `research/raw/{county}/meetings/` named `YYYY-MM-DD-{body}.{txt,srt,pdf}`. Cache is permanent — never re-fetch.

## Stage 3 — Score, deterministic (Mode A, scripted, $0 tokens)

> **Scripted:** `score.py <county>`. Outcome extraction runs in three tiers and
> reports which one fired: `explicit` (the record states its own tally), `votes`
> (per-item vote lines), `inference` (regex over land-use sentences — aggregate
> only). Contention counts **distinct opposing commenters**, not keyword hits;
> keyword frequency over-fires on staff-report boilerplate by roughly eight to one
> and is not a substitute. Where the records do not state commenter counts, the
> component goes unscored rather than guessed.

A script computes, per meeting, from keyword/regex passes:

| Metric | How |
|---|---|
| Land-use item count vs. infrastructure/budget item count | Keyword lists: `rezon\|conditional use\|variance\|subdivision\|plat\|PUD` vs. `road\|bridge\|budget\|maintenance\|grant` |
| Outcomes | `approved\|denied\|tabled\|continued\|postponed` within N words of a land-use term |
| Contention index | Count of distinct public commenters; frequency of `oppose\|opposition\|concern\|protest\|petition\|traffic\|property values` |
| Continuance rate | tabled+continued / heard (friction proxy) |
| Scale ceiling | Largest `(\d+)[ -](acre\|lot\|unit\|home)` mentioned |
| Throughput | Items per meeting; meeting length if video |

Regex outputs are noisy per-meeting but reliable in 24-month aggregate. The script and keyword lists live in the repo so grades are reproducible and comparable across counties.

## Stage 4 — AI pass, sampled (Mode B, budgeted tokens)

LLM reads only: (a) every land-use item the regex flagged ambiguous, (b) a random 20% sample of land-use discussions for tone. It answers a fixed schema: board tone toward applicants (deferential / neutral / skeptical / hostile), opposition type (none / individual / organized), staff competence signals, any project comparable to ours discussed. Human spot-checks 10% of AI outputs against the source.

**Learning step (feeds the [friendliness-marker loop](../research/friendliness-markers.md)):** beyond the fixed schema, the reader flags **any tell not already in the marker tables** — a phrase, board habit, or recurring objection shape that seems to predict the outcome — and logs it as a `candidate` marker with the meeting cite. The grader's keyword lists (Stage 3) are *not* assumed complete; they grow as markers graduate (recur in ≥3 meetings across ≥2 counties and track outcomes). This is how "what friendliness looks like" is learned from evidence rather than hard-coded, sharpening the grade and the search over time.

## Stage 5 — The grade

> **Scripted, with two gates enforced in code rather than left to discipline:**
>
> - **Topology gate ([L15](../research/pilot-lessons.md)).** A county with no
>   discretionary land-use gate cannot emit a composite. `score.py` reports the
>   components and withholds the number. It is not a warning string — the grade is
>   not produced. Fall River and Jones both correctly withhold.
> - **Agenda-mix validity.** For a body whose mandate is land use only, the
>   infrastructure-versus-land-use mix is 100% by definition and carries no signal.
>   Set `"mandate": "land_use_only"` in the registry and the component goes unscored.
>
> Because tone and often scale-ceiling are unscored, report the grade as *points
> earned of points scorable*, never as a bare number out of 100.

**Development Friendliness Grade (0–100):**

| Component | Weight | Source |
|---|---|---|
| Approval ratio (land-use items approved/heard) | 35 | Stage 3 |
| Contention index (inverted) | 25 | Stage 3 |
| Agenda mix (infrastructure-dominated = good, per [framework/03](../framework/03-county-screen.md)) | 15 | Stage 3 |
| Throughput / continuance rate (inverted) | 10 | Stage 3 |
| Board tone | 10 | Stage 4 |
| Scale ceiling proximity (largest precedent vs. our entry size) | 5 | Stage 3 |

Report the grade **with its components, never alone** — a 90 from approvals-of-tiny-variances means something different than a 90 with large-project precedent. Weights are provisional until [Step 2 calibration](step-2-calibration.md).

## Pilot-stage shortcut

For the 3-county pilot, Stages 3–5 may be run "by hand with AI assistance" (Mode B throughout) before any script exists — but record results *in the same JSON schema*, so the pilot doubles as the script's test fixture and acceptance test.

## Honesty check

Also actually *watch* one full meeting per county at 2x speed. The friend's original method works because humans catch things schemas don't (who defers to whom, who shows up angry). Budget the hour; log impressions separately from the scored data.

**Which meeting to watch is a curation output, not a coin flip.** The cached
records already say where opposition appeared, so rank by contention rather than
recency — the meetings where nothing happened teach nothing. The worked example
for the pilot counties is the
[meeting review queue](../results/meeting-review-queue.md), which orders every
contested hearing Sweetwater held in 24 months and states what to listen for.
Produce the equivalent for each new county after Stage 3, when the contention
data exists but before spending review hours.

Video that a script cannot download is usually still **watchable in a browser** —
Granicus and Vimeo both are. Treat "not automatable" and "not reviewable" as
separate facts.
