# Scorecard

One row per candidate county. This table is the project's real data model — any future pipeline exists only to fill its cells. Columns will be finalized after the pilot calibrates which signals discriminate ([ROADMAP](../ROADMAP.md)).

**Status legend:** 🟢 pass · 🟡 concern · 🔴 kill · ♻️ kill overridden (re-opened — see locale file) · ⬜ not yet assessed

A 🔴 is a *hypothesis*, not a verdict: any kill can be overridden by a human with a documented reason and new evidence ([kill-override rule](../framework/03-county-screen.md#kill-override--a-kill-is-a-hypothesis-not-a-verdict)). An overridden kill becomes ♻️ and the candidate re-opens at the stage it was killed.

**Audit standard:** every cell must trace to a sourced, audit-tagged finding in the locale file. Each underlying claim carries a citation-audit marker — ✅ verified against the official primary source · 🔍 draft from a secondary/finding-aid source · ❓ open question for counsel/research. See the [source-annotation rule](../ops/README.md#execution-modes).

| County | State | State screen | Funnel stage | Topology | Water/physical | Rezoning ease | Fragmentation | Opposition risk | Best path | Verdict |
|---|---|---|---|---|---|---|---|---|---|---|
| Sweetwater | WY | 🟡 [draft](wy-sweetwater/state-wy.md) | Stage 2 (🔍 draft) | 🟢 Boom (🔍) | 🟡 [site-dep](wy-sweetwater/county-sweetwater.md#verdict) | 🟢 ~86-96% (🔍) | 🟡 [Orion/checkerboard](wy-sweetwater/county-sweetwater.md#verdict) | 🟢 low-local / 🟡 federal (🔍) | county DA + vested plan | 🟡 plausible (federal-constrained) |
| Fall River | SD | 🟡 [draft](sd-fall-river/state-sd.md) | Stage 2 (🔍) | 🟡 Wild West (🔍) | 🟡 [Madison aq.](sd-fall-river/county-fall-river.md#verdict) | 🟡 no-zoning/88.5* (🔍) | 🟡 [grassland](sd-fall-river/county-fall-river.md#verdict) | 🔴 [scale](sd-fall-river/county-fall-river.md#verdict) + 🟡 mature tribal/enviro opp | ⬜ | 🔴-leaning (scale) |
| Jones | NC | 🟢 [draft](nc-jones/state-nc.md) (best law) | Stage 2 (🔍) | 🟡 Wild West (🔍) | 🔴 [§404/CCPCUA](nc-jones/county-jones.md#verdict) | 🟡 no-zoning/86* (🔍) | 🟡 [forest blocks](nc-jones/county-jones.md#verdict) | 🔴 [scale](nc-jones/county-jones.md#verdict) + 🟢 no ETJ | county+vested plan | 🔴-leaning (§404+scale) |

Detail lives per locale in [wy-sweetwater/](wy-sweetwater/), [sd-fall-river/](sd-fall-river/), [nc-jones/](nc-jones/) (state + county file each); blank [counties/](counties/) and [states/](states/) templates remain as references. A cell in this table must be traceable to a sourced finding in those files. Keep resources: [meeting-record sources registry](meeting-records.md) · [pilot-lessons ledger](../research/pilot-lessons.md) · [friendliness-marker loop](../research/friendliness-markers.md).

**Cell notes:**

- *Sweetwater WY — State screen 🟡:* provisional **pass** ([draft](wy-sweetwater/state-wy.md), 2026-06-13). No county referendum, no state mini-NEPA, no boundary commission — the California failure mode is structurally absent. Boundary/incorporation/annexation procedure now **✅ verified against official Title 15 text** (incl. corrected incorporation path: county commissioners + local vote, not district court; one-mile bar § 15-1-411). Remaining concern (not kill): the **breach-test remedy** — drafted hypothesis is that the *vested right* is durable but a DA's future-legislation promise is weak under the police-power doctrine; this and the controlling vesting case are preloaded questions for counsel.
- *Sweetwater WY — Water/physical 🟡 site-dependent:* Stage 1 water is a **sub-basin-specific** call ([detail](wy-sweetwater/county-sweetwater.md#verdict), [cache](../research/raw/2026-06-13-sweetwater-water-stage1.md)). 🔴 if candidate parcels sit in the **Great Divide closed basin**; 🟡 if in the **Green River Basin** (water exists but junior Colorado River Compact rights, curtailment-exposed). Override path: groundwater (unscreened) and parcel placement. Confirming which sub-basin the actual parcels fall in is the next single highest-value fact.
- *Sweetwater WY — Stage 1 complete (all signals run; pre-pilot records kills as data):* two would-kill threads — **water (sub-basin)** and **land assembly (UP checkerboard** — contiguous private ≥5,000 ac is hard; override via large-tract/ex-Occidental purchase) — both override-eligible. Two attractors: **transmission excellent** (Jim Bridger 230/500kV near Rock Springs), **no tribal/military kill**. Standing federal handle: **greater sage-grouse Core Areas** (siting + NEPA). Verdict: **🟡 plausible-but-constrained**; feasibility turns on basin-of-parcel + assembly. [Detail](wy-sweetwater/county-sweetwater.md#verdict) · [cache](../research/raw/2026-06-13-sweetwater-stage1-overlays-ownership.md).
- *Fall River SD — Stage 1, 🔴-leaning on scale:* dominant finding is the **scale-threshold** — county pop **~7,453**, so 50k build-out is ~7x the county (the "scale" 🔴 sits in the Opposition-risk column as a placeholder; it is a *magnitude* kill-review per [heuristic 3](../framework/01-heuristics.md), not opposition per se). Plus **Madison-aquifer** water durability (declining levels, prior-appropriation), **Buffalo Gap grassland** assembly friction (confirms [L8](../research/pilot-lessons.md)), and SD **referendum-reach** state risk ([state screen](sd-fall-river/state-sd.md)). Recorded as data (pilot rule), not eliminated. [Detail](sd-fall-river/county-fall-river.md#verdict) · [cache](../research/raw/2026-06-13-fall-river-stage1.md).
- *Jones NC — strongest law, wrong dirt:* state screen is the **best of the three** (🟢 — statutory early-vesting GS 160D-108.1, no referendum, SEPA defanged 2015). But Stage 1 is **🔴-leaning on the Southeast layer**: pervasive **wetlands/§404** (Croatan NF ~75% wetlands, Great Dover Swamp, pocosins) + **CCPCUA** water capping + **scale** (county ~9,172 → 50k ≈ 5.5x). Governance can't rescue failed dirt ([heuristic 1](../framework/01-heuristics.md)). Best path = county entitlement + vested plan (NOT incorporation — legislative act in NC). [Detail](nc-jones/county-jones.md#verdict) · [cache](../research/raw/2026-06-13-jones-stage1.md).

## Cross-pilot synthesis (all three Stage 1, 2026-06-13)

The pilot did its job — **the funnel discriminates, and each county fails (or survives) on a *different* layer**, validating the region-conditional kill-ordering ([heuristic 1](../framework/01-heuristics.md)):

| | WY / Sweetwater | SD / Fall River | NC / Jones |
|---|---|---|---|
| **State governance** | 🟡 strong (no referendum, no mini-NEPA, no boundary commission) | 🟡 **weaker** — county **referendum reach** (CA failure mode present) + SDEPA | 🟢 **best** — statutory vesting (160D-108.1), no referendum, SEPA defanged |
| **Kill-first layer** | Water (prior-approp.) — sub-basin split | Water + **scale** (7x county) | **Wetlands/§404** (Southeast) + scale |
| **Assembly** | UP railroad checkerboard | Buffalo Gap grassland interspersion | Forest blocks + wetland-avoidance |
| **Stage-1 verdict** | 🟡 plausible-but-constrained | 🔴-leaning (scale) | 🔴-leaning (§404 + scale) |

**Friendliness grades — all three graded (🔍 draft, 2026-06-13):** Sweetwater **84.5** (Boom County, active P&Z, ~96% effective approval) · Fall River **88.5*** (Wild West, **no zoning**) · Jones **86*** (Wild West→low Gatekeeper, **no zoning**, working plat/solar board). **The two highest grades are the two weaker counties** — both score high purely from *absence of a gate*, not friendliness. Confirmed across all three: **a friendliness grade is meaningless without topology** ([L15](../research/pilot-lessons.md)); only Sweetwater's 84.5 reflects a real, approving discretionary board. **And the absence-of-a-gate is itself a risk**: Fall River *passed* a county anti-uranium referendum (preempted) and hosts mature tribal/enviro litigation apparatus — a "no zoning" county can still adopt hostile measures and carries opposition the meeting-grade never sees. The grade discriminated, but inverted to naive ranking.

**What the principal should take from this:** of the original three, **Sweetwater WY is the standout survivor** — the only one not carrying a hard scale or §404 kill, with a clean governance profile; its open questions (basin-of-parcel, checkerboard assembly) are *solvable* rather than disqualifying. Fall River and Jones both trip the **scale-threshold** (both counties are tiny), which surfaced as the **cheapest, highest-power discriminator** ([lesson L9](../research/pilot-lessons.md)) — suggesting the search should re-weight toward *larger* host counties. And the framework's bet that the binding constraint is **region-specific** (Western water/assembly vs. Southeastern wetlands) held up cleanly. See the [pilot-lessons ledger](../research/pilot-lessons.md) for the calibration inputs this feeds into [Step 2](../ops/step-2-calibration.md).

## Buy-already-entitled track

Standing inventory of large vested/entitled parcels for sale ([framework/05, Path 0](../framework/05-entitlement-paths.md)):

| Asset | State | Entitlement status | Vesting survives sale? | Notes |
|---|---|---|---|---|
| *(none logged yet)* | | | | |
