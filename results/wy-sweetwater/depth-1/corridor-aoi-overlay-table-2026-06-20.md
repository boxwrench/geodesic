# Sweetwater Depth 1 Corridor AOI Overlay Table

Date: 2026-06-20  
Status: exact parcel-geometry stats plus public REST checks; BLM/ACEC, public WGFD sage-grouse polygon clips, HIFLD/TIGER/rail/NHD corridor distances, and NHD drainage proxy complete

## Decision Question

Can GR-2 or GR-1 support a serious landholder conversation now, or do they still need overlay work before outreach?

## Bottom Line

The ranking has split and is now more useful:

- **GR-2 remains the cleanest owner target** (`SWEETWATER SURFACE LLC`), clears the 5,000-acre entry threshold, has no FEMA NFHL feature returned on exact parcel-part checks, has only about **17.6 acres of BLM-intersection area**, and has no BLM ACEC intersection.
- **GR-1 is now the stronger physical-layout candidate** because the official WGFD Core Area clip puts only **~17.2%** of GR-1 inside the Blacks Fork Core Area, versus **~52.8%** of GR-2. GR-1 has roughly **7,611 non-core acres**, while GR-2 has roughly **2,895 non-core acres**.
- **Both blocks are real corridor blocks.** GR-2 touches I-80 / Union Pacific rail and sits about **0.7 mi** from a mapped 230 kV PacifiCorp line; GR-1 is about **2.4 mi** from I-80, **2.0 mi** from UP rail, and **1.9 mi** from a mapped 230 kV PacifiCorp line.
- **Water proximity cuts both ways.** GR-1 intersects or touches Green River NHD linework, which strengthens conveyance but raises site-layout/drainage diligence. GR-2 is about **0.9 mi** from Green River NHD linework, still favorable for corridor conveyance.

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
- HIFLD Electric Power Transmission Lines FeatureServer queried and distance-clipped locally against exact parcel polygons.
- ArcGIS USA Railroads and USA Freeway System FeatureServers queried and distance-clipped locally.
- USGS National Hydrography Dataset flowline/area/waterbody MapServer queried and distance-clipped locally as a Green River and local-drainage proxy.

Limits:

- No GDAL/GeoPandas desktop-style GIS stack is installed in this environment. The acreage clips here used temporary `/tmp` Python geometry packages (`shapely`, `pyproj`) plus direct shapefile parsing.
- The all-category BLM REST result is an **intersecting-category read**, not an acreage allocation. The BLM-only geometry layer was used for acreage because the all-category cached layer returns a server error when `returnGeometry=true`.
- RMP ROW exclusions/avoidance, lek buffers, and NWI are still not clipped. The public WGFD data page does not expose a lek point shapefile in the visible download list. The official FWS NWI web service returned application errors, and the official Wyoming downloads are large state packages, not a quick AOI service pull.
- HIFLD line `STATUS` is `NOT AVAILABLE` on the nearest PacifiCorp features, so the distance result is useful for corridor proximity but **not** for interconnection headroom or operating status.
- NHD drainage is a hydrography proxy, **not** a wetlands or jurisdictional-waters determination.

## Candidate Comparison

| Rank | Candidate | Owner | PIDN | Tax acres | Exact calculated acres | Exact parts | FEMA exact-part read | BLM-only acreage clip | ACEC clip | WGFD Core Area clip | Corridor distance / drainage read | Depth 1 read |
|---:|---|---|---|---:|---:|---:|---|---|---|---|---|---|
| 1A | **GR-1** | AGGIE GRAZING LLC | `1707-01-1-00-016-00` | 9,222.60 | 9,187.96 | 18 | **0 NFHL features** across exact parts | **30.4 ac BLM / 9,157.5 ac non-BLM remainder** | 1 ACEC envelope hit; **0 ac exact intersection** | **1,576.6 ac Blacks Fork Core / 17.2%** | 1.90 mi to 230 kV PacifiCorp; 2.40 mi to I-80; 1.98 mi to UP rail; Green River NHD linework intersects/touches parcel; 91 NHD flowline segments / 32.3 mi mapped inside parcel; 0.27 ac NHD area polygon | Best physical-layout candidate after sage clip; enough non-core acreage remains for an entry block. Green River proximity helps water but makes drainage/layout diligence more important. Owner/entity path is less direct than GR-2. |
| 1B | **GR-2** | SWEETWATER SURFACE LLC | `1808-09-3-00-018-00` | 6,183.25 | 6,126.88 | 14 | **0 NFHL features** across exact parts | **17.6 ac BLM / 6,109.3 ac non-BLM remainder** | **0 ac** | **3,232.4 ac Blacks Fork Core / 52.8%** | 0.70 mi to 230 kV PacifiCorp; I-80 and UP rail intersect/touch parcel; Green River NHD linework ~0.88 mi; 68 NHD flowline segments / 24.4 mi mapped inside parcel; 0 NHD area/waterbody polygons | Cleanest owner target and strongest infrastructure adjacency, but core-area coverage is high enough that it needs a layout/cap check before parcel-specific outreach. |
| 3 | RS-1 | AGGIE GRAZING LLC | `1805-01-1-00-010-00` | 9,145.35 | 9,119.71 | 18 | Envelope precheck only: 0 NFHL features | **11.8 ac BLM / 9,107.9 ac non-BLM remainder** | Envelope ACEC query: 0 features | **0 ac / 0%** | Not yet measured in this paired GR-1/GR-2 pass | Strong service/power/labor fallback; water conveyance remains the main question. |
| 4 | POR-1 | AGGIE GRAZING LLC | `2001-01-1-00-011-00` | 6,165.72 | 6,120.55 | 6 | Envelope precheck only: 0 NFHL features | **3.1 ac BLM / 6,117.4 ac non-BLM remainder** | Envelope ACEC query: 0 features | **0 ac / 0%** | Not yet measured in this paired GR-1/GR-2 pass | Transmission-corridor fallback; lower priority until water path is shown. |

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

Corridor distance / local-drainage result:

| Feature | Result |
|---|---:|
| Nearest HIFLD transmission | **0.70 mi** to 230 kV PacifiCorp line (`SOUTH TRONA` - `UNKNOWN202334`) |
| I-80 | **0.00 mi** (USA Freeway System line intersects/touches parcel) |
| Union Pacific rail | **0.00 mi** (USA Railroads line intersects/touches parcel) |
| Green River NHD flowline | **0.88 mi** |
| NHD local drainage proxy | **68 flowline segments / 24.4 mi** mapped inside parcel; 0 NHD area/waterbody polygons |

Interpretation: FEMA and generic BLM surface are not the current blockers for GR-2. GR-2 is excellent on infrastructure adjacency and owner clarity. The live issue is sage-grouse: more than half the block falls in Blacks Fork Core Area. GR-2 remains useful because the owner path is clean, but its non-core remainder is only about **2,894 acres**, below the 5,000-acre entry-block target unless Core Area disturbance limits can be designed around.

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

Corridor distance / local-drainage result:

| Feature | Result |
|---|---:|
| Nearest HIFLD transmission | **1.90 mi** to 230 kV PacifiCorp line (`FIREHOLE` - `UNKNOWN202321`) |
| I-80 | **2.40 mi** |
| Union Pacific rail | **1.98 mi** to UP Class 1 rail |
| Green River NHD flowline | **0.00 mi** (linework intersects/touches parcel) |
| NHD local drainage proxy | **91 flowline segments / 32.3 mi** mapped inside parcel; 1 NHD area polygon / **0.27 ac** |

Interpretation: GR-1's size is valuable, actual BLM acreage is minor, Core Area coverage is much lower than GR-2, and corridor distances remain well inside the placeholder spec thresholds. Its approximate non-core remainder is **7,611 acres**, enough to keep a 5,000-acre entry block plausible. The tradeoff is ownership clarity and hydrology/layout complexity: `AGGIE GRAZING LLC` is probable Sweetwater-platform, but less direct than `SWEETWATER SURFACE LLC`; Green River proximity helps conveyance but requires tighter drainage/riparian review.

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
| NWI / local drainage | NWI open; NHD proxy shows 68 flowline segments / 24.4 mi and no NHD polygons | NWI open; NHD proxy shows 91 flowline segments / 32.3 mi and 0.27 ac NHD polygon | NHD flags layout work for both, especially GR-1; NWI still needed |
| Water conveyance | Green River NHD ~0.88 mi | Green River NHD intersects/touches | Both pass corridor conveyance screen; GR-1 is closest |
| Transmission distance | 0.70 mi to mapped 230 kV PacifiCorp line | 1.90 mi to mapped 230 kV PacifiCorp line | Both pass proximity screen; GR-2 is closer |
| I-80 / rail | I-80 and UP rail intersect/touch | 2.40 mi to I-80; 1.98 mi to UP rail | Both pass corridor-access screen; GR-2 is strongest |

## Decision

**Proceed with GR-1 as the physical lead and GR-2 as the owner/infrastructure lead.** The generic BLM-surface question is materially reduced, the corridor-distance screen passes for both, and the core-area clip makes GR-1 the better physical-layout candidate. GR-2 is still too useful to drop because it is the cleanest named Sweetwater Surface parcel and has direct I-80/UP/near-230 kV adjacency.

The remaining pre-LOI artifact should be narrower than before:

```text
GR-1 and GR-2 exact parcel polygons
-> Rock Springs RMP ROW exclusion / ROW avoidance map package
-> WGFD or consultant lek-buffer check
-> NWI/local drainage clip from official state download or GIS workstation
-> layout sketch: 5,000-ac non-core entry block on GR-1 vs. core-disturbance-constrained entry on GR-2
```

**Do not spend on a land option yet.** Soft landholder appetite testing can begin only if framed generally through counsel: "Would Sweetwater/New URC consider non-core surface dispositions in the Green River / I-80 corridor?" A parcel-specific ask should wait until RMP/ROW and lek-buffer constraints are known.
