# Game Plan — Step 1: Manual County Pilot

**Goal:** completed Stage 1 + 2 [county files](../results/counties/_template.md) for Sweetwater WY, Fall River SD, Jones NC; scorecard rows filled; comparison memo on rezoning/permitting ease (the originating request).
**Prerequisite:** Step 0 state file exists for the county's state.
**Budget:** Stage 1 ≈ 2h/county · Stage 2 ≈ 1 day/county. **Log actual time per signal** — that's the calibration data Step 2 consumes.
**Acceptance criteria:** every county-file cell sourced; time logged; topology classified; verdict written; memo drafted.

## Stage 1 tasks (2h/county)

### 1.1 Physical overlays — Mode A/C

- **Sources:** FEMA NFHL, NWI, HIFLD, PAD-US, BIA, IPaC ([registry](data-sources.md))
- **Procedure:** for 2–3 plausible site areas in the county (large contiguous ag parcels near a highway), check floodplain, wetlands, transmission distance, protected/tribal/military overlays, and listed species/critical habitat (IPaC) via each portal's map viewer. Screenshot + save extracts to `research/raw/{county}/`. No scripting yet — viewers are fast enough at n=3.
- **Output:** county file Stage 1 table. **Time:** 45 min

### 1.2 Water status — Mode A/C

- WY/SD: query the state water-rights database for basin status and recent application outcomes near the county. NC: identify the applicable DEQ regime (capacity use area? withdrawal registration thresholds?).
- **Output:** Stage 1 water row. **Time:** 30 min

### 1.3 Ownership fragmentation — Mode C

- County GIS parcel viewer if it exists (probe `/arcgis/rest/services`); else county assessor lookup. Count owners across the candidate site areas; note any single-owner ranch/timber holdings >5,000 ac.
- **Output:** fragmentation row. **Time:** 30 min

### 1.4 Municipal proximity / ETJ — Mode A/C

- TIGER municipal boundaries + the state's ETJ rule from the Step 0 file. NC: map each municipality's ETJ reach against candidate areas.
- **Output:** ETJ row. **Time:** 15 min

## Stage 2 tasks (1 day/county)

### 2.1 Locate the meeting record — Mode C

- Find where planning board + commission meetings live: Granicus/Legistar? YouTube? Clerk PDFs only? Record the answer in the county file (it's also a capacity signal).
- **Time:** 30 min

### 2.2 24-month meeting analysis + friendliness grade — Mode A/B

- **Procedure:** run [protocol-meeting-grading.md](protocol-meeting-grading.md) (acquire transcripts via yt-dlp/Legistar/pdftotext → deterministic scoring → sampled AI pass → Development Friendliness Grade). For the pilot, the by-hand shortcut in that protocol applies — but record in the protocol's JSON schema. Also compute the [rezoning-ease metrics](../framework/03-county-screen.md#rezoning-ease-metrics-first-class-measurements) and watch one full meeting per county (honesty check).
- **Output:** friendliness grade + components, rezoning-ease table, qualitative section. **Time:** 2–3h/county — the biggest line item, and the thing Step 3 most wants to automate.

### 2.3 Code + comp plan — Mode B/C

- Locate code host; pull PUD/CUP procedure and measure its length; read comp plan growth posture (AI summary, human skim of the land-use chapter).
- **Output:** topology inputs + comp plan row. **Time:** 1h

### 2.4 Stealth diligence — Mode B

- Litigation scrape, tax-base concentration (county CAFR/assessor), referendum + election history, standing opposition orgs, water protest log (West). Per [framework/03](../framework/03-county-screen.md#stealth-diligence-asymmetric-information).
- **Output:** stealth-diligence section. **Time:** 1.5h

### 2.5 Planner call — Mode D

Script (use verbatim, then go off-script):

> Intro: researcher evaluating rural counties for a potential large mixed-use development; not yet site-specific.
> 1. "What's the largest subdivision or industrial project the county has approved in the last five years, and how long did review take?"
> 2. "If someone wanted a planned-development rezoning on a few thousand acres of ag land, what's the process and realistic timeline?"
> 3. "Is the comp plan due for an update? Any zoning rewrites in progress?"
> 4. "How are large projects usually received in public comment here?"
> 5. "Who else should I talk to?"
> Log: date, name, role, answers, and your read — but record the read *separately* from the facts.

- **Output:** planner-call notes. **Time:** 30 min + scheduling

### 2.6 EDO outreach — Mode D

Run [protocol-edo-outreach.md](protocol-edo-outreach.md): contact discovery → email template → call script → 4-way classification (survival-hungry / managed-growth / preservationist / no-capacity) → response-latency log.

- **Output:** EDO classification + notes. **Time:** 15 min + call + latency tracking

### 2.7 Synthesis — Mode B

- Classify topology, write the county verdict, fill the scorecard row, log total time per signal.
- **Time:** 45 min

## Deliverable: the comparison memo

After all three counties: 2–3 pages in `results/`, ranking the three on rezoning/permitting ease with the evidence behind each ranking, plus the state-screen context (which may dominate the county findings). This answers the original request.
