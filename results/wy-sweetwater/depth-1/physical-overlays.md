# Sweetwater Depth 1 Physical Overlays

Date: 2026-06-20  
Status: overlay checklist; AOI-specific GIS pull not yet complete

## Decision Question

Can a Green River / I-80 corridor parcel avoid the physical and federal/state overlays that would turn a friendly-county site into a slow federal-land project?

## Current Answer

Unknown until a polygon exists. General Sweetwater exposure is clear enough to prioritize overlays:

1. sage-grouse core areas and leks;
2. BLM Rock Springs RMP ACEC / ROW exclusion / ROW avoidance;
3. federal surface and land-tenure categories;
4. Green River / wetland / NWI features;
5. transmission and road access;
6. geotech/subsidence zones west of Green River.

## Overlay Stack

| Layer | Why it matters | Current status | Depth 1 output |
|---|---|---|---|
| BLM surface | Federal surface can add exchange/ROW/NEPA path | open | Federal-vs-private section map |
| Rock Springs RMP ACEC / ROW exclusions | May cap utilities, roads, pipelines, or layout | source path confirmed; clip open | Candidate AOI clipped to RMP constraints |
| Sage-grouse core / leks | Layout, disturbance caps, timing limits | open | Candidate AOI clipped to core area / lek buffers |
| FEMA NFHL | Corridor flood risk and Green River adjacency | open | Flood hazard map for AOI |
| NWI wetlands / waters | Low countywide but important near Green River and playas | open | NWI map for AOI |
| HIFLD transmission | Proximity is known; exact tie point unknown | probable | Distance to HV lines/substations |
| Roads / rail | I-80 corridor is a major advantage | probable | Distance to I-80 / rail / local roads |
| Geotech / subsidence | Avoid mined panels and worst trona subsidence west of Green River | probable | Exclusion note for known high-risk zones |

## First-Pass Siting Rules

- Do not let transmission proximity pull the site into Great Divide Basin water risk.
- Do not let Green River water proximity pull the site into floodplain or riparian wetland risk.
- Do not assume BLM exchange is acceptable if private purchase can avoid it.
- Treat sage-grouse and RMP maps as early layout constraints, not late environmental appendices.

## Required AOI Map

The first real map should be one page, using the ranked parcel candidates from `aoi-candidates-2026-06-20.md`:

```text
GR-1 / GR-2 / RS-1 / POR-1 block outline
private/Sweetwater surface
BLM surface
Rock Springs RMP ACEC/ROW overlay
sage-grouse core/leks
Green River / JPWB distance
FEMA/NWI constraints
HV transmission / substations
I-80 / rail
```

## Open Items

- The BLM Rock Springs RMP source path is confirmed by BLM's 2024 release, which says the planning area includes about 3.6M acres of BLM-administered surface and 3.5M acres of mineral estate across portions of Sweetwater and neighboring counties. The release points to the National NEPA Register, but the ePlanning UI shell was not directly fetchable in this pass.
- WGFD sage-grouse map/source path exists in the cache, but no AOI clip has been run.
- FEMA/NWI can be run once a candidate AOI exists.
- IPaC should not be run county-wide; it needs an actual polygon.

## Overlay Pull Status

| Overlay | Source status | Current result |
|---|---|---|
| County parcels | Solved: official TerraGIS `ownership.zip` downloaded and inspected | Ranked candidates identified |
| BLM Rock Springs RMP | Official BLM release found; ePlanning register points to project docs but shell not fetchable here | Manual/browser or alternate BLM GIS data pull needed |
| Sage-grouse core areas | WGFD source path known from cache; web fetch blocked/unstable | Manual/browser GIS pull needed |
| FEMA/NWI | Stable national sources | Can run after AOI geometry is exported |
| HIFLD transmission | Stable national source; local transmission cache already identifies corridor | Clip after AOI geometry is exported |
