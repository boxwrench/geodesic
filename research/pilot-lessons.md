# Pilot Lessons — transferable findings

**Purpose.** The pilot's deliverable is not three filled-in locale files — it's the **method improvements they teach**. This ledger captures every lesson that generalizes *beyond* the locale that produced it, the moment it's learned, so it isn't lost between now and [Step 2 calibration](../ops/step-2-calibration.md). Each locale study is expected to add to this file; a study that taught nothing transferable is a study we ran inefficiently.

**How to use it.** When working a locale, if you hit something that would change how the *next* locale is screened — a signal that did/didn't discriminate, a data source that lied or delivered, a procedure the framework got wrong — log it here, not just in the locale file. Tag each lesson by type and cite the locale + evidence (audit markers per the [source-annotation rule](../ops/README.md#execution-modes)).

**Lesson types:** `METHOD` (how we screen) · `SIGNAL` (power/cost recalibration → framework/04) · `SOURCE` (data-source reliability → ops/data-sources.md) · `FRAMEWORK` (a framework doc needs revision post-pilot).

---

## Ledger

*Entries have stable IDs (Ln) and are referenced by ID elsewhere; they appear in append order, not numeric order. Current: L1, L2, L7, L5, L8, L9, L8b, L10, L11, L12, L13, L14, L15, L6, L4, L3.*

### L1 — Official text is mandatory for *procedural* claims, not just legal ones
- **Type:** METHOD · **From:** WY / Sweetwater state screen (2026-06-13)
- **Evidence:** The draft (built from Justia + secondary indexes) stated WY town **incorporation** runs through the **district court**. Official Title 15 text (§ 15-1-204/-205, ✅ [cached](raw/2026-06-13-wy-title15-cities-towns-official-extract.md)) shows it runs through the **board of county commissioners + an election of residents** — a materially different veto stack.
- **Transferable rule:** Secondary legal indexes paraphrase *holdings* tolerably but **misstate procedure and "who decides"** often enough that a procedure/veto-stack claim must never reach ✅ without the official statute. Applies to SD and NC incorporation/annexation paths too — read the official code before drawing the veto stack.
- **Action:** already encoded in the [source-annotation rule](../ops/README.md#execution-modes) (official source = source of record). No framework change needed; this is a discipline reminder for SD/NC.

### L2 — Meeting-record *host* is a free capacity proxy available at Stage-1 discovery
- **Type:** SIGNAL · **From:** WY / Sweetwater, meeting-grading Stage 1 (2026-06-13)
- **Evidence:** Sweetwater Commission publishes via **Granicus** (live+archived video, MetaViewer minutes) — above-average civic-tech for a rural county — while the **P&Z** body appears **PDF-centric**. This was learnable in ~30 min of discovery, before acquiring or grading anything.
- **Transferable rule:** *Where* a county hosts its meetings (Legistar/Granicus video → YouTube → PDF-only → records-request-only) is itself a cheap, ordinal **capacity** signal, and it predicts how expensive the friendliness grade will be to compute (video+captions = cheap tone read; PDF-only = counts/outcomes only, weak tone). Capture host-tier at discovery for every county.
- **Action:** candidate new Tier-A/discovery signal for [framework/04](../framework/04-signal-inventory.md) ("meeting-record host tier"); confirm it discriminates across all three pilot counties before promoting.

### L7 — In pilot mode, run every signal on every county — kills are data, not stops
- **Type:** METHOD · **From:** pre-pilot operating decision (2026-06-13)
- **Rule:** The pilot exists to produce *comparative data and signal calibration*, so the screen must not short-circuit on a kill. Record 🔴 as a finding (with the evidence the principal would weigh) but **keep running all remaining signals** on that county. A signal that never fires on a county it "would have" killed gives [Step 2 calibration](../ops/step-2-calibration.md) nothing to weigh; a county dropped early stops generating the head-to-head data the pilot is for.
- **Boundary:** this is *pilot-mode only*. Live-mode acts on kills (subject to the [kill-override](../framework/03-county-screen.md#kill-override--a-kill-is-a-hypothesis-not-a-verdict)). Don't carry the "ignore kills" habit into live operation.

### L5 — Water kills are *sub-basin*, not county-wide — screen the basin a parcel sits in, not the county
- **Type:** METHOD / FRAMEWORK · **From:** WY / Sweetwater Stage 1 water (2026-06-13)
- **Evidence:** Sweetwater straddles the **Great Divide closed/endorheic basin** (absolute-kill territory) *and* the **Green River Basin** (water exists but junior Colorado River Compact rights, curtailment-exposed). A single county-level "water: pass/kill" cell would be wrong both ways depending on where the parcels are.
- **Transferable rule:** For the water signal, the unit of analysis is the **basin the candidate parcels fall in**, not the county — consistent with [heuristic 5](../framework/01-heuristics.md) (don't mis-level kills: water availability is closer to site-level than county-level). Record water as *site-dependent* until candidate AOIs are fixed; the basin-of-parcel is often the single fact that flips kill↔concern. Watch for the same straddle in any large Western county.
- **Action:** reflected in the Sweetwater county file; candidate note for a framework/03 Stage-1 clarification post-pilot.

### L8 — In the West, land assembly (not zoning) is the likely binding constraint — screen the federal/checkerboard ownership pattern early
- **Type:** SIGNAL · **From:** WY / Sweetwater Stage 1 (2026-06-13)
- **Evidence:** Sweetwater sits in the **Union Pacific checkerboard** (alternating 1-mi private/BLM sections ±20 mi of the rail line) atop ~46.7% statewide federal ownership. Contiguous private ≥5,000-ac blocks are structurally scarce — assembly, not willingness or zoning, is the central feasibility question. Framework/04 already rates fragmentation "very high" power; this confirms it for the West specifically.
- **Transferable rule:** For Western candidates, pull the **ownership-pattern map (federal % + railroad checkerboard)** as a Stage-1 signal *before* investing in governance/friendliness work — it can be the binding constraint and it's cheap (BLM surface-management + county GIS). The flip side is an asset: a single large federal/ex-corporate tract for sale (the ex-Occidental pattern) can *solve* assembly at once → keep it on the Path-0 track. Likely recurs in Fall River SD (also Western); test there.
- **Action:** candidate to elevate "landownership fragmentation / federal-checkerboard pattern" in [framework/04](../framework/04-signal-inventory.md) for Western counties; confirm against Fall River.

### L9 — Scale-threshold is the cheapest *hard* discriminator — compute it first, from one Census number
- **Type:** SIGNAL · **From:** SD / Fall River Stage 1 (2026-06-13)
- **Evidence:** Fall River County pop ~7,453; a 50k build-out is ~7x the county (ratio ~6.7, far past the >1.0 kill-review line). One free Census figure produced the dominant finding for the county — and it's *worse* in a referendum state (SD) because magnitude summons the ballot ([heuristic 3](../framework/01-heuristics.md)).
- **Transferable rule:** Compute **entry-pop ÷ county-pop and build-out ÷ county-pop as the very first Stage-1 act** — it's a single Census lookup and it discriminates hard (Sweetwater county ~42k absorbs the project far better than Fall River's ~7k). Cheap, high-power; should rank at/near the top of the calibrated signal list. Pairs with referendum-reach: a high scale ratio in an I&R state is a compounding durability risk.
- **Action:** candidate to elevate the scale-threshold ratio to a named Tier-A Stage-1 signal in [framework/04](../framework/04-signal-inventory.md); it currently lives only inside [heuristic 3](../framework/01-heuristics.md).

### L8b — L8 confirmed across counties: Western assembly friction is general; the *mechanism* varies
- **Type:** SIGNAL (confirmation) · **From:** SD / Fall River vs. WY / Sweetwater (2026-06-13)
- **Evidence:** Sweetwater = UP railroad **checkerboard**; Fall River = **Buffalo Gap National Grassland** interspersion. Different federal-land mechanisms, **same binding effect**: no easy contiguous large private block. Two-for-two across the Western pilot counties.
- **Transferable rule:** **L8 holds** (see L8 above) — treat "federal-land interspersion / assembly difficulty" as a default Western Stage-1 expectation, screening the *specific* pattern (railroad grant vs. grassland vs. BLM block) per county. Strong evidence to promote the fragmentation signal's power for Western counties in Step 2.

### L10 — Region-conditional kill-ordering (heuristic 1) validated across all three counties
- **Type:** FRAMEWORK (confirmation) · **From:** full pilot Stage 1 (2026-06-13)
- **Evidence:** Each county failed/survived on the layer the framework predicted for its region — WY/Sweetwater on **water** (prior-appropriation, sub-basin), SD/Fall River on **water + scale**, NC/Jones on **wetlands/§404** (Croatan ~75% wetlands). The Southeastern kill layer discriminated in Jones exactly as Western water did in Sweetwater. Running the *wrong* layer first in either region would have wasted the cheap kill.
- **Transferable rule:** Keep the region-conditional Layer-1 ordering ([heuristic 1](../framework/01-heuristics.md)) as-is; it earned its keep. Operationally: branch the Stage-1 signal order by region at the top of every county screen (West → water/basin first; Southeast → §404/wetlands first).

### L11 — Governance strength cannot rescue failed dirt — confirm the physical layer regardless of how good the law is
- **Type:** METHOD · **From:** NC/Jones (2026-06-13)
- **Evidence:** NC has the **best governance** of the three states (statutory early-vesting, no referendum, defanged SEPA) — yet Jones is 🔴-leaning because the *dirt* (pervasive §404 wetlands) fails. A screen that weighted the attractive legal profile could have over-rated Jones.
- **Transferable rule:** Never let a strong *state* screen advance a county past the Stage-1 *physical* kill ([heuristic 1](../framework/01-heuristics.md): fall in love at infrastructure, kill at the constraint layer). State governance and county physical constraints are independent gates; both must clear. Mirror of L3 (data availability ≠ gating power), applied to legal attractiveness.

### L12 — Agents can gather Stage-2 data as Mode-B drafts — and they sharpen Stage-1 discovery in the process
- **Type:** METHOD · **From:** Sweetwater meeting-grading agent run (2026-06-13)
- **Evidence:** A general-purpose agent ran the meeting-grading protocol on Sweetwater: cached 9 real P&Z packets (11 meetings), computed approval-rate/contention/throughput, and drafted an 84.5/100 friendliness grade — *and* it improved Stage-1 discovery by finding a fetchable PDF route (`cms7files.revize.com`) when the main county domain was blocked. It correctly refused to fabricate the BCC Granicus archive (JS-rendered) and flagged it as a human/browser gap.
- **Transferable rule:** Agents are well-suited to the **acquire + first-pass-score** half of Stage 2 (Mode A/B): minutes pull, deterministic counts, draft grade, candidate-marker logging. They **cannot** do Mode-D (planner/EDO calls) or clear the Mode-B verification gate — their output is 🔍 draft until a human checks it. Use them to fan out parallel data gathering; reserve verification + phone work for humans. Practical gotcha: JS-rendered archives (Granicus `ViewPublisher`) need a browser tool, not web_fetch — route those to a human or a browser-capable step.
- **Action:** viable Step-3 pattern — an agent-run "minutes acquire + score" is the proven path for the meeting pipeline; but per the [Step 2 calibration](2026-06-13-step2-calibration.md), confirm the grade *discriminates* (compare Sweetwater's 84.5 against a graded second county) before trusting it to rank.

### L13 — A pro-growth county can still be hard — the binding veto may be *federal land + a single landholder*, not local politics
- **Type:** METHOD / FRAMEWORK · **From:** Sweetwater Stage 2 agent fan-out (2026-06-13)
- **Evidence:** Sweetwater's *local* signals are all green (single-industry salvation reflex, ~96% P&Z approval, no opposition orgs, no referendum) — yet the project is constrained by **BLM RMP/ACEC (~1.8M ac), sage-grouse Core Areas, and checkerboard ownership concentrated in one seller (Orion/Sweetwater Royalties)**. The framework's county-friendliness lens would mis-rate this county as easy.
- **Transferable rule:** In the **federal-heavy West**, add an explicit Stage-1/2 axis for **"who actually holds the veto"** — it is often the BLM (RMP/ACEC), a species-policy overlay (sage-grouse EO), or a *single dominant private landholder*, none of which a meeting-grading friendliness score detects. A high friendliness grade + high federal-overlay + concentrated ownership = "willing county, federal/transactional lock." Screen federal land-management posture (current RMP/ACEC status) alongside local willingness.
- **Action:** candidate framework/03 addition — a "veto-holder identification" line at Stage 1 for federal-heavy counties; reinforces L8 (assembly) and L11 (governance ≠ dirt).

### L14 — Parallel agent fan-out works for independent Stage-2 pulls — and the gaps cluster predictably
- **Type:** METHOD · **From:** 4-agent Sweetwater fan-out (2026-06-13)
- **Evidence:** Four agents (water/SEO, transmission/ownership, stealth diligence, federal layer) ran concurrently and each returned a substantive 🔍 draft + honest gap list. **The gaps clustered on one predictable failure mode: JS-rendered / login-gated portals** (SEO e-Permit, county GIS ownership viewer, Granicus, IPaC-by-AOI) — the same wall the meeting-grading agent hit.
- **Transferable rule:** Fan out independent data pulls to parallel agents freely (big speedup, Mode-B drafts). Budget *one* human/browser session afterward to clear the clustered JS/login gaps in a batch (e-Permit protest log, county ownership map, Granicus minutes, IPaC AOI report) — these are the recurring "needs human" items and they're cheaper to knock out together than piecemeal. This defines the Step-3 build priority: a browser-capable fetch step for gated gov portals is the highest-leverage tool to add.

### L15 — A friendliness grade is meaningless without topology — a high score can mean "no gate," not "friendly"
- **Type:** SIGNAL / FRAMEWORK · **From:** Fall River comparator vs. Sweetwater (2026-06-13)
- **Evidence:** Sweetwater (active P&Z, ~96% effective approval, real precedents) = **84.5**. Fall River (**no zoning department, no county zoning ordinance at all**) = **88.5** — *higher*, purely because there is no discretionary process to generate denials, fights, or continuances. The grade scored the **absence of a gate** as if it were friendliness. Naive ranking would put the weaker county on top.
- **Transferable rule:** **Never report or rank on a friendliness grade alone — always pair it with the topology classification** (the protocol already says "report with components"; this extends it to "report with topology"). Specifically: a high grade in a **Wild West** county (no zoning) is a *risk* flag, not a green light (zero path dependency; they can adopt hostile zoning in response to you — [framework/03](../framework/03-county-screen.md)), whereas the same grade in a **Boom County** (active, approving board) is genuine. Consider a **grade modifier or a hard pairing rule**: friendliness grade is only comparable *within* a topology class.
- **Action:** strong input to [Step 2 calibration](2026-06-13-step2-calibration.md) — the meeting-grade signal needs a topology gate before it can rank counties; and the [friendliness-marker loop](friendliness-markers.md) should carry "no zoning / no discretionary process" as a **grade-invalidating** condition, not a positive marker. This is exactly the kind of correction the comparator pass existed to find — the signal *discriminated*, just not in the naive direction.

### L6 — The kill-override rule earned its place on first use
- **Type:** METHOD (confirmation) · **From:** WY / Sweetwater Stage 1 (2026-06-13)
- **Evidence:** The water finding produced a 🔴-eligible result (closed basin) that is genuinely *overrideable* via unscreened groundwater and parcel placement. Treating it as a flat kill would have discarded Sweetwater on partial evidence.
- **Transferable rule:** A 🔴 from a *single* cheap signal (esp. surface-water availability) should default to **site-dependent / override-eligible** when a named alternative (groundwater, alternative parcel, water transfer/exchange) is plausible and unscreened. Reserve hard 🔴 for constraints with no plausible alternative (e.g., tribal/military overlay on the only assembly block).

### L4 — The friendliness detector should be *learned from meetings*, not hard-coded
- **Type:** METHOD / SIGNAL · **From:** design decision during WY/Sweetwater meeting-grading setup (2026-06-13)
- **Evidence:** The grader's keyword/behavior lists started as priors (guesses). The friend's original method worked because *watching* meetings reveals tells you can't list in advance.
- **Transferable rule:** Treat the friendliness grader as a detector that **improves with evidence**. Log observed tells as candidate markers, graduate the ones that recur across counties and track outcomes (≥3 meetings / ≥2 counties), demote the ones that recur but don't discriminate. Run this in every county so later counties are screened with a sharper detector than earlier ones — the pilot is training data, not just scored output.
- **Action:** built as the [friendliness-marker loop](friendliness-markers.md), wired into protocol Stage 4 and framework/04.

### L3 — "Friendliness" stays a Stage-2, non-gating signal even when the source is rich
- **Type:** FRAMEWORK (confirmation, not change) · **From:** WY / Sweetwater (2026-06-13)
- **Evidence:** Sweetwater has excellent meeting data, which is tempting to over-weight. Per [framework/03](../framework/03-county-screen.md) + [heuristic 1](../framework/01-heuristics.md), willingness ≠ capacity ≠ authority, and a warm board is not a durable instrument.
- **Transferable rule:** Data *availability* must not promote a signal's *gating power*. Friendliness grade ranks survivors; it never rescues a site that failed the Stage-1 water/physical kill or the state durability screen. Watch for this bias in every locale that happens to have good transcripts.

---

## Feeds

- **[Step 2 — Calibration](../ops/step-2-calibration.md):** this ledger is the raw input. SIGNAL lessons become power-score edits to [framework/04](../framework/04-signal-inventory.md); FRAMEWORK lessons become the post-pilot framework revision.
- **[ops/data-sources.md](../ops/data-sources.md):** SOURCE lessons update reliability flags there.
- **[ROADMAP](../ROADMAP.md):** the standing checks point here so logging a lesson is part of every study, not an afterthought.
