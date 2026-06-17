# Protocol: Planning-Meeting Grading

Watching planning board meetings is the project's proven highest-signal qualitative instrument. This protocol turns "watch a few meetings and gauge friendliness" into a reproducible grade — **script-first**: deterministic code does every count it can; AI touches only what scripts can't measure. Tokens are a budget line, not a default.

**Inputs:** 24 months of planning board + commission meetings for a county.
**Output:** per-meeting JSON records + one county **Development Friendliness Grade** with component scores, filed in the county file and scorecard.

## Stage 1 — Discover (Mode C, once per county, ~30 min)

Find where meetings live, in this order: Legistar/Granicus subscription (check `webapi.legistar.com/v1/{county}` and the county site footer) → county YouTube channel → agenda/minutes PDFs on the clerk's site → Google-Drive/Vimeo unstructured → records request. Log the answer in the county file **and in the [meeting-records registry](../results/meeting-records.md)** — *where and how records live is itself a capacity signal and a standing national tracking dimension* ([L2](../research/pilot-lessons.md), [L20](../research/pilot-lessons.md)).

**Record all four dimensions, not just the host (the pilot proved no two counties are alike and none had clean verbatim transcripts — [L20](../research/pilot-lessons.md)):**

1. **Format & tone-fidelity** — video+captions ▸ audio ▸ verbatim minutes ▸ summary minutes ▸ agendas-only. *Can tone be read, or only counts/outcomes?* (Determines whether the Stage-4 board-tone component is valid.)
2. **Availability & access** — public vs. **gated** (JS-rendered Granicus `ViewPublisher`, Vimeo, Google-Drive PDFs, login/PACER); 24-month depth; **script-retrievable vs. needs-human/browser.** (Gated portals are the recurring pipeline wall — [L14](../research/pilot-lessons.md).)
3. **Coverage & diversity** — *which* bodies are recorded (Commission / P&Z / Planning Board) and **is the land-use gate body itself captured**? (A rich video archive of the wrong body is useless.)
4. **Capacity-signal read** — what the host tier + coverage imply about institutional capacity, feeding the [topology classification](../framework/03-county-screen.md).

Capture these in the registry's four-dimension schema so every county screened adds to a comparable national map. *PDF-only, Drive/Vimeo, or records-request-only are progressively lower capacity tiers.* **Pair every record assessment with the topology class** — a rich record in a no-zoning county still can't produce a valid friendliness ranking ([L15](../research/pilot-lessons.md)).

## Stage 2 — Acquire (Mode A, scripted, $0 tokens)

| Source | Command/approach |
|---|---|
| YouTube | `yt-dlp --write-auto-subs --sub-langs en --skip-download --convert-subs srt <channel/playlist URL>` — auto-captions are free transcripts; good enough for grading |
| YouTube w/o captions | Download audio (`yt-dlp -x`), transcribe locally with faster-whisper — still $0 tokens |
| Legistar | REST API: events + matters endpoints → minutes text |
| PDF minutes | `pdftotext -layout`; OCR via tesseract if scanned |

Everything lands in `research/raw/{county}/meetings/` named `YYYY-MM-DD-{body}.{txt,srt,pdf}`. Cache is permanent — never re-fetch.

## Stage 3 — Score, deterministic (Mode A, scripted, $0 tokens)

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
