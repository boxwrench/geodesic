# Sweetwater Depth 1 Overlay Precheck

Date: 2026-06-20  
Status: REST/envelope precheck against ranked AOI candidates  
Candidates: GR-1, GR-2, RS-1, POR-1 from `aoi-candidates-2026-06-20.md`

Update: this file is superseded for GR-1/GR-2 by `corridor-aoi-overlay-table-2026-06-20.md`, which adds exact parcel geometry, BLM-only acreage, ACEC, WGFD sage-grouse polygon clips, HIFLD transmission, I-80/rail, Green River, and NHD drainage-proxy checks. Keep this file as the earlier envelope-level record for RS-1/POR-1 and source-path context.

## Method

This pass used the official Sweetwater County parcel shapefile bboxes as query envelopes. It is a screen, not a final GIS clip. It can identify obvious flood/federal-surface interactions, but it does not calculate parcel-level overlap acreage.

Parcel source:

```text
https://maps.terragis.net/sweetwater/download/ownership.zip
```

Candidate bboxes are in:

```text
NAD_1983_StatePlane_Wyoming_West_Central_FIPS_4903_Feet
EPSG:3738
```

## Candidate Envelope Summary

| Candidate | Owner | PIDN | Acres | Envelope center from parcel bbox | First read |
|---|---|---|---:|---|---|
| GR-1 | AGGIE GRAZING LLC | 1707-01-1-00-016-00 | 9,222.60 | near TerraGIS Green River extent | Best Green River-side block, but likely river-adjacent; verify flood/wetland and buildable upland. |
| GR-2 | SWEETWATER SURFACE LLC | 1808-09-3-00-018-00 | 6,183.25 | west/northwest edge of Green River extent | Direct Sweetwater Surface block; likely a priority if overlays pass. |
| RS-1 | AGGIE GRAZING LLC | 1805-01-1-00-010-00 | 9,145.35 | near TerraGIS Rock Springs extent | Strong services/power/labor candidate; water conveyance more important than flood. |
| POR-1 | AGGIE GRAZING LLC | 2001-01-1-00-011-00 | 6,165.72 | near TerraGIS Point of Rocks extent | Transmission/industrial-corridor fallback; water path likely weaker than Green River blocks. |

## FEMA NFHL Query

Source:

```text
https://hazards.fema.gov/arcgis/rest/services/public/NFHL/MapServer/28/query
Layer 28: Flood Hazard Zones
```

Query settings:

```text
geometryType=esriGeometryEnvelope
inSR=3738
spatialRel=esriSpatialRelIntersects
outFields=FLD_ZONE,ZONE_SUBTY,SFHA_TF
returnGeometry=false
```

Result:

| Candidate | FEMA flood-hazard features returned | Depth 1 read |
|---|---:|---|
| GR-1 | 0 | No mapped NFHL flood-hazard zone intersected the parcel envelope in this REST query. |
| GR-2 | 0 | No mapped NFHL flood-hazard zone intersected the parcel envelope in this REST query. |
| RS-1 | 0 | No mapped NFHL flood-hazard zone intersected the parcel envelope in this REST query. |
| POR-1 | 0 | No mapped NFHL flood-hazard zone intersected the parcel envelope in this REST query. |

Interpretation: FEMA does not raise an immediate red flag for the four candidates. This does **not** replace site hydrology, local drainage, playa/ephemeral-channel review, or NWI.

## BLM Surface Management Agency Query

Source:

```text
https://gis.blm.gov/arcgis/rest/services/lands/BLM_Natl_SMA_Cached_without_PriUnk/MapServer/1/query
Layer 1: Surface Management Agency
```

Query settings:

```text
geometryType=esriGeometryEnvelope
inSR=3738
spatialRel=esriSpatialRelIntersects
outFields=ADMIN_DEPT_CODE,ADMIN_AGENCY_CODE,ADMIN_UNIT_NAME,ADMIN_UNIT_TYPE,ADMIN_ST
returnGeometry=false
returnDistinctValues=true
```

Result:

| Candidate | Agencies / surface categories returned within envelope | Depth 1 read |
|---|---|---|
| GR-1 | BLM, local government, private, undefined, USFS | Federal surface is present in the candidate envelope; the parcel is not cleanly private-only at envelope level. Needs exact polygon clip. |
| GR-2 | BLM, private | Cleaner than GR-1 at envelope level, but still has BLM checkerboard/federal-surface interaction. |
| RS-1 | BLM, local government, private, state, undefined | Mixed envelope; likely higher public-surface complexity. |
| POR-1 | BLM, private, state, undefined | Mixed envelope; not private-only. |

Interpretation: all four candidate envelopes touch BLM surface. This is expected in the checkerboard and does not kill them. It does mean the next map must calculate whether the buildable/private portion is sufficient without a federal exchange or federal ROW becoming critical.

## Rock Springs RMP Status

Source:

```text
https://www.blm.gov/press-release/blm-updates-management-plan-rock-springs-field-office
```

BLM states the Rock Springs planning area includes about 3.6M acres of BLM-administered surface and 3.5M acres of BLM-administered mineral estate in portions of Sweetwater and neighboring counties. The release points to the National NEPA Register for the approved plan, ROD, and relevant documents.

Result: source path confirmed; direct map-layer clipping not completed. The ePlanning UI shell did not expose documents cleanly to this environment.

Depth 1 read: RMP/ACEC/ROW overlay remains the most important unresolved map layer after parcel sourcing. The ranked parcels should not be advanced to a landholder conversation until the RMP and sage-grouse clips are done.

## NWI Wetlands Status

Source path:

```text
https://documentst.ecosphere.fws.gov/wetlands/data/State-Downloads/WY_geodatabase_wetlands.zip
```

The Wyoming NWI geodatabase download exists and returned HTTP 200, with content length about 1.12 GB and last-modified 2026-05-01. This environment lacks GDAL/GeoPandas/Shapely/PyProj, and the online NWI REST endpoints tested did not respond with queryable JSON here.

Result: source path confirmed; candidate wetland clip not completed.

Depth 1 read: NWI is still a manual GIS pull. For Sweetwater, this is lower priority than RMP/sage-grouse, but it must be run before any final parcel recommendation, especially for GR-1/GR-2 near the Green River corridor.

## Transmission Status

Superseded for GR-1/GR-2: a HIFLD transmission query is now complete in `corridor-aoi-overlay-table-2026-06-20.md`. GR-2 is about 0.70 mi from a mapped 230 kV PacifiCorp line; GR-1 is about 1.90 mi from a mapped 230 kV PacifiCorp line. Headroom remains study-gated.

Depth 1 read:

- GR-1 / GR-2: water-favorable and transmission-distance clip now complete; RMP/ROW, lek buffers, and NWI still need exact/manual GIS work.
- RS-1: likely stronger for services/power/labor; water conveyance needs exact clip.
- POR-1: likely stronger for transmission/industrial corridor; water path likely weaker.

## Updated Candidate Ranking After Precheck

| Rank | Candidate | Reason |
|---:|---|---|
| 1 | GR-2 | Direct Sweetwater Surface owner, above 5,000 acres, simpler BLM/private envelope than GR-1, Green River-side thesis. |
| 2 | GR-1 | Largest Green River-side block; still attractive, but mixed envelope includes more surface categories and likely more river-adjacent screening. |
| 3 | RS-1 | Strong acreage and services/power proximity; water/conveyance becomes the key question. |
| 4 | POR-1 | Keep as transmission-corridor fallback; lower priority until water path is shown. |

## Next GIS Tasks

1. Pull Rock Springs RMP land-tenure / ROW exclusion / ROW avoidance layers from BLM ePlanning or GIS.
2. Pull WGFD sage-grouse lek buffers and clip against GR-2 and GR-1.
3. Run NWI on exact polygons from the official statewide download or a GIS workstation.
4. Sketch a 5,000-acre non-core GR-1 entry block and compare it against a GR-2 core-disturbance-constrained entry layout.
