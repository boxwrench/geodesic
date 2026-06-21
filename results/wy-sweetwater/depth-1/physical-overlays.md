# Sweetwater Depth 1 Physical Overlays

Date: 2026-06-20  
Status: overlay checklist; GR-1/GR-2 exact GIS pull partly complete

## Decision Question

Can a Green River / I-80 corridor parcel avoid the physical and federal/state overlays that would turn a friendly-county site into a slow federal-land project?

## Current Answer

Partly answered for the two lead polygons. GR-1 and GR-2 now have exact parcel geometry, FEMA, BLM-only acreage, national ACEC, public WGFD sage-grouse polygon, HIFLD transmission, road/rail, Green River, and NHD local-drainage proxy checks. The unresolved overlays are now narrower:

1. BLM Rock Springs RMP ROW exclusion / ROW avoidance;
2. sage-grouse lek buffers;
3. official NWI wetland clip;
4. parcel-level layout against the mapped drainage and non-core acreage;
5. geotech/subsidence and mineral-panel check if either parcel advances.

## Overlay Stack

| Layer | Why it matters | Current status | Depth 1 output |
|---|---|---|---|
| BLM surface | Federal surface can add exchange/ROW/NEPA path | solved for GR-1/GR-2 BLM-only acreage | Federal-vs-private section map reduced; RMP ROW still open |
| Rock Springs RMP ACEC / ROW exclusions | May cap utilities, roads, pipelines, or layout | national ACEC solved; RMP ROW source not exposed as clean BLM GIS layer | Candidate AOI clipped to RMP map package |
| Sage-grouse core / leks | Layout, disturbance caps, timing limits | core solved; leks open | Candidate AOI clipped to lek buffers |
| FEMA NFHL | Corridor flood risk and Green River adjacency | solved for GR-1/GR-2 exact parcel parts | 0 NFHL features returned |
| NWI wetlands / waters | Low countywide but important near Green River and playas | official source confirmed; practical clip still open | NWI map for AOI |
| HIFLD transmission | Proximity is known; exact tie point unknown | solved for GR-1/GR-2 proximity | Distance to nearest mapped 230 kV PacifiCorp line |
| Roads / rail | I-80 corridor is a major advantage | solved for GR-1/GR-2 | Distance to I-80 / UP rail |
| Green River / NHD drainage | Water conveyance plus local drainage constraints | solved as NHD proxy for GR-1/GR-2 | Green River distance + mapped NHD flowlines |
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

## Remaining Open Items

- The BLM Rock Springs RMP source path is confirmed by BLM's 2024 release, which says the planning area includes about 3.6M acres of BLM-administered surface and 3.5M acres of mineral estate across portions of Sweetwater and neighboring counties. The release points to the National NEPA Register, but the ePlanning UI shell was not directly fetchable in this pass.
- WGFD sage-grouse public polygon clips are complete, but the public page does not expose lek point/buffer shapefiles. A WGFD/consultant lek-buffer check is still needed.
- FEMA is complete for GR-1/GR-2 exact parcel parts. NWI remains open because the official FWS REST service returned application errors and the official Wyoming downloads are large statewide packages.
- IPaC should not be run county-wide; it needs an actual polygon.

## Overlay Pull Status

| Overlay | Source status | Current result |
|---|---|---|
| County parcels | Solved: official TerraGIS `ownership.zip` downloaded and inspected | Ranked candidates identified |
| GR-2 / GR-1 exact parcel-part precheck | Solved for geometry stats, FEMA exact-part query, BLM SMA intersecting-category query, BLM-only acreage, national ACEC, public WGFD sage-grouse polygons, HIFLD/TIGER/rail distances, Green River distance, and NHD local-drainage proxy | New table: `corridor-aoi-overlay-table-2026-06-20.md`; GR-2 is owner/infrastructure-cleaner, GR-1 is physically stronger after sage-core clipping, and generic BLM acreage is minor |
| BLM Rock Springs RMP | Official BLM release found; ePlanning register points to project docs but shell not fetchable here | Manual/browser or alternate BLM GIS data pull needed |
| Sage-grouse core areas | Solved for official WGFD Core Areas v4 shapefile | GR-2 ~52.8% Blacks Fork Core; GR-1 ~17.2%; RS-1/POR-1 0% |
| Other public WGFD sage-grouse layers | Solved for general habitat, connectivity, winter concentration, and transmission-corridor-through-core shapefiles | All four candidates 100% general habitat and 0% for the other three layers |
| Sage-grouse leks / buffers | Source still open; core-area clip does not include lek locations/buffers | Manual/browser GIS pull needed |
| FEMA | Solved at envelope level through NFHL REST layer 28 | Zero flood-hazard features returned for all four candidate envelopes |
| NWI | Wyoming geodatabase source exists but is 1.12 GB and needs GIS tooling | Manual/GIS workstation pull needed |
| HIFLD transmission | Stable national source queried for GR-1/GR-2 | GR-2 ~0.70 mi to mapped 230 kV PacifiCorp line; GR-1 ~1.90 mi |
| I-80 / UP rail | Public freeway and railroad FeatureServers queried for GR-1/GR-2 | GR-2 intersects/touches I-80 and UP rail; GR-1 ~2.40 mi to I-80 and ~1.98 mi to UP rail |
| Green River / NHD drainage | USGS NHD queried for GR-1/GR-2 | GR-1 intersects/touches Green River linework; GR-2 ~0.88 mi away; both have mapped NHD flowlines requiring layout review |
| GR-1 layout gate | Exact geometry plus WGFD Core Area and NHD flowline buffers | GR-1 has enough aggregate non-core acreage but no single 5,000-acre fee-contiguous non-core component |
