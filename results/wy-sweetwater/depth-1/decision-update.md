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
| Corridor distances | GR-2 intersects/touches I-80 and UP rail and is ~0.70 mi from a mapped 230 kV PacifiCorp line; GR-1 is ~2.40 mi from I-80, ~1.98 mi from UP rail, and ~1.90 mi from a mapped 230 kV PacifiCorp line | Both pass the corridor-access and transmission-proximity screen; GR-2 is infrastructure-stronger |
| Green River / local drainage | GR-1 intersects/touches Green River NHD linework; GR-2 is ~0.88 mi from Green River NHD linework; NHD maps flowlines inside both parcels | Both pass the water-conveyance distance screen; GR-1 is closest to water but needs tighter drainage/riparian layout diligence |
| GR-1 layout gate | GR-1 has ~7,610 non-core acres in aggregate, but the largest non-core geometry component is only ~640 acres; after crude 300 ft NHD-flowline buffering, aggregate non-core acreage remains ~5,851 acres but no single large component emerges | GR-1 supports a controlled-section package thesis, not yet a fee-contiguous 5,000-acre block |
| County posture | Favorable, but not binding | DA path should wait for real site package |

## What Is Still Missing

1. RMP ROW-exclusion / ROW-avoidance and sage-grouse lek-buffer clip for GR-1 and GR-2.
2. NWI clip for GR-1 and GR-2 from the official statewide download or a GIS workstation.
3. Section-level exhibit for GR-1 showing which non-core pieces and intervening easements/sections are required for a functional entry package.
4. Deed/SOS confirmation for GR-2 and GR-1 beneficial ownership and transaction authority.
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

Update: the table now exists at `corridor-aoi-overlay-table-2026-06-20.md`. It materially reduces generic BLM-surface concern, adds the official WGFD Core Area clip, and adds HIFLD/TIGER/rail/NHD corridor-distance checks. The follow-on GR-1 layout gate at `gr-1-layout-gate-2026-06-21.md` narrows the read: **GR-1 is still the physical lead, but only as a controlled-section package, not a single fee-contiguous 5,000-acre block**. **GR-2 remains the cleaner owner/infrastructure target** but is too core-constrained to carry the entry acreage by itself.
