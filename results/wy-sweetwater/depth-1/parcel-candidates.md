# Sweetwater Depth 1 Parcel Candidates

Date: 2026-06-20  
Status: initial AOI specification; no parcel geometry retrieved yet

## Decision Question

Can we define a real, optionable 5,000-10,000 acre Green River / I-80 corridor block, preferably on Sweetwater Royalties / New URC fee surface, that avoids the worst BLM/RMP/sage-grouse constraints?

## Current Answer

Partially yes. The official county parcel shapefile identifies multiple above-threshold Sweetwater-related blocks in the Green River / Rock Springs / Point of Rocks search extents. The exact buildable AOI is still open because those blocks have not yet been clipped against BLM surface, sage-grouse core areas, Rock Springs RMP designations, FEMA/NWI, Green River conveyance distance, and transmission proximity.

Detailed candidate table: `aoi-candidates-2026-06-20.md`.

## Candidate-Area Bias

| Bias | Reason |
|---|---|
| Green River / Rock Springs / I-80 corridor first | Keeps surface water, JPWB/Green River conveyance, highways, labor, and transmission in frame. |
| Avoid Great Divide Basin interior unless forced | Pushes the project toward saline groundwater/desalination and away from clean surface-water conveyance. |
| Prefer private purchase from Sweetwater / New URC over BLM exchange | BLM exchange is plausible but slow, NEPA/RMP-exposed, and downstream of the private landholder anyway. |
| Avoid worst ACEC / sage-grouse core overlays | These are not a county kill, but they can cap layout and turn a good block into a constrained block. |

## Parcel Gate Table

| Gate | Pass Condition | Current Status | Next Pull |
|---|---|---|---|
| Seller | Single or controlled seller, ideally Sweetwater / New URC fee surface | probable but unproven | County parcel/deed pull or paid parcel data |
| Size | 5,000-10,000 acre entry block, optionable for expansion | initial pass found several above-threshold blocks | Section-level AOI map and overlay clip |
| Basin | Green River side / feasible conveyance to Green River or JPWB node | open | AOI against river/JPWB distance |
| Federal surface | Minimal BLM critical-path exposure | open | BLM surface + land-tenure map |
| RMP / ACEC | Outside worst ROW exclusion/avoidance or ACEC constraints | open | BLM Rock Springs RMP map clip |
| Sage-grouse | Outside core or layout can meet disturbance/lek constraints | open | WGFD core/lek clip |
| Water | Firming path via Fontenelle or senior right | probable, not AOI-specific | SEO e-Permit + Fontenelle inquiry |
| Power | Entry below 25 MW or studied 25-199 MW path | probable as strategy | PacifiCorp study only after AOI |

## Landholder Read

The strongest land path remains a negotiated surface purchase from Sweetwater Royalties / New URC. The 2026 transaction release says pro forma URC will control a major Wyoming fee-surface and mineral position, and the local Stage 3 cache identifies Sweetwater Royalties as the relevant large private landholder in the checkerboard. But the release frames the asset as a royalty/mineral optionality platform, not a surface-disposal program.

Practical implication: define the requested block before contacting the landholder. A vague county-wide approach is less useful than a section list that shows why this particular surface block is non-core to the mineral thesis and valuable to sell.

## Required Next Artifact

Create a map or table with candidate sections:

```text
section/township/range | owner | surface estate | mineral notes | BLM adjacency | RMP overlay | sage-grouse overlay | distance to Green River/JPWB | distance to HV transmission | notes
```

## Initial Candidate Shortlist

| Code | Owner | Account | PIDN | Acres | Why it matters |
|---|---|---|---|---:|---|
| GR-1 | AGGIE GRAZING LLC | R0110554 | 1707-01-1-00-016-00 | 9,222.60 | Best apparent Green River-side Sweetwater-related block above 5,000 acres. |
| GR-2 | SWEETWATER SURFACE LLC | R0155556 | 1808-09-3-00-018-00 | 6,183.25 | Direct Sweetwater Surface owner and above entry acreage threshold. |
| RS-1 | AGGIE GRAZING LLC | R0111031 | 1805-01-1-00-010-00 | 9,145.35 | Strong Rock Springs-side block near services/labor/power. |
| POR-1 | AGGIE GRAZING LLC | R0124294 | 2001-01-1-00-011-00 | 6,165.70 | Point of Rocks / transmission-corridor fallback; water path needs checking. |

## Current Blocker

Parcel ownership is no longer blocked. The new blocker is GIS overlay clipping:

- BLM surface and land-tenure map;
- Rock Springs RMP ACEC / ROW-exclusion / ROW-avoidance overlays;
- WGFD sage-grouse core areas and lek buffers;
- FEMA NFHL and USFWS NWI for the specific candidate blocks;
- transmission/substation distance and feasible water conveyance.
