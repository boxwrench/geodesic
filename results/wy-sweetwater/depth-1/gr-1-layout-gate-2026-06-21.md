# Sweetwater GR-1 Layout Gate

Date: 2026-06-21  
Status: first-pass geometry gate; not a rendered site plan

Companion methods report with visuals: `gr-1-layout-method-report-2026-06-21.md`.

## Decision Question

Can GR-1 hold a plausible 5,000-acre non-core entry block, or did the prior "7,611 non-core acres" finding overstate practical layout quality?

## Bottom Line

**GR-1 passes aggregate non-core acreage but fails true fee-contiguous block shape.**

The prior read remains directionally right: GR-1 is physically stronger than GR-2 because only about **17.2%** of GR-1 is in Blacks Fork Core Area, leaving about **7,610 non-core owner-controlled acres**. But the exact geometry shows those acres are distributed across many section-sized pieces. The largest non-core piece is only about **640 acres**.

That means GR-1 is not a clean single-polygon 5,000-acre site. It is a **controlled section package** that can support a 5,000-acre entry thesis only if the project can tolerate checkerboard-style internal gaps, secure access/utility easements, or acquire/lease intervening interests. GR-1 still beats GR-2 for physical siting, but it does not yet clear a serious parcel-specific outreach gate.

## Method

Inputs:

- Sweetwater County TerraGIS parcel shapefile, exact GR-1 / GR-2 parcel geometry from `/tmp/sweetwater-ownership.zip`.
- WGFD Core Management Areas v4 shapefile from `/tmp/wgfd-2468.zip`, clipped to exact parcel geometry.
- USGS NHD flowline layer queried against each parcel and used only as a local-drainage proxy.

Tests:

1. Subtract Blacks Fork Core Area from the parcel.
2. Measure total non-core acreage.
3. Measure largest non-core contiguous geometry component.
4. Run crude NHD flowline-buffer sensitivities at 100 ft, 300 ft, and 500 ft.

Limitations:

- This is topology/acreage math, not a civil site plan.
- NHD flowline buffers are a crude drainage sensitivity, not NWI, USACE jurisdiction, or local hydrology.
- The test treats parcel pieces as topologically separate unless their geometries touch. It does not assume intervening ownership, roads, or federal sections can be acquired.
- RMP ROW exclusion/avoidance and lek buffers remain open.

## Layout Gate Results

| Gate | GR-1 | GR-2 | Decision effect |
|---|---:|---:|---|
| Exact parcel acres | 9,186.9 | 6,126.9 | GR-1 is larger |
| Core Area acres | 1,576.6 | 3,232.4 | GR-1 has far less core burden |
| Non-core acres | 7,610.3 | 2,894.5 | GR-1 passes aggregate 5,000-acre target; GR-2 does not |
| Non-core geometry components | 17 | 11 | Both are fragmented; GR-1 is a section package, not a single block |
| Largest non-core component | 640.1 ac | 643.0 ac | Neither has a single 5,000-acre fee-contiguous non-core polygon |
| NHD flowlines inside parcel | 32.3 mi | 24.4 mi | Both need drainage/layout review |
| Non-core acres after 100 ft flowline buffer | 7,019.2 total / 596.7 largest component | 2,585.5 total / 559.2 largest component | GR-1 still passes aggregate only |
| Non-core acres after 300 ft flowline buffer | 5,850.7 total / 518.3 largest component | 2,001.0 total / 425.0 largest component | GR-1 still passes aggregate only |
| Non-core acres after 500 ft flowline buffer | 4,715.7 total / 430.1 largest component | 1,458.1 total / 276.1 largest component | GR-1 becomes marginal even in aggregate under a very conservative drainage buffer |

## Interpretation

GR-1 remains the better physical lead because it has enough non-core acreage in aggregate and stays inside the corridor thresholds for water, road, rail, and transmission. But the useful claim is now narrower:

> GR-1 can support a **5,000-acre controlled-section entry package**, not yet a **5,000-acre fee-contiguous development block**.

GR-2 remains valuable as the cleaner owner/infrastructure comparison, but its non-core acreage is too small to carry the entry thesis without relying heavily on Core Area disturbance allowances. A rough cap check illustrates the problem: even if 5% of GR-2's core acreage were usable as disturbed surface, that adds only about **162 acres** to the roughly **2,895 non-core acres**, still far below a 5,000-acre entry target.

## Current Recommendation

**Keep GR-1 as the physical lead, but downgrade the outreach posture from parcel-specific ask to section-package diligence.**

Do not ask a landholder for "the GR-1 site" yet. The next serious ask should be framed as:

```text
Can Sweetwater / New URC assemble, sell, or option a non-core Green River corridor section package around GR-1, including enough intervening access and utility rights to make a 5,000-acre entry project function?
```

## Next Work

1. Create a section-level exhibit for GR-1 showing non-core pieces, core pieces, Green River/NHD flowlines, I-80, UP rail, and the nearest 230 kV line.
2. Identify which intervening sections or easements are required to turn the non-core pieces into a functional entry package.
3. Pull RMP ROW-exclusion / ROW-avoidance and lek-buffer checks before any parcel-specific LOI.
4. Run NWI from the official Wyoming state download or GIS workstation before final parcel recommendation.
