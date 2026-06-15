# County Screen: Fall River County, South Dakota

**Date:** | **Researcher:** | **Funnel stage reached:** Screen / Filter / Validate / Commit / KILLED
**Method:** [framework/03 — County Screen](../../framework/03-county-screen.md). Prerequisite: state screen exists in [results/states/](../states/).
**Time spent per signal is logged** — it calibrates the [signal inventory](../../framework/04-signal-inventory.md).
**Audit standard (required):** every finding cites a specific official primary source and is tagged ✅ verified · 🔍 secondary-draft · ❓ open. See the [source-annotation rule](../../ops/README.md#execution-modes).

## Verdict

**Stage 1 (2026-06-13, draft; pre-pilot = all signals run, kills recorded as data):** Fall River is **🟡→🔴-leaning, dominated by a single would-kill: scale.** The county's total population is **~7,453** (Hot Springs ~3,395) — a 50k-person full build-out is **~7x the entire county**, blowing through the [scale-threshold heuristic](../../framework/01-heuristics.md) (flag if entry pop ÷ county pop > 0.5; kill-review if > 1.0). Even the *entry* phase (2-5k) approaches the whole county. This is the headline finding the principal needs. Layered on top: **land assembly is hard** (the **Buffalo Gap National Grassland**, ~117k ac of USFS land in-county, is "intermingled with private/state/tribal lands… not a contiguous block" — the same Western federal-interspersion assembly problem as Sweetwater, different mechanism → confirms [lesson L8](../../research/pilot-lessons.md)); **water durability is a real concern** (Hot Springs depends on the **Madison aquifer**, a confined Black Hills aquifer with *declining levels*, under prior-appropriation); and the **Pine Ridge reservation** abuts the area (proximate tribal/NEPA sensitivity, not an in-county overlay kill). **Net for the principal:** Fall River is the weakest of the three pilot candidates so far — water-state durability risk (SD referendum reach, [state screen](state-sd.md)) *plus* a hard scale-threshold *plus* assembly friction. Recorded, not eliminated (pilot rule); the comparative data is the value. **Best use:** Fall River is the calibration *contrast* — it shows the scale-threshold and assembly signals discriminating hard, which is exactly what Step 2 needs.

## Stage 1 — Screen (2h budget; actual: ~1h)

| Signal | Finding | Source | Time | Kill? |
|---|---|---|---|---|
| Water basin status (West) / wetlands+floodplain proxy (Southeast) | **Prior appropriation (SD).** Hot Springs / area relies on the **Madison aquifer** (confined Black Hills karst aquifer) — **declining water levels flagged** as a regional issue. Surface: Cheyenne River drainage. A large new municipal demand on a declining confined aquifer is a real durability concern. | ✅ Madison aquifer reliance + decline (USGS, Wikipedia); 🔍 DANR appropriation status per source | ~15m | 🟡 (durability concern; 🔍 confirm aquifer appropriation headroom) |
| Tribal/military/protected overlays | **Pine Ridge (Oglala Lakota) reservation bounds the area to the south**; Buffalo Gap grassland includes tribal inholdings; regional Tribal Energy Access Corridor. **Not an in-county reservation overlay** on likely sites, but a proximate NEPA/§106 + political sensitivity. | ✅ Pine Ridge proximity (USFS, Wikipedia); 🔍 exact reservation boundary vs. AOI | ~10m | 🟡 (proximity sensitivity; not a clean county overlay kill) |
| Landownership fragmentation at candidate sites | **Buffalo Gap National Grassland — ~117,548 ac USFS in-county, "intermingled with private, state, and tribal lands… a discontinuous boundary rather than a contiguous block."** Same Western assembly problem as Sweetwater (federal interspersion), different mechanism (grassland vs. RR checkerboard). SD ~80% private statewide but Fall River is federal-heavy. | ✅ grassland interspersion (USFS, Wikipedia, Grokipedia); 🔍 parcel-level contiguity test | ~15m | 🟡→🔴-**eligible** (assembly friction; override via large private tract / grassland-edge siting) — **data, not a stop**; confirms [L8](../../research/pilot-lessons.md) |
| Transmission proximity (vs. [spec threshold](../../framework/06-project-spec.md)) | ⬜ partial — SD transmission grid is sparser in the SW; regional corridors exist (WAPA Cheyenne) but no major substation identified adjacent to Hot Springs like Sweetwater's Jim Bridger. Likely a *cost* item, not a kill. | 🔍 HIFLD distance-to-line pending | ~5m | ⬜ (lean concern) |
| Federal exposure: IPaC species/habitat report; NWI density as §404 proxy ([framework/07](../../framework/07-federal-layer.md)) | ⬜ — USFS grassland presence means a **federal land handle is likely on the critical path** (grassland exchange/permit → NEPA), a worse federal posture than Sweetwater's BLM checkerboard. Black Hills species (e.g., bats/raptors) possible. | 🔍 IPaC AOI + grassland-status pending | ~5m | 🟡 (federal handle likely; framework/07) |
| Municipal proximity / ETJ exposure | Hot Springs (~3,395) + Edgemont are the municipalities; tiny. Bears on SDCL 9-3 incorporation distance-minimum and any plat ETJ (see [state screen](state-sd.md)). | ✅ municipalities/pop (Census); 🔍 ETJ distance | ~5m | 🟢 (small; manageable) |

**Scale-threshold check (the decisive Fall River finding):** county pop **~7,453**; project entry 2-5k → **ratio ~0.3-0.7 (flag→kill-review band)**; full build-out 50k → **ratio ~6.7 (far past the >1.0 kill-review line)**. Per [heuristic 3](../../framework/01-heuristics.md) this magnitude "summons veto mechanisms" — and in a **referendum state** (SD) that is doubly dangerous. **This is the dominant Stage-1 signal for Fall River.** Source: 2020 Census / county profile ✅.

## Stage 2 — Filter (1d budget; actual: ~agent)

> **🔍 Stage 2 Mode-B DRAFT (agent-gathered 2026-06-13; [cache](../../research/raw/fall-river/meetings/)).** Run as the **comparator** for Sweetwater's 84.5. **Headline:** 🔍 **Fall River has NO planning & zoning department and NO county zoning ordinance** — P&Z page states verbatim *"Outside of Edgemont and Hot Springs there is no planning and zoning."* So the graded body is the **Board of County Commissioners** (only land-use-touching body), and its land-use docket is **ministerial only** (plats, approach/ROW permits, floodplain permits, road districts — no rezone/CUP/PUD/variable exists).

**Topology classification (🔍 draft): WILD WEST** (low friction / low capacity) — *no zoning today, zero path dependency.* Per [framework/03](../../framework/03-county-screen.md) this is the dangerous-not-easy quadrant: they can **adopt hostile zoning in response to you**, and there's no PUD/special-use framework to build on. Contrast Sweetwater = **Boom County** (active board, real precedents).
- Planning staff: **none** (no P&Z dept). Land use is the cities' (Hot Springs/Edgemont) + state's (DANR septic, FEMA floodplain) job.
- Largest project on agendas (24 mo): thin — a 39-lot road district; one operating solar farm (venue unconfirmed). 🔍
- CUP/PUD procedure length: **N/A — none exists.**

**Rezoning-ease metrics (🔍 draft, BCC; ~18 ministerial land-use actions):**

| Metric | Value | Source |
|---|---|---|
| Rezoning approval rate (24 mo) | **100% (18/18), 0 denied, 0 contested** — but ministerial, *nothing to deny* (no zoning) | 🔍 [cache](../../research/raw/fall-river/meetings/) |
| Median application-to-decision time | fast (plats by-right; only condition = "taxes current") | 🔍 cache |
| Largest project approved in 5 yrs | 39-lot road district; 1 solar farm | 🔍 cache |
| PUD framework exists / length | **None — no county zoning at all** | 🔍 P&Z page |
| Comp plan recency + growth posture | 🔍 no county zoning code; confirm no dormant comp plan | 🔍 cache |

**Provisional Development Friendliness Grade (🔍 draft) = 88.5 / 100** — *report with components* ([protocol Stage 5](../../ops/protocol-meeting-grading.md)): approval 98×.35 + contention(inv) 95×.25 + agenda-mix 85×.15 + throughput 90×.10 + tone 80×.10 + scale-proximity 50×.05. **CRITICAL CAVEAT — this number is misleading taken alone:** the 88.5 reflects the *absence of a gate*, not active friendliness. It scores high on approval/contention/throughput because **there is no discretionary land-use process to generate denials or fights.** The meeting record carries *little signal* about how a large/novel project would actually fare — those route to the cities, DANR, or PUC siting. Read as **"low-capacity, low-friction, low-information / Wild West,"** not "friendlier than Sweetwater."

**Qualitative (translated per framework/03):**
- Planner call notes: ⬜ Mode-D (no planner exists to call; would call the commission clerk / cities).
- EDO contact notes: ⬜ Mode-D.
- Minutes/transcript review (what dominates the agenda?): 🔍 infrastructure/budget/personnel dominate; land-use items rare + ministerial; pro-property-rights/anti-federal-mandate board resolutions (a permissiveness tell). Markers logged to [friendliness-markers.md](../../research/friendliness-markers.md).

**Stealth diligence (🔍 agent-gathered 2026-06-13; [cache](../../research/raw/fall-river/2026-06-13-stealth-diligence-pull.md)):**
- Water protest log: 🔍 prior-appropriation (DANR); the live water/land fights are uranium-driven (below).
- Litigation scrape: 🔍 **HIGH / active — Fall River is the epicenter of SW SD's ~20-yr uranium fight.** Two live fronts: **Dewey-Burdock ISR** (enCore, FAST-41 fast-tracked Aug 2025, construction ~2027) dogged by NEPA/EPA appeals (Oglala Sioux won a Sept 2024 EPA EAB remand); and **Chord/Craven Canyon exploration** — a federal due-process/Lakota-language lawsuit filed **May 2026** (Lone Eagle et al.), state permit hearing **currently PAUSED**. Pattern: opposition *delays via federal process + treaty/cultural claims*, doesn't outright defeat.
- Tax-base concentration: 🔍 **fragile, anchor-dependent, AMBIVALENT (split salvation/threat).** Small/declining/old/poor (~7,400 pop; median age 54.5; ~19.7% poverty; 10th-poorest SD county). No single private industry — leans on a **closure-threatened VA hospital**, irrigated ag (Angostura), and **landscape-dependent tourism** (Mammoth Site, Wind Cave). A poor county wants salvation, but its tourism/ag/retiree base *depends on clean water + intact landscape* → **water-intensive/extractive projects read as threat** and inherit the uranium-fight opposition; a low-water non-extractive project could read as salvation.
- Referendum/election history; board flip risk: 🔍 **SD's county referendum is real and Fall River used it** — voters passed a uranium-as-public-nuisance initiative **Nov 2022 (56%)**, but it was ruled **state-preempted** (county can't ban what state minerals law permits). *So local land-use power is legally thin despite the no-zoning Wild West topology.* Board churn real (incumbent lost 2024; GOP primary decided by ~109 votes). **Not a rubber-stamp board.**
- Standing opposition orgs: 🔍 **among the strongest in the pilot set** — mature, networked, litigation-ready: **Black Hills Clean Water Alliance** (40-yr lineage), **Oglala Sioux Tribe** (federal-win record), **NDN Collective**, **Great Plains Tribal Water Alliance**. A permanent apparatus fighting extraction across the Hills; winning playbook = water/aquifer + sacred-site/treaty claims.

**Stealth diligence:**
- Water protest log (if applicable):
- Litigation scrape:
- Tax-base concentration:
- Referendum/election history; board flip risk:
- Standing opposition orgs:

## Stage 3 — Validate (1wk budget) — *only if Stage 2 passed*

- Water source / pipeline economics:
- Transmission tie-in path:
- Geological constraints:
- Labor pool within 60 min:

## Stage 4 — Commit (1mo budget) — *only if Stage 3 passed*

- Veto player map:
- Best entitlement path + veto stack:
- Option/LOI status:

## Sources

*Numbered; link minutes, recordings, datasets, calls (date + person).*
