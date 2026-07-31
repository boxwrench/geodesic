# Game Plan — Step 1: Manual County Pilot

**Goal:** completed Stage 1 + 2 [county files](../results/counties/_template.md) for Sweetwater WY, Fall River SD, Jones NC; scorecard rows filled; comparison memo on rezoning/permitting ease (the originating request).
**Prerequisite:** Step 0 state file exists for the county's state.
**Budget:** Stage 1 ≈ 2h/county · Stage 2 ≈ 1 day/county. **Log actual time per signal** — that's the calibration data Step 2 consumes.
**Acceptance criteria:** every county-file cell sourced; provenance block completed; water/new-vs-acquirable-rights distinction made where applicable; land-assembly search method stated; county posture depth completed from observed approvals/rejections where records exist; time logged; topology classified; verdict written; memo drafted.

## Stage 1 tasks (2h/county)

### 1.1 Physical overlays — Mode A/C

- **Sources:** FEMA NFHL, NWI, HIFLD, PAD-US, BIA, IPaC ([registry](data-sources.md))
- **Procedure:** for 2–3 plausible site areas in the county (large contiguous ag parcels near a highway), check floodplain, wetlands, transmission distance, protected/tribal/military overlays, and listed species/critical habitat (IPaC) via each portal's map viewer. Screenshot + save extracts to `research/raw/{county}/`. No scripting yet — viewers are fast enough at n=3.
- **Output:** county file Stage 1 table. **Time:** 45 min

### 1.2 Water status — Mode A/C

- WY/SD: query the state water-rights database for basin status and recent application outcomes near the county. Then separately check whether existing rights appear purchasable/transferable through the state's change-of-use/change-place process and whether large agricultural parcels commonly advertise attached rights. NC: identify the applicable DEQ regime (capacity use area? withdrawal registration thresholds?).
- **Output:** Stage 1 water row. **Time:** 30 min

### 1.3 Ownership fragmentation + large-tract inventory — Mode C

- County GIS parcel viewer if it exists (probe `/arcgis/rest/services`); else county assessor lookup. Count owners across the candidate site areas; note any single-owner ranch/timber holdings >5,000 ac.
- Run a large-tract search across assessor parcels where available, public ranch/farm listing sources, LandWatch/Land.com-style listing aggregators, broker pages, and local auction listings. Record the exact search method and date. Do not claim "no sites above X acres" unless the method is stated and bounded.
- **Output:** fragmentation row. **Time:** 30 min

### 1.4 Municipal proximity / ETJ — Mode A/C

- TIGER municipal boundaries + the state's ETJ rule from the Step 0 file. NC: map each municipality's ETJ reach against candidate areas.
- **Output:** ETJ row. **Time:** 15 min

## Stage 2 tasks (1 day/county)

### 2.1 Locate the meeting record — Mode C

- Find where planning board + commission meetings live: Granicus/Legistar? YouTube? Clerk PDFs only? Record the answer in the county file (it's also a capacity signal).
- **Time:** 30 min

### 2.2 24-month meeting analysis + friendliness grade — Mode A/B

- **Procedure:** run [protocol-meeting-grading.md](protocol-meeting-grading.md), which is now **implemented in [`scripts/meetings/`](../scripts/meetings/README.md)** — the by-hand shortcut no longer applies to a new county:

  ```
  python scripts/meetings/discover.py "<County> County" <ST>   # then paste the stub into registry.json
  python scripts/meetings/probe.py <county>                    # what is reachable
  python scripts/meetings/acquire.py <county> --dry-run        # then without --dry-run
  python scripts/meetings/score.py <county> --per-meeting
  python scripts/meetings/render_records.py                    # update the records registry
  ```

  Two things stay human and are not defects: **set the topology class** (the stub emits `unknown`, which makes the scorer withhold the grade) and **the Stage-4 tone pass**. Also compute the [rezoning-ease metrics](../framework/03-county-screen.md#rezoning-ease-metrics-first-class-measurements) and watch one full meeting (honesty check) — build a [review queue](../results/meeting-review-queue.md) ranked by contention first, so the hour goes to the contested meetings rather than a random one.
- **Output:** friendliness grade + components (reported as points earned of points *scorable*, never a bare number), rezoning-ease table, qualitative section, plus an updated [meeting-records registry](../results/meeting-records.md) entry. **Time:** was 2–3h/county by hand; the scripted path is minutes of compute plus the topology call and the review hour. Acquisition cost is now set by the county's vendor, not by us — Legistar and plain PDF archives are cheap forever, Granicus and Vimeo need a browser step every time.

### 2.2.5 County posture depth — Mode B/C

- **Procedure:** build a short, observed-decision posture record rather than relying on vibes. Review planning/zoning commission membership, meeting cadence, recent votes, staff recommendations, board/commission decisions, moratoria, zoning rewrites, litigation, unusual approval conditions, and recurring public-comment participants. Include approvals and rejections of large industrial, energy, subdivision, utility, or resource projects from at least the last 24 months where records exist.
- **Output:** county file §"County posture depth". **Time:** 1–2h/county

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

- Complete the provenance block, classify topology, write the county verdict, fill the scorecard row, log total time per signal.
- **Time:** 45 min

## Deliverable: the comparison memo

After all three counties: 2–3 pages in `results/`, ranking the three on rezoning/permitting ease with the evidence behind each ranking, plus the state-screen context (which may dominate the county findings). This answers the original request.
