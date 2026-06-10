# Data Source Registry

Every external source the project relies on. **Reliability:** ✅ stable government/API · ⚠️ usable but verify or rate-limited · 🔍 existence/coverage unconfirmed — verify before depending on it. Mode refers to [execution modes](README.md#execution-modes).

URLs and coverage rot; when a source is used, confirm it and update this table. When a source is fetched, cache the extract in the repo.

## Geospatial / physical (Tier A signals)

| Source | What it provides | Access | Mode | Reliability |
|---|---|---|---|---|
| FEMA NFHL | Flood hazard layers | ArcGIS REST (`hazards.fema.gov`) + map viewer | A | ✅ |
| USFWS National Wetlands Inventory | Wetland extent | ArcGIS REST + downloads (`fws.gov/wetlands`) | A | ✅ |
| HIFLD Open | High-voltage transmission lines, substations, military bases | ArcGIS Open Data portal, GeoJSON/SHP | A | ✅ |
| USGS PAD-US | Protected/conserved areas | Downloads + REST | A | ✅ |
| NCED | Conservation easements | Download (`conservationeasement.us`) | A | ⚠️ coverage gaps by state |
| BIA / Census AIANNH | Tribal lands | ArcGIS REST / TIGER | A | ✅ |
| Census TIGERweb + ACS API | Boundaries, municipal proximity, population, growth | REST APIs (`api.census.gov`, free key) | A | ✅ |
| USDA SSURGO | Soils | Web Soil Survey + REST | A | ✅ |
| USFWS IPaC | Listed species + critical habitat report per AOI (federal-layer screen) | Web tool + API (`ipac.ecosphere.fws.gov`) | A | ✅ |
| County GIS servers | Parcels, zoning layers | ArcGIS REST where published (`/arcgis/rest/services` probe) | A | ⚠️ rural counties often lack one — absence is itself a capacity signal |
| Regrid | Nationwide normalized parcels + ownership | Paid API | A | ⚠️ cost; use county GIS first |

## Water (state-specific)

| Source | What it provides | Access | Mode | Reliability |
|---|---|---|---|---|
| WY State Engineer's Office e-Permit | Water rights, applications, basin mapping | Web search portal | A/C | ✅ portal; 🔍 bulk/API access |
| SD DANR Water Rights Program | Rights database, permit applications | Web database | A/C | ✅ portal; 🔍 bulk access |
| NC DEQ Division of Water Resources | Capacity Use Areas, withdrawal registration | Web | C | ✅ — note: check whether Jones Co. falls in the Central Coastal Plain Capacity Use Area (🔍 verify) |
| USGS NWIS | Streamflow, groundwater levels | REST API | A | ✅ |

## Law / statutes / politics (Step 0 inputs)

| Source | What it provides | Access | Mode | Reliability |
|---|---|---|---|---|
| State legislature sites (`wyoleg.gov`, `sdlegislature.gov`, `ncleg.gov`) | Authoritative statute text | Web | B/C | ✅ primary source — all citations verify here |
| Justia / Casetext / Google Scholar | Case law (vesting, referendum reach) | Web | B | ⚠️ secondary; verify holdings |
| Ballotpedia | State I&R provisions, local ballot measure history | Web | B | ⚠️ good index, verify against statute |
| State Secretary of State / county election sites | Referendum + election history, board margins | Web | B/C | ✅ |
| PACER + state court portals | Active development/water litigation | Web, fees | B/C | ✅ |

## County records / civic meetings (Tier B signals)

| Source | What it provides | Access | Mode | Reliability |
|---|---|---|---|---|
| Municode / American Legal / Code Publishing | County codes, PUD procedures | Web; some structured export | B/C | ✅ for hosted counties |
| Granicus / Legistar | Agendas, minutes, video for subscribed counties | Legistar has REST API (🔍 per-county) | A/B | ⚠️ rural counties often not subscribed |
| County YouTube channels | Meeting recordings + auto-transcripts | YouTube Data API, `yt-dlp` | A/B | ⚠️ varies by county |
| County clerk sites / records requests | Minutes PDFs where nothing else exists | Manual, FOIA/public-records | C | ✅ slow |
| Local newspapers / news archives | Development fights, opposition orgs | Web search | B | ⚠️ |

## Human sources (Mode D)

| Source | What it provides | Protocol |
|---|---|---|
| County planner | Capacity, largest-project precedent, process reality | Scripted 30-min call ([framework/03](../framework/03-county-screen.md)) |
| EDO director | Hunger vs. preservationism, incentives | Email template + call |
| Local land-use counsel | Verification of all Step 0 statutory hypotheses | Paid consult; converts state file to counsel-reviewed |
| Title company / county assessor | Ownership, liens, assembly reality | Late stage (Commit) |
