# County Screen: Sweetwater County, Wyoming

**Date:** | **Researcher:** | **Funnel stage reached:** Screen / Filter / Validate / Commit / KILLED
**Method:** [framework/03 — County Screen](../../framework/03-county-screen.md). Prerequisite: state screen exists in [results/states/](../states/).
**Time spent per signal is logged** — it calibrates the [signal inventory](../../framework/04-signal-inventory.md).
**Audit standard (required):** every finding cites a specific official primary source and is tagged ✅ verified · 🔍 secondary-draft · ❓ open. See the [source-annotation rule](../../ops/README.md#execution-modes).

## Verdict

**Stage 1 — water (2026-06-13, draft):** Sweetwater is **🟡 site-dependent on water — the kill is sub-basin-specific, not county-wide.** Per [heuristic 1](../../framework/01-heuristics.md) water is the West's kill-first layer, and Sweetwater straddles two very different regimes: (a) the **Great Divide Basin** — a closed/endorheic basin (<10" precip, no outlet) covering much of central county, where a candidate site is a **Stage 1 water KILL** per the "closed basins are absolute kills" rule; and (b) the **Green River Basin** (SW county, Rock Springs/Green River) — water physically present but it is **junior Colorado River Compact water under active curtailment pressure** (priority calls were used in the basin in 2020-2022; 2026 state legislation aimed at protecting junior municipal/industrial users), a **durability risk on the water right itself**, not just supply. **Not killed county-wide** because (i) groundwater is unscreened and could rescue either area, and (ii) the project water demand is still placeholder ([framework/06](../../framework/06-project-spec.md)) — at ~7-10k ac-ft/yr full build-out the compact-curtailment exposure is material and must be sized. **Next:** SEO e-Permit basin pull + protest log per candidate AOI; confirm which sub-basin the actual candidate parcels fall in (that single fact flips kill vs. concern). Topology/best-path: deferred to Stage 2. Source detail cached: [research/raw/2026-06-13-sweetwater-water-stage1.md](../../research/raw/2026-06-13-sweetwater-water-stage1.md).

**Stage 1 — full picture (all signals run; pre-pilot = record, don't eliminate):** The two real would-kill threads are **water (sub-basin)** and **land assembly**, both **override-eligible**. Attractors: **transmission strong** (Jim Bridger / Aeolus-Anticline / Gateway 500kV corridor; headroom unverified), no tribal/military kill, and — newly clear — **local politics are pro-growth, not the constraint**.

**The reframe from the agent fan-out (the important update):** Sweetwater's binding constraint is **federal land management, not local opposition.** Three threads converge: (1) the **BLM Rock Springs RMP** put ~1.8M ac (half the planning area) under ACEC designation — *the county itself contemplated suing BLM to stop it*; (2) **sage-grouse Core Areas** blanket much of the basin (5% disturbance cap, lek buffers — policy, not ESA); (3) the **checkerboard** means the only large private block runs through **Orion/Sweetwater Royalties** (ex-Occidental, ~690k ac), acquirable by *negotiated purchase*, not assembly. So the entitlement story is unusually inverted: the *county* wants the project (single-industry, salvation reflex; pro-growth board, ~96% effective P&Z approval) — **the gatekeepers are the BLM, the sage-grouse EO, and a single private landholder.**

**Net for the principal:** Sweetwater remains **🟡 plausible-but-constrained**, but the constraint set is now precise and *transactional/federal* rather than political — which is arguably a more solvable problem (negotiate Orion + route around ACEC/Core Area + secure Green River or groundwater) than fighting a hostile electorate. Feasibility turns on: (1) sub-basin/groundwater water durability, (2) an **Orion land deal**, (3) **threading BLM ACEC + sage-grouse overlays** on the chosen footprint. Source detail: [overlays/ownership](../../research/raw/2026-06-13-sweetwater-stage1-overlays-ownership.md) · [water](../../research/raw/sweetwater/2026-06-13-water-seo-pull.md) · [transmission/ownership](../../research/raw/sweetwater/2026-06-13-transmission-ownership-pull.md) · [stealth](../../research/raw/sweetwater/2026-06-13-stealth-diligence-pull.md) · [federal](../../research/raw/sweetwater/2026-06-13-federal-layer-pull.md).

## Stage 1 — Screen (2h budget; actual: ~1.5h)

| Signal | Finding | Source | Time | Kill? |
|---|---|---|---|---|
| Water basin status (West) / wetlands+floodplain proxy (Southeast) | **Split, now sharper.** Great Divide = closed/endorheic, little reliable unappropriated surface (no formal SEO "fully appropriated" decl. found — inference). Green River = supply exists but junior Compact exposure is binding (WY historically curtailed >163k irrigated ac in GRB; post-2026 Colorado River rules unresolved). **Groundwater override:** physically present and **NOT under any control area** (WY's 3 control areas are all eastern) — *but quality-limited* (high TDS/saline at depth, Battle Springs Fm carries radionuclides; EPA 2025 aquifer exemption for Lost Creek ISR uranium). Site-specific potable yield unknown. | Great Divide endorheic ✅; compact/curtailment ✅ (agent, WyoFile/County17); groundwater control-area absence ✅ (agent, SEO); 🔍 e-Permit appropriation status + protest log (login/JS-gated — human) | ~50m | 🟡 **site-dependent** (🔴 if Great Divide surface; 🟡 if Green River; groundwater override exists but quality-limited) |
| Tribal/military/protected overlays | **No tribal kill** — Wind River Reservation is in Fremont/Hot Springs, not Sweetwater ✅. Protected/WSA tracts exist (BLM-managed) but don't blanket the county; screen at AOI. No major military reservation. | ✅ tribal (Census AIANNH/known); 🔍 PAD-US/WSA per-AOI | ~15m | 🟢 (no overlay kill at county level) |
| Landownership fragmentation at candidate sites | **The binding constraint — and the assembly path is now identified.** Checkerboard ≈ 50×150 mi of alternating 640-ac sections along I-80/UP; ~48% BLM / 52% private in the Rock Springs sub-area. **No clean contiguous ≥5,000-ac fee block exists in the checkerboard core by construction.** The private half (~690k ac in-county) is held by **Orion Mine Finance / Sweetwater Royalties** (bought from Occidental 2020 for $1.33B; split into grazing/trona/oil-gas/coal entities). **Acquisition path = negotiated purchase from Orion/Sweetwater Royalties** (offered to WY 2020, re-approached 2023) — a relationship/transaction problem, not a listings search. Cleaner fee blocks likely exist *off* the rail band but farther from transmission → **assembly-vs-transmission tradeoff.** | ✅ ownership chain + checkerboard (agent, news); 🔍 county GIS section-by-section (JS-rendered), current offering specifics | ~25m | 🟡→🔴-**eligible** (no contiguous fee in core; **override via Orion purchase or off-band siting**) — **data, not a stop** |
| Transmission proximity (vs. [spec threshold](../../framework/06-project-spec.md)) | **Strong attractor (confirmed).** Jim Bridger complex (2,441 MW) is a real HV hub: Gateway West 230/500kV (→Jim Bridger), **Aeolus–Anticline 500kV** (terminates at Anticline substation by the plant), **Gateway South 500kV** (~34 mi through Sweetwater). I-80/Rock Springs–Green River–Point of Rocks corridor very plausibly inside ~10-15 mi / ≥115kV. **Caveat: proximity ≠ interconnection headroom** (Jim Bridger is a transitioning coal asset; queue unverified). | ✅ lines/substations (agent, Wyoming News/utility); 🔍 HIFLD distance + interconnection queue | ~15m | 🟢 (favorable; headroom 🔍) |
| Federal exposure: IPaC species/habitat report; NWI density as §404 proxy ([framework/07](../../framework/07-federal-layer.md)) | **§404 LOW confirmed** (arid; WY wetlands ~1.5% of land, clustered on Green River/Seedskadee — favorable). **Sage-grouse is the dominant handle** but is *policy* (WY EO 2019-3 + BLM RMP), NOT ESA-listed — constraints are a **5% surface-disturbance cap/sq-mi, lek buffers, seasonal stips** (dictates layout, not a kill). Likely *listed*-species hook = **downstream Colorado River fish via water-depletion §7** (pikeminnow/razorback/bonytail/humpback chub) — any water-depleting project with a federal nexus trips programmatic §7. **+ WY Industrial Siting Act** triggers for utility-scale (solar ≥30MW/≥100ac, wind ≥20 towers, cost ≥~$283M). | ✅ EO/ISC thresholds (agent, WY DEQ/G&F); 🔍 IPaC AOI (needs coords), exact Core % | ~20m | 🟡 (siting + §7 depletion + ISC handles; layout-shaping, not county kill) |
| Municipal proximity / ETJ exposure | Rock Springs + Green River (shared ~39k system) are the nearby municipalities; bears on the § 15-1-411 one-mile **incorporation** bar (see [state screen](state-wy.md)). Proximity is also *good* for labor/services if entitling via county or annexation. | ✅ municipalities known; 🔍 one-mile-ring map vs. AOI | ~10m | 🟢 (manageable; site-placement note) |

## Stage 2 — Filter (1d budget; actual: __)

> **🔍 Stage 2 is a Mode-B DRAFT (agent-gathered 2026-06-13, unverified).** Produced by a meeting-grading agent run from real P&Z packets; **graded body = Planning & Zoning Commission** (recommending), not the Board of County Commissioners (BCC Granicus archive is JS-rendered, not yet retrieved — see gaps). Nothing here is ✅ until a human checks it against the signed PDFs / BCC record. Cache + scoring: [research/raw/sweetwater/meetings/](../../research/raw/sweetwater/meetings/) (`_INDEX-and-SCORING.md`).

**Topology classification (🔍 draft): Boom County (low-friction / modest-capacity)** — applicant-deferential board, near-zero denials, but a low-volume rural docket (~6 "No Meeting" months in 24) and no dedicated PUD district. Leans Boom on friction, "Wild West" on scale-capacity (untested at large scale).
- Planning staff: Land Use Department (staff-supported P&Z); 🔍 director title/FTE unconfirmed.
- Largest project on agendas (24 mo): **TransWest 732-mi transmission line permit**; 160-ac gravel (Amante MD-1); 27.7/25.7-ac industrial ZMAs; 125-ft sign. 🔍
- CUP/PUD procedure: **no dedicated PUD district** — path is ZMA → CUP → variance (2015 Zoning Resolution, amended 2025-02-18). 🔍 confirm vs. full resolution.

**Rezoning-ease metrics (🔍 draft, P&Z; 24 mo / 11 meetings / 28 hearings):**

| Metric | Value | Source |
|---|---|---|
| Rezoning approval rate (24 mo) | **~86% raw / ~96% effective** (24 approved, 0 denied, 4 postponed→mostly later approved) | 🔍 P&Z packets, [cache](../../research/raw/sweetwater/meetings/) |
| Median application-to-decision time | **~1 month** (P&Z 2nd Wed → BCC 3rd Tue same month) | 🔍 cache |
| Largest project approved in 5 yrs | 160-ac gravel expansion; 732-mi transmission permit (linear) | 🔍 cache |
| PUD framework exists / length | **No dedicated PUD district**; ZMA→CUP→variance path | 🔍 2015 Zoning Resolution |
| Comp plan recency + growth posture | **Comp plan ~2002 (stale, ~23 yr)**; zoning operative + amended 2025; posture **explicitly pro-growth/deregulatory** (STR made non-discretionary; a CUP requirement removed Dec 2025) **except energy, which was tightened** (sage-grouse/migration) | 🔍 cache + Granicus hit |

**Provisional Development Friendliness Grade (🔍 draft) = 84.5 / 100** — *report with components, never alone* ([protocol Stage 5](../../ops/protocol-meeting-grading.md)): approval 95×.35 + contention(inv) 80×.25 + agenda-mix 70×.15 *(low confidence, BCC mix unverified)* + throughput 85×.10 + board tone 90×.10 + scale-proximity 65×.05. **Caveat:** grades the *small-to-mid* docket; the board is applicant-deferential, but the real constraints on a *large* entry are not the P&Z board — they're sage-grouse/migration overlays, WY Industrial Siting (utility-scale energy), and inter-agency engineering (water districts, WYDOT, pipelines). Consistent with Stage 1.

**Qualitative (translated per framework/03):**
- Planner call notes: ⬜ Mode-D, not done (agents can't make calls).
- EDO contact notes: ⬜ Mode-D, not done.
- Minutes/transcript review (what dominates the agenda?): 🔍 land-use items routine and low-volume; objections (Quealy, Triplett) overridden with conditions, 0 contested denials. Candidate friendliness markers logged to [friendliness-markers.md](../../research/friendliness-markers.md).

**Meeting-grading — Stage 1 Discover (per [ops protocol](../../ops/protocol-meeting-grading.md), 2026-06-13):** *where the records live = a capacity signal in itself.* **Source links are kept in the persistent [meeting-records registry](../meeting-records.md#sweetwater-county-wy)** — re-checked on every re-run; the table below is the local snapshot.

| Body | Source located | Format | Acquire approach (Stage 2) | Audit |
|---|---|---|---|---|
| Board of County Commissioners | ✅ **Granicus** — `sweetwatercountywy.granicus.com` (live + archived video, agendas, MetaViewer minutes); meets 1st & 3rd Tuesdays 9:00 AM | Video + agenda/minutes | Granicus archive (per protocol Stage 2: Legistar/Granicus first); county **YouTube channel** as backup → `yt-dlp --write-auto-subs` | ✅ source exists; 🔍 confirm Granicus `view_id` + 24-mo archive depth |
| Planning & Zoning Commission (Land Use Dept) | ✅ exists — agendas + staff reports published as **PDFs** (county Land Use site + Granicus S3 attachments) | **PDF agendas/staff reports**; full video/minutes stream not confirmed | `pdftotext -layout` on clerk/Land Use PDFs; 🔍 check if P&Z also has a Granicus video view | ✅ P&Z + PDF agendas exist; 🔍 video/full-minutes availability |

**Capacity read (preliminary):** Sweetwater runs **Granicus for the Commission** — above-average civic-tech capacity for a rural county (contrast the protocol's note that PDF-only / records-request-only is a low-capacity signal). The land-use body (P&Z) appears more PDF-centric; if P&Z has no video, grading there leans on PDF minutes (lower fidelity for *tone*, fine for counts/outcomes). **Does not gate** — willingness signal only ([framework/03](../../framework/03-county-screen.md)); runs after the Stage 1 water kill check. **Next (Stage 2 Acquire, deferred):** pull 24 months of Commission video + P&Z PDFs into `research/raw/sweetwater/meetings/`, then score per protocol Stages 3–5.

- Contacts (Mode D, logged for later): Commission clerk Sally Shoemaker, 307-872-3890, shoemakers@sweetwatercountywy.gov (source: county Commission page).

**Stealth diligence (🔍 agent-gathered 2026-06-13; [cache](../../research/raw/sweetwater/2026-06-13-stealth-diligence-pull.md)):**
- Water protest log: 🔍 mechanism confirmed (advertise → protest window → Board of Control) but the actual log is in the login/JS-gated SEO e-Permit system — **not retrieved; human/browser gap.**
- Litigation scrape: 🔍 **No private developer or local water lawsuit found.** The dominant fight is the **BLM Rock Springs RMP** (Dec 2024 ROD designated ~1.8M ac / half the planning area as ACECs) — the **county itself contemplated suing BLM** over it; RMP reopened (Oct 2025) and ordered redone (Dec 2025). *Conservation groups* are the litigation threat *if protections weaken*. **Legal risk = federal land overlays, not local opposition.**
- Tax-base concentration: 🔍 **strongly single-industry** (~67% of county revenue from mineral extraction, trona-led; world's largest trona reserves). **Salvation, not threat** — commission unanimously rezoned ag land for WE Soda's ~$2.6B "Project West." *Caveat:* salvation reflex favors projects that *add* to the industrial base; a non-industrial new city competing for labor/water is less certain.
- Referendum/election history; board flip risk: 🔍 no county referendum (WY); one-party (R) — decided in GOP primary. **Intra-GOP incumbent turnover is real** (incumbents lost 2020/2022 primaries) → **don't assume the same board across a multi-year entitlement.**
- Standing opposition orgs: 🔍 **none in the anti-development/Greenbelt pattern.** Active groups (Greater Little Mountain Coalition, WY Wildlife Federation, Muley Fanatic, TRCP) target *federal* leasing/RMP and were *allied* with the county on deferrals — not local-approval adversaries.

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
