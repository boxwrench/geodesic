# Sweetwater Depth 1 Corridor AOI Overlay Table

Date: 2026-06-20  
Status: exact parcel-geometry stats plus public REST checks; BLM/ACEC and public WGFD sage-grouse clips complete

## Decision Question

Can GR-2 or GR-1 support a serious landholder conversation now, or do they still need overlay work before outreach?

## Bottom Line

The ranking has split:

- **GR-2 remains the cleanest owner target** (`SWEETWATER SURFACE LLC`), clears the 5,000-acre entry threshold, has no FEMA NFHL feature returned on exact parcel-part checks, has only about **17.6 acres of BLM-intersection area**, and has no BLM ACEC intersection.
- **GR-1 is now the stronger physical-layout candidate** because the official WGFD Core Area clip puts only **~17.2%** of GR-1 inside the Blacks Fork Core Area, versus **~52.8%** of GR-2. GR-1 has roughly **7,611 non-core acres**, while GR-2 has roughly **2,895 non-core acres**.

This does not kill GR-2, because Core Area is a design/disturbance constraint rather than a fee-title exclusion. But it does mean GR-2 should not be treated as the obvious site lead until a layout concept proves the non-core portion is enough or the core-area disturbance cap is workable. A generic soft appetite check through deal counsel is fine; a serious LOI or section-list ask should wait for the RMP/ROW and lek-buffer checks.

## Method

Inputs:

- Official Sweetwater County TerraGIS parcel ownership shapefile: `/tmp/sweetwater-ownership.zip`, previously sourced from `https://maps.terragis.net/sweetwater/download/ownership.zip`.
- Exact parcel records parsed from the DBF/SHP using `pidn`.
- BLM Surface Management Agency REST layer queried by exact parcel part, not only the parcel envelope.
- BLM-only geometry layer queried and intersected locally against exact parcel polygons to estimate BLM acreage.
- BLM National ACEC layer queried and intersected locally against exact parcel polygons.
- Official WGFD Sage-Grouse Data shapefiles downloaded and clipped locally against exact parcel polygons: Core Areas, Connectivity Areas, General Habitat, Winter Concentration Areas, and Transmission Corridors Through Core Areas.
- FEMA NFHL Flood Hazard Zones REST layer queried by exact parcel part.

Limits:

- No GDAL/GeoPandas desktop-style GIS stack is installed in this environment. The acreage clips here used temporary `/tmp` Python geometry packages (`shapely`, `pyproj`) plus direct shapefile parsing.
- The all-category BLM REST result is an **intersecting-category read**, not an acreage allocation. The BLM-only geometry layer was used for acreage because the all-category cached layer returns a server error when `returnGeometry=true`.
- RMP ROW exclusions/avoidance, lek buffers, NWI, HIFLD transmission distance, road/rail distance, and Green River/JPWB conveyance distance are still not clipped. The public WGFD data page did not expose a lek point shapefile in the visible download list.

## Candidate Comparison

| Rank | Candidate | Owner | PIDN | Tax acres | Exact calculated acres | Exact parts | FEMA exact-part read | BLM-only acreage clip | ACEC clip | WGFD Core Area clip | Depth 1 read |
|---:|---|---|---|---:|---:|---:|---|---|---|---|---|
| 1A | **GR-1** | AGGIE GRAZING LLC | `1707-01-1-00-016-00` | 9,222.60 | 9,187.96 | 18 | **0 NFHL features** across exact parts | **30.4 ac BLM / 9,157.5 ac non-BLM remainder** | 1 ACEC envelope hit; **0 ac exact intersection** | **1,576.6 ac Blacks Fork Core / 17.2%** | Best physical-layout candidate after sage clip; enough non-core acreage remains for an entry block. Owner/entity path is less direct than GR-2. |
| 1B | **GR-2** | SWEETWATER SURFACE LLC | `1808-09-3-00-018-00` | 6,183.25 | 6,126.88 | 14 | **0 NFHL features** across exact parts | **17.6 ac BLM / 6,109.3 ac non-BLM remainder** | **0 ac** | **3,232.4 ac Blacks Fork Core / 52.8%** | Cleanest owner target, but core-area coverage is high enough that it needs a layout/cap check before parcel-specific outreach. |
| 3 | RS-1 | AGGIE GRAZING LLC | `1805-01-1-00-010-00` | 9,145.35 | 9,119.71 | 18 | Envelope precheck only: 0 NFHL features | **11.8 ac BLM / 9,107.9 ac non-BLM remainder** | Envelope ACEC query: 0 features | **0 ac / 0%** | Strong service/power/labor fallback; water conveyance remains the main question. |
| 4 | POR-1 | AGGIE GRAZING LLC | `2001-01-1-00-011-00` | 6,165.72 | 6,120.55 | 6 | Envelope precheck only: 0 NFHL features | **3.1 ac BLM / 6,117.4 ac non-BLM remainder** | Envelope ACEC query: 0 features | **0 ac / 0%** | Transmission-corridor fallback; lower priority until water path is shown. |

## GR-2 Exact-Parcel Notes

GR-2 is a multi-part section block, not a single compact polygon. Its 14 parcel parts total about **6,126.88 calculated acres**, close to the county tax-roll acreage of **6,183.25 acres**.

Exact all-category BLM/SMA result:

| Returned category set | Parcel-part acres represented by parts with this intersecting-category set |
|---|---:|
| `DOI/BLM+PVT/PVT` | 6,126.9 |

BLM-only geometry acreage result:

| Category | Acres | Share |
|---|---:|---:|
| BLM-intersection area | 17.6 | 0.3% |
| Non-BLM remainder | 6,109.3 | 99.7% |

BLM ACEC result: **0 features / 0 acres**.

WGFD sage-grouse Core Area result:

| Core Area | Acres | Share |
|---|---:|---:|
| Blacks Fork | 3,232.4 | 52.8% |

Other public WGFD sage-grouse layers:

| Layer | Acres | Share |
|---|---:|---:|
| General Sage-Grouse Habitat 2015 | 6,126.9 | 100.0% |
| Connectivity Areas | 0.0 | 0.0% |
| Winter Concentration Areas | 0.0 | 0.0% |
| Transmission Corridors Through Core Areas | 0.0 | 0.0% |

Exact FEMA NFHL result: **0 flood-hazard features returned** across all 14 parts.

Interpretation: FEMA and generic BLM surface are not the current blockers for GR-2. The live issue is sage-grouse: more than half the block falls in Blacks Fork Core Area. GR-2 remains useful because the owner path is clean, but its non-core remainder is only about **2,894 acres**, below the 5,000-acre entry-block target unless Core Area disturbance limits can be designed around.

## GR-1 Exact-Parcel Notes

GR-1 is larger but more complicated. Its 18 parcel parts total about **9,187.96 calculated acres**, close to the county tax-roll acreage of **9,222.60 acres**.

Exact all-category BLM/SMA result:

| Returned category set | Parcel-part acres represented by parts with this intersecting-category set |
|---|---:|
| `DOI/BLM+PVT/PVT` | 6,526.3 |
| `DOI/BLM+PVT/PVT+USDA/USFS` | 1,276.8 |
| `DOI/BLM+LG/LG+PVT/PVT` | 856.5 |
| `DOI/BLM+LG/LG+PVT/PVT+UND/UND` | 528.3 |
| `LG/LG+PVT/PVT` | 1.1 |

BLM-only geometry acreage result:

| Category | Acres | Share |
|---|---:|---:|
| BLM-intersection area | 30.4 | 0.3% |
| Non-BLM remainder | 9,157.5 | 99.7% |

BLM ACEC result: one envelope feature (`Special Status Plant Species ACEC`) returned, but exact geometry intersection is **0 acres**.

WGFD sage-grouse Core Area result:

| Core Area | Acres | Share |
|---|---:|---:|
| Blacks Fork | 1,576.6 | 17.2% |

Other public WGFD sage-grouse layers:

| Layer | Acres | Share |
|---|---:|---:|
| General Sage-Grouse Habitat 2015 | 9,188.0 | 100.0% |
| Connectivity Areas | 0.0 | 0.0% |
| Winter Concentration Areas | 0.0 | 0.0% |
| Transmission Corridors Through Core Areas | 0.0 | 0.0% |

Exact FEMA NFHL result: **0 flood-hazard features returned** across all 18 parts.

Interpretation: GR-1's size is valuable, actual BLM acreage is minor, and Core Area coverage is much lower than GR-2. Its approximate non-core remainder is **7,611 acres**, enough to keep a 5,000-acre entry block plausible. The tradeoff is ownership clarity: `AGGIE GRAZING LLC` is probable Sweetwater-platform, but less direct than `SWEETWATER SURFACE LLC`.

## Outreach Gate

| Gate | GR-2 | GR-1 | Decision effect |
|---|---|---|---|
| Owner/entity clarity | Strongest current owner name: `SWEETWATER SURFACE LLC` | Probable Sweetwater-platform owner via `AGGIE GRAZING LLC`; less direct | Favors GR-2 |
| Entry acreage | Pass | Pass | Both stay live |
| FEMA NFHL | No exact-part features returned | No exact-part features returned | Not a current blocker |
| BLM/private surface clarity | Strong: only ~17.6 ac BLM-intersection area in BLM-only geometry layer | Strong on BLM acreage: only ~30.4 ac BLM-intersection area, but messier neighborhood categories | No longer the main blocker |
| RMP / ACEC / ROW constraints | Open | Open | Must clip before LOI |
| Sage-grouse core | **High constraint:** ~52.8% in Blacks Fork Core | **Lower constraint:** ~17.2% in Blacks Fork Core | Favors GR-1 physically |
| Other public WGFD sage-grouse layers | 100% general habitat; 0% connectivity, winter concentration, or core transmission corridor | 100% general habitat; 0% connectivity, winter concentration, or core transmission corridor | Not discriminating between GR-1/GR-2 |
| Sage-grouse leks/buffers | Open | Open | Must clip before LOI |
| NWI / local drainage | Open | Open | Needed before final parcel recommendation |
| Water conveyance | Likely favorable corridor thesis, not measured | Likely favorable corridor thesis, not measured | Measure after RMP/sage clip |
| Transmission distance | Open | Open | Secondary to water/federal overlays |

## Decision

**Proceed with GR-1/GR-2 paired RMP/lek work.** The generic BLM-surface question is materially reduced, and the core-area clip makes GR-1 the better physical-layout candidate. The next serious artifact should be:

```text
GR-1 and GR-2 exact parcel polygons
-> Rock Springs RMP ACEC / ROW exclusion / ROW avoidance
-> WGFD sage-grouse lek buffers
-> NWI/local drainage
-> Green River / JPWB distance
-> HIFLD transmission/substation distance
-> I-80 / rail distance
```

**Do not spend on a land option yet.** Soft landholder appetite testing can begin only if framed generally through counsel: "Would Sweetwater/New URC consider non-core surface dispositions in the Green River / I-80 corridor?" A parcel-specific ask should wait until RMP/ROW and lek-buffer constraints are known.
