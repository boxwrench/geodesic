# Sweetwater Depth 1 Decision Update

Date: 2026-06-20  
Status: initial update after first Depth 1 source pull

## Bottom Line

Sweetwater remains the only pilot county worth site-level search, but Depth 1 confirms the next object must be a parcel package, not another county report.

The best current thesis:

> Enter small on a Green River / I-80 corridor block, preferably from Sweetwater Royalties / New URC fee surface; keep BLM exchange off the critical path; firm water through Fontenelle or senior-right acquisition; keep entry load below 25 MW if possible; defer any 200 MW commitment until a PacifiCorp study exists.

## What Depth 1 Has Advanced

| Topic | Update | Decision effect |
|---|---|---|
| Landholder | URC / Sweetwater transaction confirms major fee-surface landholder and optionality thesis; county shapefile confirms Sweetwater Surface LLC, Aggie Grazing LLC, Anadarko Land Corp, Wildcat Coal LLC, and Uinta Dev as large parcel owners | Seller-first strategy remains correct, but owner-entity relationship needs confirmation |
| Parcel candidates | County shapefile identifies above-threshold candidate blocks near Green River, Rock Springs, and Point of Rocks | Move from "find parcels" to overlay-clipping ranked candidate blocks |
| FEMA flood | NFHL Flood Hazard Zones REST query returned zero features for all four candidate envelopes | No immediate FEMA red flag; still verify local drainage/NWI on exact polygons |
| Exact GR-2 / GR-1 parcel geometry | County shapefile exact parts parsed for the two lead Green River candidates; GR-2 has ~6,127 calculated acres across 14 parts, GR-1 has ~9,189 calculated acres across 18 parts | Confirms both are real above-threshold section-block candidates, not just envelope artifacts |
| Exact FEMA check | NFHL exact parcel-part query returned zero features for GR-2 and GR-1 | FEMA is not the current blocker; NWI/local drainage still open |
| BLM surface | BLM all-category queries show BLM/private intersections, but the geometry-capable BLM-only layer returns only ~17.6 BLM-intersection acres on GR-2 and ~30.4 acres on GR-1 | Generic BLM surface acreage is probably not the blocker; RMP/sage-grouse constraints now dominate the map risk |
| Entity confirmation | Sweetwater website, parcel-address matching, and Sweetwater's own entity map tie `AGGIE GRAZING LLC`, `SWEETWATER SURFACE LLC`, and likely `UINTA DEV`/`UDC` to the Sweetwater platform; `ANADARKO LAND CORP` and `WILDCAT COAL LLC` remain unconfirmed/separate | GR-2 and GR-1 are now the cleanest outreach candidates; do not group every large landholder into New URC without deed/SOS proof |
| Water | Corridor water path still looks real; firmness is the problem | Green River corridor remains preferred |
| Power | Official RMP thresholds keep 25 MW and >200 MW as key cliffs | Entry should be kept below 25 MW if possible |
| Federal overlays | RMP/sage-grouse remain layout constraints; no AOI clip yet | Need map before any LOI |
| Sage-grouse Core Area | Official WGFD core-area clip puts GR-2 ~52.8% in Blacks Fork Core and GR-1 ~17.2% in Blacks Fork Core; RS-1/POR-1 0% in the same clip | GR-1 now looks physically stronger than GR-2; GR-2 remains the cleaner owner target but is core-constrained |
| Other public WGFD sage-grouse layers | All four candidates are 100% general sage-grouse habitat and 0% connectivity / winter concentration / transmission-corridor-through-core | These layers do not discriminate; Core Area and lek buffers remain the useful sage-grouse screens |
| County posture | Favorable, but not binding | DA path should wait for real site package |

## What Is Still Missing

1. RMP ROW-exclusion / ROW-avoidance and sage-grouse lek-buffer clip for GR-1 and GR-2.
2. NWI/water-conveyance/transmission clip for GR-1 and GR-2.
3. Deed/SOS confirmation for GR-2 and GR-1 beneficial ownership and transaction authority.
4. SEO e-Permit pull for nearby senior rights and Dry Creek precedent details.
5. Fontenelle M&I storage availability and pricing.
6. PacifiCorp study scoping for entry load and build-out options.

## Go / No-Go Read

| Gate | Current Read |
|---|---|
| Continue Sweetwater Depth 1 | Go |
| Spend on land option now | Not yet |
| Contact landholder now | Only through soft appetite testing / deal counsel; better after candidate block is defined |
| Contact water sources now | Yes; Fontenelle/WWDC/JPWB conversations can start without final parcel |
| Commission PacifiCorp study now | Not until entry load and AOI are defined |

## Next Work Unit

Build the corridor AOI overlay map/table:

```text
GR-2 / GR-1 first -> exact parcel polygon -> BLM acreage -> RMP/sage-grouse -> Green River/JPWB distance -> NWI/local drainage -> transmission distance -> exclusion notes
```

That map is the prerequisite for a serious landholder conversation.

Update: the first table version now exists at `corridor-aoi-overlay-table-2026-06-20.md`. It materially reduces generic BLM-surface concern and adds the official WGFD Core Area clip. **GR-1 now looks better physically** because it has far less Core Area coverage, while **GR-2 remains the cleaner owner target**.
