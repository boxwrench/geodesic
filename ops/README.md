# Operations

The [framework](../framework/) says *what* to evaluate; these game plans say *how* — task by task, with the execution mode made explicit so the work is reproducible and the right tool (human, AI, API, or telephone) is used for each job.

## Execution modes

Every task in a game plan is tagged with one mode:

| Mode | Name | What it means | Examples |
|---|---|---|---|
| **A** | Automated | Scripted pull from a reliable API/dataset; reproducible by anyone running the script | FEMA floodplain query, Census pull, water-rights database query |
| **B** | AI-assisted human | AI does the reading/extraction at scale; human verifies against primary sources before anything enters results | Statute screens, meeting-transcript analysis, litigation scrapes |
| **C** | Human on computer | Manual web/records work that doesn't automate well | Locating a county's code host, records requests, comp plan reading |
| **D** | Human offline | Phone calls, meetings, counsel | Planner calls, EDO outreach, counsel review |

Two rules that govern all modes:

1. **Mode B verification rule:** AI-extracted legal or factual claims never enter `results/` until a human has checked the citation against the primary source. AI output is a draft, not a finding.
2. **Cache everything (token/time economics):** every raw artifact fetched during research — statute text, transcripts, dataset extracts — is saved into the repo (`research/raw/` or `data/`) so future sessions read locally instead of re-searching. Paying for the same retrieval twice is a bug.

## Method-card format

Each task in a game plan follows this card:

```
Task:        what gets determined
Mode:        A / B / C / D
Sources:     entries from data-sources.md
Procedure:   numbered steps
Output:      exact file/cell in results/ it fills
Time est.:   budget (actuals get logged in the county/state file)
```

## Game plans

| Step | Plan | Status |
|---|---|---|
| 0 — State screens (WY, SD, NC) | [step-0-state-screens.md](step-0-state-screens.md) | ready to execute |
| 1 — Manual county pilot | [step-1-county-pilot.md](step-1-county-pilot.md) | ready after Step 0 |
| 2 — Signal calibration | [step-2-calibration.md](step-2-calibration.md) | blocked by Step 1 |
| 3 — Tooling & automation (incl. Step 4 scale-out) | [step-3-automation.md](step-3-automation.md) | decision doc; build triggers defined |

Supporting registry: [data-sources.md](data-sources.md) — every API and government source we rely on, with access method and reliability notes.

## Standing protocols

Reusable instruments invoked by the game plans:

| Protocol | What it standardizes | Modes |
|---|---|---|
| [protocol-meeting-grading.md](protocol-meeting-grading.md) | Acquiring meeting transcripts (yt-dlp / Legistar / whisper / pdftotext) and grading development friendliness — deterministic scripts first, AI only for tone, tokens budgeted | A → B |
| [protocol-edo-outreach.md](protocol-edo-outreach.md) | EDO contact discovery, email + call scripts, response classification, latency logging | C/D |
