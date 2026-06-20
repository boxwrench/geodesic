# Sweetwater Depth 1 Source Log

Date: 2026-06-20  
Scope: first Sweetwater Depth 1 pass after method-roadmap commit  
Status: initial source bundle; parcel geometry not yet pulled

## Evidence Table

| Claim | Source | Pull date | Evidence type | Confidence | What would change it |
|---|---|---:|---|---|---|
| Sweetwater / New URC is the relevant landholder for a corridor parcel search. | URC / Sweetwater transaction release; local `2026-06-13-stage3-land-labor.md` | 2026-06-20 | Public transaction release + cached land diligence | probable | County parcel/deed pull shows candidate surface controlled by another party. |
| Pro forma URC land base includes about 850,000 fee surface acres and 4.5M mineral acres in Wyoming. | https://www.prnewswire.com/news-releases/uranium-royalty-orion-and-ontario-teachers-pension-plan-to-create-a-leading-royalty-platform-through-combination-of-uranium-royalty-and-sweetwater-royalties-302744703.html | 2026-06-20 | Company release | confirmed | Closing terms change materially or the transaction fails. |
| Surface-sale path is plausible but not proven; transaction thesis is royalty/mineral optionality, not surface liquidation. | Same URC release; local land-labor cache | 2026-06-20 | Inference from transaction thesis and EBITDA language | probable | Direct seller contact confirms no surface sale interest, or identifies marketed surface blocks. |
| Green River corridor beats Great Divide Basin interior for water/conveyance. | Local Sweetwater water economics cache; Reclamation Fontenelle operations page | 2026-06-20 | Cached analysis + federal operations page | probable | Candidate parcel proves cheap firm water from another source or GDB desal economics are acceptable. |
| A new Green River industrial right at build-out scale has recent precedent via Dry Creek / Pacific Soda. | https://www.blm.gov/press-release/blm-approves-dry-creek-trona-mine-sweetwater-county-wyoming | 2026-06-20 | BLM approval release | confirmed for project approval; open for exact right details | SEO e-Permit shows materially different volume/conditions than cached Stage 3 read. |
| Build-out needs firming, not merely a new junior right. | Local water economics cache; Reclamation Fontenelle operations page; SEO e-Permit instructions | 2026-06-20 | Local synthesis + source path | probable | Fontenelle/storage unavailable and no senior right can be acquired; or compact-call risk changes materially. |
| Rocky Mountain Power has official Wyoming large-service thresholds at 25-199 MW and >200 MW. | https://www.rockymountainpower.net/working-with-us/large-service-requests.html | 2026-06-20 | Utility process page | confirmed | RMP/PSC publishes revised thresholds or large-load tariff after 2026-06-20. |
| >200 MW is the strategic power cliff; entry below 25 MW avoids the large-load process. | RMP large-service page; local transmission cache | 2026-06-20 | Utility process page + synthesis | confirmed for threshold; open for actual headroom | PacifiCorp study shows cheap capacity at larger load or new state large-load rules change requirements. |
| Sage-grouse / ACEC / RMP overlays are layout-shaping constraints, not county-political constraints. | Local federal-layer cache; BLM/WGFD source paths listed there | 2026-06-20 | Cached federal-layer pull | probable | Per-AOI GIS clip shows candidate block avoids core areas and RMP constraints, or falls inside a hard exclusion. |
| Official parcel ownership data is available through the county MapServer shapefile download. | Sweetwater County official site -> TerraGIS MapServer -> `https://maps.terragis.net/sweetwater/download/ownership.zip` | 2026-06-20 | County parcel ownership shapefile | confirmed | County removes or materially changes the download; title/deed search contradicts parcel owner names. |
| Multiple above-threshold Sweetwater-related blocks exist in the Green River / Rock Springs / Point of Rocks corridor search extents. | Derived from `ownership.zip` DBF/SHP; see `aoi-candidates-2026-06-20.md` | 2026-06-20 | County parcel shapefile analysis | probable | Geometry clip or title review shows blocks are not contiguous/buildable or not controlled by the expected entity. |
| BLM's approved Rock Springs RMP is the correct federal overlay source path for the candidate blocks. | https://www.blm.gov/press-release/blm-updates-management-plan-rock-springs-field-office | 2026-06-20 | BLM official release | confirmed as source path; overlay clip open | ePlanning/GIS layer pull shows candidate blocks are outside the most relevant RMP constraints. |
| FEMA NFHL Flood Hazard Zones returned zero intersecting features for all four candidate parcel envelopes. | https://hazards.fema.gov/arcgis/rest/services/public/NFHL/MapServer/28/query | 2026-06-20 | FEMA REST envelope query | probable | Exact polygon query or local drainage data shows mapped or unmapped flood hazard inside buildable areas. |
| BLM Surface Management Agency returned BLM/private and other surface categories inside all four candidate envelopes. | https://gis.blm.gov/arcgis/rest/services/lands/BLM_Natl_SMA_Cached_without_PriUnk/MapServer/1/query | 2026-06-20 | BLM REST envelope query | probable | Exact polygon clip shows buildable parcel portions avoid BLM surface and federal ROW entirely. |
| Wyoming NWI state geodatabase download exists but is too large/unusable in this shell without GIS tooling. | https://documentst.ecosphere.fws.gov/wetlands/data/State-Downloads/WY_geodatabase_wetlands.zip | 2026-06-20 | USFWS download source path | confirmed as source path; overlay open | GIS workstation clips NWI to candidate polygons. |
| Exact candidate AOI map is still missing. | Current repo state after parcel-source pull | 2026-06-20 | Gap finding | open | BLM/RMP/sage-grouse/FEMA/NWI/transmission overlays are clipped against the ranked parcel blocks. |

## Stable Source Paths

- URC / Sweetwater transaction release: https://www.prnewswire.com/news-releases/uranium-royalty-orion-and-ontario-teachers-pension-plan-to-create-a-leading-royalty-platform-through-combination-of-uranium-royalty-and-sweetwater-royalties-302744703.html
- Rocky Mountain Power large service requests: https://www.rockymountainpower.net/working-with-us/large-service-requests.html
- BLM Dry Creek Trona approval: https://www.blm.gov/press-release/blm-approves-dry-creek-trona-mine-sweetwater-county-wyoming
- Reclamation Fontenelle operations: https://usbr.gov/uc/water/crsp/cs/ftd.html
- Wyoming SEO e-Permit instructions: https://seo.wyo.gov/home/e-permit-and-instructions
- Sweetwater County official site, Online Map Server link: https://www.sweetwatercountywy.gov/
- Sweetwater County TerraGIS MapServer: https://maps.terragis.net/sweetwater/
- Sweetwater County parcel ownership shapefile: https://maps.terragis.net/sweetwater/download/ownership.zip
- BLM Rock Springs RMP release: https://www.blm.gov/press-release/blm-updates-management-plan-rock-springs-field-office
- BLM Rock Springs ePlanning project path from cache: https://eplanning.blm.gov/eplanning-ui/project/13853/510
- FEMA NFHL Flood Hazard Zones REST layer: https://hazards.fema.gov/arcgis/rest/services/public/NFHL/MapServer/28
- BLM Surface Management Agency REST layer: https://gis.blm.gov/arcgis/rest/services/lands/BLM_Natl_SMA_Cached_without_PriUnk/MapServer/1
- USFWS Wyoming NWI geodatabase download: https://documentst.ecosphere.fws.gov/wetlands/data/State-Downloads/WY_geodatabase_wetlands.zip
- Local federal cache: `research/raw/sweetwater/2026-06-13-federal-layer-pull.md`
- Local water cache: `research/raw/sweetwater/2026-06-13-stage3-water-economics.md`
- Local transmission cache: `research/raw/sweetwater/2026-06-13-stage3-transmission.md`
- Local land/labor cache: `research/raw/sweetwater/2026-06-13-stage3-land-labor.md`

## Blocked / Manual Source Paths

- County parcel geometry and current owner join. Public search did not locate a clean parcel endpoint in this pass.
- Sweetwater Royalties / New URC current surface-sale decision maker.
- SEO e-Permit specific senior-right search for the candidate sub-basin.
- WGFD sage-grouse core area shapefile clipped to candidate AOI.
- BLM Rock Springs RMP land-tenure / ROW-exclusion maps clipped to candidate AOI.
- PacifiCorp OASIS / system headroom. Public source path gives process, not capacity.
