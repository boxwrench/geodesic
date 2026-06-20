# Sweetwater Depth 1 AOI Candidates

Date: 2026-06-20  
Status: derived from county parcel ownership shapefile; geometry not committed  
Source: official Sweetwater County MapServer / TerraGIS shapefile download, `ownership.zip`, files dated 2026-06-19.

## Source Pull

The official county site links `Online Map Server` to TerraGIS. The TerraGIS terms page exposes a public `Shapefile download` link for "parcel ownership shapefile for use in your own GIS."

Pulled to `/tmp` for inspection:

```text
https://maps.terragis.net/sweetwater/download/ownership.zip
```

Archive contents:

```text
ownership.dbf
ownership.prj
ownership.shp
ownership.shx
```

Projection:

```text
NAD_1983_StatePlane_Wyoming_West_Central_FIPS_4903_Feet
EPSG:3738 per TerraGIS config
```

No raw shapefile was committed. The tables below are derived from the DBF attributes and SHP record bounding boxes.

## Large Landholder Confirmation

The parcel shapefile confirms the earlier ownership thesis and makes it more specific. Large Sweetwater-related entities appear as separate parcel owners:

| Owner | Records | Tax-roll acres | Calculated acres | Read |
|---|---:|---:|---:|---|
| AGGIE GRAZING LLC | 73 | 347,740.51 | 346,341.64 | Major Sweetwater/Sweetwater-adjacent landholder; likely grazing surface entity from prior cache. |
| SWEETWATER SURFACE LLC | 22 | 101,657.29 | 101,232.34 | Direct surface entity; strongest named fit for New URC / Sweetwater thesis. |
| ANADARKO LAND CORP | 28 | 60,558.59 | 60,323.51 | Legacy land-grant entity; likely tied to prior Occidental/Sweetwater chain but needs LLC/deed confirmation. |
| WILDCAT COAL LLC | 13 | 57,011.82 | 56,884.01 | Coal/mineral-associated landholder; possible related entity, needs confirmation. |
| UINTA DEV | 23 | 122,680.08 | 122,324.90 | Large Lakewood CO landholder; possible land-grant/surface entity, relationship to Sweetwater/New URC not confirmed. |

The shapefile also shows **ROCK SPRINGS GRAZING ASSN** as the largest single acreage holder in the county pull, with about **553,703 tax-roll acres**. That entity is a potential alternate seller/search path, but it is not currently the main Sweetwater/New URC thesis.

## Corridor Candidate Blocks

These candidates are selected because their parcel bounding boxes intersect the TerraGIS map's Green River, Rock Springs, or Point of Rocks jump extents. They are not final AOIs; they are the first section-level shortlist for map clipping.

### Green River Extent

TerraGIS map extent used:

```text
Green River: [1752000, 348000, 1791000, 384000]
```

| Rank | Owner | Account | PIDN | Acres | Legal-description start | Read |
|---:|---|---|---|---:|---|---|
| 1 | AGGIE GRAZING LLC | R0110554 | 1707-01-1-00-016-00 | 9,222.60 | T17N R107W all odd sections, except sections 19/31/35; notes land north of river | Best Green River-side Sweetwater-related block found in first pass. Needs river/flood/NWI/sage-grouse clip. |
| 2 | SWEETWATER SURFACE LLC | R0155556 | 1808-09-3-00-018-00 | 6,183.25 | T18N R108W sections 9/11/13/17/19/21/23/27/29/31/33; parts south of railroad tracks | Strong direct-surface candidate near Green River extent. Needs exact relation to I-80, river, and RMP overlays. |
| 3 | AGGIE GRAZING LLC | R0155594 | 1807-17-1-00-031-00 | 3,119.04 | T18N R107W sections 17/19/29/31/33 | Too small alone but may combine with nearby holdings. |
| 4 | ANADARKO LAND CORP | R0112438 | 1807-21-2-00-003-00 | 519.49 | T18N R107W sections 21/23; south of UPRR line | Not enough acreage; useful only as infill/context. |

### Rock Springs Extent

TerraGIS map extent used:

```text
Rock Springs: [1814000, 382000, 1895000, 422000]
```

| Rank | Owner | Account | PIDN | Acres | Legal-description start | Read |
|---:|---|---|---|---:|---|---|
| 1 | AGGIE GRAZING LLC | R0111031 | 1805-01-1-00-010-00 | 9,145.35 | T18N R105W sections 1/7/9/11/13/15/17/19/21/23/25/27/29/31/33/35 | Strong Rock Springs-side Sweetwater-related block. Better labor/power proximity, but water conveyance and urban adjacency need checking. |
| 2 | AGGIE GRAZING LLC | R0116676 | 1905-05-3-00-038-00 | 3,245.26 | T19N R105W sections 5/7/17/19/29/31 | Potential expansion/infill near Rock Springs. |
| 3 | AGGIE GRAZING LLC | R0150322 | 1904-07-1-00-013-00 | 2,586.48 | T19N R104W sections 7/17/18/19/20 | Potential Rock Springs eastern/northern supplement. |
| 4 | AGGIE GRAZING LLC | R0150327 | 1905-03-3-00-038-00 | 2,160.77 | T19N R105W sections 3/11/13/24 | Potential supplement, but not standalone. |

The Rock Springs extent also intersects very large **ROCK SPRINGS GRAZING ASSN** holdings, including T18N R103W, T19N R106W, T19N R103W, T18N R104W, and T19N R104W blocks. These may be operationally attractive, but they are a different seller thesis.

### Point of Rocks Extent

TerraGIS map extent used:

```text
Point of Rocks: [1948000, 422000, 1974000, 436000]
```

| Rank | Owner | Account | PIDN | Acres | Legal-description start | Read |
|---:|---|---|---|---:|---|---|
| 1 | AGGIE GRAZING LLC | R0124294 | 2001-01-1-00-011-00 | 6,165.70 | T20N R101W sections 1/5/6/8/11/15/17/22/23/25/26/35 parts | Transmission/industrial corridor candidate, but likely worse water/conveyance than Green River/Rock Springs. |
| 2 | AGGIE GRAZING LLC | R0124269 | 2000-01-1-00-010-00 | 4,868.75 | T20N R100W sections 1/7/17/19/21/29/31/33 | Near threshold; could combine if adjacent. |
| 3 | ANADARKO LAND CORP | R0124289 | 2001-07-1-00-003-00 | 4,831.19 | T20N R101W sections 7/9/19/21/27/29/31/33 | Potential supplement or alternate related-entity block. |

Point of Rocks may be attractive for transmission, but it should not displace the Green River/Rock Springs search until water/conveyance is clipped.

## First Candidate Ranking

| Candidate | Why It Ranks Here | Main Next Check |
|---|---|---|
| **GR-1: AGGIE T17N R107W, 9,222 ac** | Best apparent Green River-side Sweetwater-related block above 5,000 acres. | Flood/NWI/Green River adjacency, BLM/sage-grouse, exact buildable upland. |
| **GR-2: SWEETWATER SURFACE T18N R108W, 6,183 ac** | Direct Sweetwater Surface owner and above entry acreage threshold. | Relationship to I-80/rail/river; whether enough contiguous buildable land remains after overlays. |
| **RS-1: AGGIE T18N R105W, 9,145 ac** | Strong acreage near Rock Springs services/power/labor. | Water conveyance and municipal/one-mile adjacency; RMP/sage-grouse overlays. |
| **POR-1: AGGIE T20N R101W, 6,166 ac** | Transmission/industrial-corridor candidate. | Water path may be weaker; keep as fallback after corridor water clip. |

## Implications

1. The repo should stop saying only that Sweetwater has a "possible" 5k-10k block. The county shapefile identifies multiple above-threshold Sweetwater-related blocks.
2. The best next artifact is no longer "find parcel data"; it is a map clip of the four ranked candidate blocks against water, BLM/RMP, sage-grouse, FEMA/NWI, and transmission.
3. Sweetwater Surface LLC and Aggie Grazing LLC should be treated as separate owner names in the parcel analysis, even if both are ultimately under the same broader Sweetwater/New URC land platform. The relationship still needs current entity confirmation.
