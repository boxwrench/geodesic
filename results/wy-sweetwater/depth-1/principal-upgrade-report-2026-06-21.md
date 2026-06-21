# Principal Upgrade Report: Sweetwater Depth 1 and the v1.3 Method

Date: 2026-06-21  
Scope: the two days after the principal feedback note, 2026-06-20 to 2026-06-21  
Purpose: show what changed in the repo, what changed in the Sweetwater result, and why the method now needs to measure topology, not just acreage

## Executive Summary

Your feedback changed the repo in a concrete way.

In the last two days, the screen was upgraded from a county-level search flow into a more explicit report-and-method system:

- county posture depth became a required pull;
- land assembly is now search-method driven, not an assumption;
- water analysis now separates new rights from acquirable or transferable rights;
- flood and wetlands moved earlier in the screen;
- provenance is now part of the output;
- the signal inventory was recalibrated again for Sweetwater Depth 1;
- the layout screen now tests overlay topology, not just total acreage.

That last change is the one that matters most. Sweetwater GR-1 did not fail because the acreage disappeared. It failed because the remaining acreage was fragmented into pieces too small to behave like a single 5,000-acre site.

The short conclusion is:

> Sweetwater still survives, but the right phrasing is now `enter small, optioned to scale` and `controlled-section package`, not `clean 5,000-acre block`.

## What Changed In The Repo

The last two days produced three levels of change:

1. **Method updates from the feedback note**
   - [research/2026-06-20-principal-feedback-roadmap.md](../../../research/2026-06-20-principal-feedback-roadmap.md)
   - [framework/03-county-screen.md](../../../framework/03-county-screen.md)
   - [framework/04-signal-inventory.md](../../../framework/04-signal-inventory.md)
   - [results/counties/_template.md](../../counties/_template.md)
   - [ops/step-3-automation.md](../../../ops/step-3-automation.md)

2. **Sweetwater Depth 1 results**
   - [results/wy-sweetwater/depth-1/corridor-aoi-overlay-table-2026-06-20.md](corridor-aoi-overlay-table-2026-06-20.md)
   - [results/wy-sweetwater/depth-1/gr-1-layout-gate-2026-06-21.md](gr-1-layout-gate-2026-06-21.md)
   - [results/wy-sweetwater/depth-1/gr-1-layout-method-report-2026-06-21.md](gr-1-layout-method-report-2026-06-21.md)

3. **Repo-level synthesis**
   - [README.md](../../../README.md)
   - [ROADMAP.md](../../../ROADMAP.md)
   - [results/scorecard.md](../../scorecard.md)

## The Method, In Plain Language

The feedback asked for reports that explain the method instead of only producing an answer. The updated Sweetwater workflow now works like this:

```mermaid
flowchart LR
    A[Ranked parcel candidates] --> B[Clip against physical and federal overlays]
    B --> C[Measure aggregate surviving acreage]
    C --> D[Split surviving land into contiguous components]
    D --> E[Measure the largest component and component count]
    E --> F[Stress-test with buffers and drainage proxies]
    F --> G[Translate into decision language]
```

That last line is the real methodological improvement.

The old question was:

> Does the candidate still have enough acreage?

The new question is:

> Does the candidate still have enough acreage in a shape that can function as a site?

That is why the report now distinguishes:

- fee-contiguous block;
- controlled-section package;
- aggregate-only false pass.

## Visuals

The report has three layers of visuals:

1. **Layout gate map**
   - [GR-1 / GR-2 layout gate map](gr-1-layout-gate-2026-06-21.md)
   - [Figure: GR-1 / GR-2 layout gate map](figures/gr-1-layout-gate-map.svg)

2. **Topology effect**
   - [Figure: largest component chart](figures/largest-component-chart.svg)

3. **Reusable method**
   - [Figure: overlay topology method](figures/overlay-topology-method.svg)

Those figures are not decorative. They show the exact point where the method changed:

- total remaining acreage still looked strong;
- the largest contiguous remaining block was much smaller;
- the project language had to move from acreage-based to topology-based.

## New Sweetwater Result

The changed conclusion is narrow but important.

### Before the topology gate

GR-1 looked like a strong pass because the first overlay pass left about **7,610 non-core acres**.

### After the topology gate

The same land split into **17 contiguous geometry components**, and the largest one was only about **640 acres**.

### Result

GR-1 is not a single 5,000-acre site. It is a **controlled-section package** that could support a 5,000-acre entry thesis only if intervening sections, access, utilities, and control rights can be made to function as one package.

That is a better result, not a worse one, because it avoids a false green light.

## Why This Matters For Other Projects

The topology lesson generalizes.

If a future project uses the same kind of overlay work, total acreage alone will overstate feasibility whenever constraints cut the parcel into fragments. That can happen with:

- wetlands and floodplains;
- conservation easements;
- habitat buffers;
- ROW exclusions;
- mineral severance;
- urban infill parcels;
- utility corridors;
- wildfire or slope buffers.

The transferable rule is:

> Measure total surviving acreage, then measure the largest surviving component, then decide whether the project can actually function.

That is now part of the framework, not just a Sweetwater one-off.

## Principal-Relevant Takeaway

The repo upgrades and the new Sweetwater result point to the same operational conclusion:

- the project should keep multiple live options, but
- it should not spend like a 5,000-acre block is already secured,
- and it should not force a parcel-specific landholder ask until the remaining manual clips are done.

The current report-safe wording is:

> Sweetwater is still the only genuine survivor in the pilot, but the likely entry form is a controlled-section package, not a clean fee-contiguous block.

## What Is Still Open

These are still real, but they are no longer category-changing:

- Rock Springs RMP ROW / ROW-avoidance clipping;
- sage-grouse lek buffers on the exact parcels;
- official NWI on the exact polygons;
- deed / SOS confirmation for `UINTA DEV` and any remaining parcel aliases that matter for a parcel-specific ask;
- water-rights and utility follow-up for a final entry package.

## Bottom Line

Over the last two days, your feedback was folded into the repo and the method got sharper.

The outcome is not just a better Sweetwater answer. It is a better screen:

- it catches a false acreage pass;
- it preserves a rescue path;
- and it makes the report honest about what the geometry can and cannot do.
