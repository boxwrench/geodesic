# Step 2 — Signal Calibration (pilot evidence)

**Date:** 2026-06-13; updated 2026-06-20 and 2026-06-21 · **Mode:** B · **Status:** **APPLIED to framework/04 (v1.1 on 2026-06-13; v1.2 on 2026-06-20; v1.3 on 2026-06-21)** — the re-scores below were baked into [framework/04](../framework/04-signal-inventory.md) with a calibrated power column + changelog. This note remains the rationale-of-record; every calibrated score traces to a row here.
**Inputs:** the three pilot state/county screens through Stage 3 Validate, Sweetwater Stage 4 Commit, and Sweetwater Depth-1 layout-gate work ([Sweetwater WY](../results/wy-sweetwater/), [Fall River SD](../results/sd-fall-river/), [Jones NC](../results/nc-jones/)); the [pilot-lessons ledger](pilot-lessons.md); the [friendliness-marker loop](friendliness-markers.md). Method: [ops/step-2](../ops/step-2-calibration.md).

## Scope & honesty note (read first)

The first calibration pass was written when the pilot had only reached **Stage 1 (state screen + county Screen)**. It correctly re-scored the cheap structural front and left Stage 2/3/4 signals flagged as untested.

The second pass updates that posture: all three counties now reached **Stage 3 Validate**, Sweetwater reached **Stage 4 Commit**, and meeting-record infrastructure was backfilled across the pilot. Stage 2 Mode-D calls are still untested, but Stage 2 topology/meeting records and Stage 3 physical/absorption signals are now calibrated from real pilot evidence.

The third pass is narrower: Sweetwater Depth 1 exercised the physical overlay workflow against exact parcel geometry and showed that aggregate surviving acreage can produce a false green light unless the remaining land is split into contiguous components. That adds one site/Validate signal, not a wholesale re-score.

Legal/factual claims remain 🔍 Mode-B drafts unless verified against primary sources; calibration here is about *signal power*, not final truth status.

## Calibration table — signals exercised in the pilot

*"Discriminated?" = did it change the ranking across the 3 counties or trigger a (would-)kill? This is the key column per the game plan.*

| Signal | Level | Prior power | Time/county | Discriminated? | Calibrated power | Rationale |
|---|---|---|---|---|---|---|
| **Scale-threshold ratio** (entry & build-out ÷ county pop) | County | *(not a named signal — lived in heuristic 3)* | ~2 min (1 Census lookup) | **YES, hardest** — the would-kill for Fall River (7x) and Jones (5.5x); separated Sweetwater (survivor) from the other two | **VERY HIGH / new Tier-A** | Cheapest signal in the whole funnel, highest discrimination. → [L9](pilot-lessons.md). **Recommend adding as an explicit Tier-A signal + computing it first.** |
| **Referendum reach** (state) | State | High (variable 2) | ~30-45 min | **YES** — the clean SD↔(WY,NC) split; defines the California failure mode | **VERY HIGH** (confirm) | Single most decisive *state* variable; SD's I&R reach vs. WY/NC absence flipped the durability verdict. Keep top-tier. |
| **Water doctrine + basin/aquifer status** | State/County | High (West) | ~30-50 min | **YES** — Sweetwater sub-basin split; Fall River Madison decline; NC CCPCUA cap | **VERY HIGH** | Discriminated in all three, including the Southeast (CCPCUA) where the prior expected water "rarely binding." → refine: water binds in the West *and* in capped/declining Southeast aquifers. → [L5](pilot-lessons.md). |
| **Wetlands / §404 exposure** | Site | High (Southeast) | ~20 min | **YES** — the Jones would-kill (Croatan ~75% wetlands) | **VERY HIGH (Southeast)** | Performed exactly as the region-conditional prior predicted ([L10](pilot-lessons.md)). Keep high for Southeast; low elsewhere. |
| **Landownership fragmentation / federal-interspersion** | Site | Very high | ~15-25 min | **YES (West), partial** — checkerboard (WY) + grassland (SD) both → assembly is the binding constraint; NC forest blocks contribute | **VERY HIGH (West); HIGH (general)** | Prior "very high" confirmed for the West; mechanism varies ([L8/L8b](pilot-lessons.md)). Keep very high for Western counties. |
| **Vesting timing** (state) | State | (variable 1) | ~30-60 min | **YES** — separated NC (statutory early-vesting) from WY/SD (common-law reliance) | **HIGH** | Real differentiator of *durability stage*; NC's 160D-108.1 is a genuine asset. Keep. |
| **Mini-NEPA presence/scope** (state) | State | (variable 3) | ~20-40 min | **PARTIAL** — present in SD (SDEPA) & NC (SEPA, defanged); absent WY. Discriminated, but none had CEQA-style private-suit teeth | **MEDIUM-HIGH** | Matters as part of the decisive conjunction, but on its own none of the three carried a private-enforcement veto. Power is conditional on the private-suit question. |
| **Transmission proximity** | Site | High | ~5-15 min | **NO (did not kill/rank)** — Sweetwater strong (Jim Bridger), others adequate; never the binding constraint in the pilot | **MEDIUM** (demote from High) | Cheap and worth keeping, but in the pilot it was an *attractor note*, not a discriminator. Demote until a county is actually transmission-starved. |
| **Tribal/military/protected overlays** | Site | High (binary kill) | ~10-15 min | **NO kill fired** — none of the three had an in-county overlay kill (proximity only) | **MEDIUM** (keep as cheap binary screen) | Retains value as a $0 binary kill check even though it didn't fire here; don't over-rank on null evidence. |
| **Boundary gatekeeper / ETJ** (state) | State/County | High (Southeast) | ~20-40 min | **PARTIAL** — NC ETJ (160D-202) + legislative-incorporation are real landmines; WY/SD boundary paths clean | **HIGH (Southeast/ETJ states); LOW elsewhere** | Region-conditional like water. Keep high where municipal ETJ exists (NC). |

## Second-pass calibration — Stage 2/3/4 signals now exercised

| Signal | Level | Prior power | Time/county | Discriminated? | Calibrated power | Rationale |
|---|---|---|---|---|---|---|
| **Topology classification** | County | New Stage-2 step | ~30-60 min | **YES** — explains why Fall River/Jones high friendliness grades were misleading and why Sweetwater's grade was stronger | **VERY HIGH gate signal** | The grade rides on topology. Wild West/no-zoning is not friendliness; it is zero path dependency and response risk. [L15](pilot-lessons.md) |
| **Meeting-record infrastructure** | County | New | ~15-45 min | **YES, as cost/confidence signal** — all three counties had different record infrastructure and none had clean transcripts | **MEDIUM-HIGH capacity and confidence signal** | Track format, access, coverage, and capacity nationally; it predicts grading cost and tone confidence, and routes browser/manual work. [L20](pilot-lessons.md) |
| **Meeting-grading / friendliness** | County | Very high | 2-6 h depending on record tier | **YES, but only inside topology and record-quality bounds** | **HIGH conditional** | High grade in Wild West counties inverted the naive ranking. Use only paired with topology and meeting-record confidence. [L15/L20](pilot-lessons.md) |
| **Firm-water-at-build-out trichotomy** | Validate/site | New Stage-3 refinement | 2-6 h | **YES, hardest Validate discriminator** — Sweetwater concern, Jones scale-dependent, Fall River hard kill | **VERY HIGH / terminal Validate signal** | Grade as: firm source exists; firm source exists at major cost; no firm source at scale. No firm source is a harder kill than politics. [L19](pilot-lessons.md) |
| **Absorption capacity** (labor/housing, firm power/water, scale-triggered thresholds) | Validate/regional | New | 2-6 h | **YES** — all three verdicts became scale/absorption-dependent | **VERY HIGH at Validate** | Entitlement-feasible is not buildable. Validate must test regional labor/housing and at-scale utility thresholds. [L16](pilot-lessons.md) |
| **Current-jurisdiction date-check** for federal/wetlands/legal kill layers | Validate/legal | New | 1-3 h | **YES** — Jones §404 kill partially rescued by _Sackett_ + NC SB 582 | **HIGH where legal regime recently changed** | Re-check current law before treating a framework prior as a kill. [L17](pilot-lessons.md) |
| **Overlay topology / contiguous-component test** | Site/Validate | New Depth-1 refinement | 1-3 h after geometry is available | **YES** — Sweetwater GR-1 passed on aggregate non-core acreage but failed as a fee-contiguous 5,000-acre block | **VERY HIGH at site/Validate** | Report aggregate surviving acreage, largest contiguous component, component count, and buffer sensitivity. Prevents aggregate-acreage false passes. [L21](pilot-lessons.md) |
| **Parallel Validate fan-out across all axes** | Method | New | Half-day orchestration | **YES** — Stage-1 fears did not predict the binding Stage-3 axis | **Method rule, not score** | Run water, power, land+absorption, and geotech in parallel; don't budget Validate by Stage-1 fear. [L18](pilot-lessons.md) |
| Planner call / EDO read (Mode D) | County | Very high / High | Not run | **NOT TESTED** | Keep prior, flagged | Still likely useful for finalists, but the pilot did not show it dominating the cheap structural or Validate signals. |

## Applied re-scores summary

1. **Add `scale-threshold ratio` as an explicit Tier-A signal, ranked at/near the top** (currently only implicit in heuristic 3). Cheapest + highest discrimination in the pilot.
2. **Add `meeting-record infrastructure`** as a Tier-A discovery-stage capacity/confidence signal; backfill all counties into the registry.
3. **Refine `water` prior:** binds in the West *and* in capped/declining Southeast aquifers (CCPCUA, Madison) — drop the blanket "Southeast water rarely binding" framing to "rarely binding *except* designated capacity-use / declining aquifers."
4. **Demote `transmission proximity` High → Medium** (attractor, not discriminator in-pilot).
5. **Promote `firm-water-at-build-out` and `absorption capacity` as explicit Validate-stage signals**; they now outrank generic transmission proximity and generic friendliness.
6. **Make wetlands/federal-handle power date-conditional.** NWI remains an early physical screen, but §404/legal significance must be current-jurisdiction checked at Validate.
7. **Add overlay topology / contiguous-component testing** wherever parcel or AOI geometry is available; report total surviving acres and largest component separately.
8. **Keep** referendum reach, fragmentation, vesting, topology, and veto-holder identification high.
9. **Keep Mode-D planner/EDO calls uncalibrated** until actually run.

## Scorecard schema decision

Current columns held up well except for scale. **Applied change: add a `Scale` column** so magnitude is not jammed into "Opposition risk." Frozen schema for markdown reporting: State screen · Funnel stage · Scale · Topology · Water/physical · Rezoning ease · Fragmentation · Opposition risk · Best path · Verdict.

## Step 3 automation re-rank (by cells-per-hour × calibrated power)

Evidence says automate the **cheap structural front** first — it's where decisions actually happened:

1. **Scale-threshold ratio** — one Census API call fills a high-power cell for every county. *Highest ROI; near-trivial to build.*
2. **Water/basin + new-vs-acquirable rights path + firm-source trichotomy** — state water DBs, capacity-use/closed-basin layers, and structured validation of source existence at build-out.
3. **Flood/wetlands/physical overlay topology screen** — FEMA NFHL + NWI + NHD/hydric soils where available; compute aggregate surviving acreage, largest contiguous component, component count, and buffer sensitivity.
4. **Ownership/federal-interspersion + large-tract inventory** — parcel/BLM/USFS plus a stated listing/broker/assessor search method before acreage claims; feed exact parcels into the topology screen before calling a site buildable.
5. **Power threshold/headroom flags** — proximity is medium; utility threshold cliffs and study requirements are higher-power at Validate.
6. **Browser-capable fetch step** — unlocks SEO e-Permit, county GIS, Granicus, Drive/Vimeo, IPaC AOI, and docket gaps.
7. *(Deferred)* **Meeting-minutes/transcript pipeline** — high qualitative value, but rank only after topology and meeting-record infrastructure are captured.

**Honest-outcome check:** the pilot did *not* show Mode-D qualitative signals dominating. It showed the **cheap structural/statutory front and the Stage-3 absorption/water reality doing the discriminating**. The engine should automate those first; meeting work remains valuable but conditional.

## What feeds where

- Re-scores → [framework/04](../framework/04-signal-inventory.md).
- Schema → [results/scorecard.md](../results/scorecard.md).
- Build re-rank → [ops/step-3-automation.md](../ops/step-3-automation.md).
- Remaining calibration gap → Mode-D planner/EDO calls after a real finalist call cycle.
