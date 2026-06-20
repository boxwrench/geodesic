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
| BLM surface | BLM Surface Management Agency REST query shows all four envelopes intersect BLM surface | Federal-surface interaction is real; exact private/buildable acreage must be clipped before landholder outreach |
| Water | Corridor water path still looks real; firmness is the problem | Green River corridor remains preferred |
| Power | Official RMP thresholds keep 25 MW and >200 MW as key cliffs | Entry should be kept below 25 MW if possible |
| Federal overlays | RMP/sage-grouse remain layout constraints; no AOI clip yet | Need map before any LOI |
| County posture | Favorable, but not binding | DA path should wait for real site package |

## What Is Still Missing

1. Current owner/surface estate relationship among Sweetwater Surface, Aggie Grazing, Anadarko, Wildcat, Uinta Dev, and New URC.
2. Exact parcel-polygon clip for BLM surface acreage, not just envelope-level intersection.
3. Rock Springs RMP / sage-grouse clip for the ranked blocks.
4. NWI/water-conveyance/transmission clip for the ranked blocks.
5. SEO e-Permit pull for nearby senior rights and Dry Creek precedent details.
6. Fontenelle M&I storage availability and pricing.
7. PacifiCorp study scoping for entry load and build-out options.

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
