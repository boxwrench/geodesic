# Step 2 — Signal Calibration (pilot evidence)

**Date:** 2026-06-13 · **Mode:** B · **Status:** **APPLIED to framework/04 (v1.1) on 2026-06-13** — the re-scores below were approved and baked into [framework/04](../framework/04-signal-inventory.md) with a `Power (calibrated)` column + changelog. This note remains the rationale-of-record; every calibrated score traces to a row here.
**Inputs:** the three pilot Stage-1 + state screens ([Sweetwater WY](../results/wy-sweetwater/), [Fall River SD](../results/sd-fall-river/), [Jones NC](../results/nc-jones/)); the [pilot-lessons ledger](pilot-lessons.md); the [friendliness-marker loop](friendliness-markers.md). Method: [ops/step-2](../ops/step-2-calibration.md).

## Scope & honesty note (read first)

The pilot reached **Stage 1 (state screen + county Screen) only** — it did **not** run Stage 2 (Filter: planner calls, meeting-grading, topology) or Stage 3/4. Therefore:

- Signals **actually exercised** (state-law variables, water/basin, scale-threshold, ownership/assembly, federal/wetlands, transmission, overlays) can be calibrated against real evidence.
- Signals **not yet exercised** (meeting-grading/friendliness, rezoning approval rate, planner call, EDO read, litigation/referendum-history scrape) are marked **NOT YET TESTED** and keep their prior scores with a flag — *we do not invent calibration we didn't earn* ([source-annotation rule](../ops/README.md#execution-modes); honest-outcome clause in the game plan).

So this is a **partial calibration**: it firmly re-scores the cheap structural front of the funnel (which is where all three counties were actually decided) and leaves the qualitative Stage-2 signals for a second calibration pass after a county reaches Stage 2 (Sweetwater).

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

## Signals NOT YET TESTED (keep prior, flagged)

These are the Stage-2+ qualitative signals the pilot never reached. **No calibration claimed.** They get a second pass after Sweetwater Stage 2.

| Signal | Prior power | Status |
|---|---|---|
| Meeting-grading / friendliness (incl. learned markers) | Very high (framework/04) | **PARTIALLY TESTED (update 2026-06-13)** — graded Sweetwater (84.5, Boom) + Fall River (88.5, *no zoning* / Wild West) via agents. **Finding ([L15](pilot-lessons.md)): the grade discriminates but is meaningless without a topology gate** — Fall River scored *higher* purely from absence of a gate. **Recommend: meeting-grade is only comparable *within* a topology class; add a topology gate / grade-invalidating "no zoning" condition before this signal can rank.** Power confirmed high *only when paired with topology*. |
| Rezoning approval rate + decision time | Very high | **NOT YET TESTED** (Stage 2). |
| Largest project approved in 5 yrs | High | **NOT YET TESTED** (Stage 2). |
| Planner call / EDO read (Mode D) | Very high / High | **NOT YET TESTED** (Stage 2/Commit). |
| Litigation scrape; referendum/election history | Medium / High | **NOT YET TESTED** — but SD's referendum *reach* (variable 2) already proved this matters at state level. |
| **Meeting-record host tier** (new, [L2](pilot-lessons.md)) | — | **Candidate new signal** — observed once (Sweetwater Granicus vs. P&Z PDF); confirm across counties before scoring. |

## Proposed re-scores summary (for framework/04 — NOT yet applied)

1. **Add `scale-threshold ratio` as an explicit Tier-A signal, ranked at/near the top** (currently only implicit in heuristic 3). Cheapest + highest discrimination in the pilot.
2. **Add `meeting-record host tier`** as a Tier-A discovery-stage capacity signal (provisional; confirm).
3. **Refine `water` prior:** binds in the West *and* in capped/declining Southeast aquifers (CCPCUA, Madison) — drop the blanket "Southeast water rarely binding" framing to "rarely binding *except* designated capacity-use / declining aquifers."
4. **Demote `transmission proximity` High → Medium** (attractor, not discriminator in-pilot).
5. **Keep** referendum reach, fragmentation, wetlands/§404, vesting at high; **hold** mini-NEPA and overlays at medium-high/medium pending the private-suit and a real overlay test.
6. **No change** to untested Stage-2 signals.

## Scorecard schema decision

Current columns held up well. **Proposed change: add a `Scale` column** (it was the dominant discriminator and is currently jammed into "Opposition risk" as a placeholder on the Fall River/Jones rows). Otherwise freeze the existing schema: State screen · Funnel stage · Topology · Water/physical · Rezoning ease · Fragmentation · Opposition risk · Best path · Verdict. (Schema freeze deferred to when framework/04 re-scores are approved, so the column set and the power scores move together.)

## Step 3 automation re-rank (by cells-per-hour × calibrated power)

Evidence says automate the **cheap structural front** first — it's where decisions actually happened:

1. **Scale-threshold ratio** — one Census API call fills a high-power cell for every county. *Highest ROI; near-trivial to build.*
2. **Water/basin + capacity-use-area flags** — state water DB + CCPCUA/closed-basin layers; high power, moderate effort.
3. **Ownership/federal-interspersion** — BLM/USFS surface-management + checkerboard layers + parcel pull; high power (West), higher effort.
4. **Wetlands/§404 (NWI) + floodplain** — programmatic, high power in Southeast.
5. *(Deferred)* **Meeting-minutes/transcript pipeline** — still the highest-value *qualitative* target, but **unproven in this pilot** (Stage 2 not reached). Build only after Sweetwater Stage 2 confirms it discriminates — consistent with "earn automation."

**Honest-outcome check:** the pilot did *not* show the Mode-D qualitative signals dominating (they weren't reached). It showed the **cheap structural/statutory signals doing the discriminating**. So the correct near-term conclusion is: automate the structural front, and *defer* the meeting pipeline until Stage 2 proves its value — the engine grows to match evidence, not the plan.

## What feeds where

- Re-scores → [framework/04](../framework/04-signal-inventory.md) **on approval** (not yet applied).
- Schema → [results/scorecard.md](../results/scorecard.md) (add Scale column on approval).
- Build re-rank → [ops/step-3-automation.md](../ops/step-3-automation.md).
- Second calibration pass → after [Sweetwater Stage 2](../results/wy-sweetwater/county-sweetwater.md).
