# Sweetwater County, WY — Water / SEO Pull (Stage-2 DRAFT)

**Date:** 2026-06-13
**Mode:** PILOT-STAGE Mode-B DRAFT — gather + first-pass summarize. EVERYTHING tagged 🔍. Nothing here is a verified ✅ finding. Human verification + integration required.

---

## 0. Geographic frame (context)

Sweetwater is WY's largest county. It straddles two distinct water regimes:
- **Great Divide Basin (GDB)** — closed/endorheic, no surface outlet to the ocean; ~4,000 sq mi across Sweetwater + Carbon counties. Continental Divide loops around it. 🔍
- **Green River Basin (GRB)** — drains to the Colorado River system; junior under the 1922 Colorado River Compact / 1948 Upper Colorado River Basin Compact, hence curtailment-exposed. 🔍
- Administered by **SEO Water Division IV** (HQ Cokeville; division covers Green, Bear, Snake drainages). 🔍

---

## 1. SURFACE WATER by sub-basin

### Great Divide Basin (closed/endorheic) 🔍
- Endorheic, no outflow; most streams in the county are **ephemeral**, flowing only on rain/snowmelt runoff. Perennial flow in the county is largely **imported** from headwaters to the N/W/S (not generated locally). [USGS SIR 2004-5214]
- DRAFT inference (NOT verified): a closed basin with ephemeral/imported flow offers little reliable, unappropriated SURFACE supply for a new large municipal/industrial appropriation. Consistent with the "water-kill territory" hypothesis, but I could NOT find an SEO declaration that GDB surface water is formally "fully appropriated." **GAP.** 🔍

### Green River Basin 🔍
- Green River main-stem has the county's best surface-water quality (resistant geology, reservoirs incl. Fontenelle/Flaming Gorge, large diluting flows). [USGS SIR 2004-5214]
- BUT junior Colorado River Compact exposure is the binding constraint, not local availability (see §4).
- Prior-appropriation state: all water is state property; new use requires an SEO permit, granted only if existing users are not injured. No public "fully appropriated" flag for GRB surface water located in fetchable sources. **GAP — needs e-Permit / SEO division check.** 🔍
- Water-use context: 2000 county mean use approx 170.73 MGD; irrigation largest single use (>92 MGD), ~90% of irrigation from surface water. [USGS SIR 2004-5214]

---

## 2. GROUNDWATER availability (the override path) 🔍

### Statewide control-area posture — KEY SIGNAL
- WY has only **three statutory groundwater Control Areas**: **Laramie County, Platte County, Prairie Center.** All in eastern WY. [seo.wyo.gov/ground-water/control-areas-and-advisory-boards]
- **No groundwater Control Area exists in Sweetwater County / Great Divide / Green River Basin.** 🔍 → groundwater appropriation here is NOT under a special control-area overlay. Supports the "groundwater = override path" thesis. (Confirm no district/sub-district restriction via e-Permit — GAP.)
- Permitting baseline: since 24 May 1969 ALL wells (incl. stock/domestic) require an SEO permit before drilling; domestic/stock hold preferred rights. [seo.wyo.gov/ground-water]

### Aquifer character (from USGS SIR 2004-5214) 🔍
- Both water-table and artesian conditions present. **Shallow groundwater available throughout the county**, but much is only marginally suitable / unsuitable for domestic + irrigation due to **high TDS**.
- Quality deteriorates with distance from recharge and with depth; **> a few thousand feet → moderately saline to briny.** Some shallow zones already moderately saline.
- Elevated sulfate, fluoride, boron, iron, manganese in several aquifers.
- **Battle Spring (Battle Springs) Formation aquifer** — principal aquifer across the Great Divide Structural Basin. Many samples show **high radionuclide concentrations** (uranium country; hosts roll-front uranium ISR deposits). [USGS SIR 2004-5214; WSGS]
- Recharge is slow and substantially from inflow into the county (arid climate). [USGS SIR 2004-5214]
- 2025 signal: EPA approved an **aquifer exemption** for the Lost Creek ISR uranium project in the Battle Springs aquifer, finding it not a current/future drinking-water source — parts of GDB groundwater being formally written off for non-potable mining use. [EPA newsrelease; High Plains Journal 2025-05]

**DRAFT inference (NOT verified):** Groundwater is physically present and not control-area-restricted, so it is the more plausible override path than surface water — BUT quality (TDS, radionuclides) and depth-to-fresh are real constraints for a potable municipal supply. Site-specific yield/quality unknown. **GAP — needs SEO well logs + Water Supply/Yield analysis.** 🔍

---

## 3. SEO protest log / posture on municipal applications (stealth-diligence signal) 🔍

- Mechanism exists: after final proof, the division superintendent inspects and the proof is **advertised; if no protests are filed, a certificate issues** (Board of Control = State Engineer + 4 division superintendents). [WY water-law summaries]
- The searchable record lives in the **e-Permit system** (seoweb.wyo.gov/e-Permit): submit/track instruments, **search water rights tabular + GIS**, retrieve workflow + documents. Where a protest log on municipal applications would surface.
- **I could NOT retrieve any actual protest entries or a posture read.** e-Permit is an ASP.NET app behind a login (login.aspx) with JS/tabular+GIS query forms — **not server-side fetchable** via web_fetch. The public seo.wyo.gov site is a Google Sites front end whose deeper content is JS-rendered; web_fetch returned only nav chrome + static landing text, no protest/application detail.
- **GAP — HUMAN/BROWSER REQUIRED:** run e-Permit "Find Water Right" + workflow search for Sweetwater County / Division IV municipal applications to read actual protest history + SEO disposition. Contacts: e-Permit 307-777-6150; Ground Water Div 307-777-6163. 🔍

---

## 4. Colorado River Compact curtailment posture — Green River Basin (2025–2026) 🔍

- **WY's curtailment exposure (DRAFT figures):** maximum approx **70–80 KAF**; more realistic **30–50 KAF**, depending on water year + historical consumptive use. [B-1373.1, UW Extension; demand-mgmt sources]
- 2007 Interim Guidelines **expire end of 2026**; Post-2026 operating rules under negotiation. Upper vs Lower Basin still split; Upper Basin (incl. WY) plan does **not** anticipate new mandated curtailments to Upper Basin users beyond natural streamflow shortage. [Colorado Sun 2025-10; CU GWC; congress.gov R45546]
- Lake Mead under **Tier 1 shortage** (2022, 2024, 2025); Powell at risk of dropping below minimum power pool by Aug 2026 absent intervention. [congress.gov; CRB statements]
- WY posture is **demand management** (voluntary, temporary, compensated reductions) to avoid "hard" compact-call regulation. SEO has previously shut off **>163,000 acres of irrigation** in the Green River Basin as a management action. [UW Extension; SEO via search]
- Wyoming **Colorado River Advisory Committee** (WY Stat. §41-11-302) advises Governor/State Engineer/UCRC commissioner on Green + Little Snake rights/obligations. Active through 2026 (recordings: Jan, Apr, Jun 2026). Seat for **municipal Green River water users** held by **Ben Bracken** (term to 6/30/2029). Post-2026 "Upper Division States (UDS) Alternative" submitted. [seo.wyo.gov/wyoming-colorado-river-advisory-committee]

**DRAFT read:** A senior right is largely insulated; a NEW (junior) Green River Basin appropriation is exactly the right most exposed to a future compact call / curtailment. This is the live curtailment risk on the Green River side. Magnitude/probability of a hard call by 2027+ unresolved — **GAP, depends on Post-2026 outcome.** 🔍

---

## GAPS / NEEDS HUMAN

1. **e-Permit portal not fetchable (login + JS/ASP.NET).** Actual water-right inventory, "fully appropriated" status by sub-basin, and the **protest log / SEO posture on municipal applications** must be pulled by a human or browser-automation session at seoweb.wyo.gov/e-Permit. **Single biggest gap.** 🔍
2. **No SEO declaration located** confirming GDB surface water "fully appropriated" — inference only; verify with Division IV superintendent. 🔍
3. **waterplan.state.wy.us** Green River Basin water-law tech memo (HTML + PDF) returned **empty bodies** via web_fetch — could not extract. Retry via browser; likely contains basin appropriation-status detail. 🔍
4. **Site-specific groundwater yield + potable quality** unknown — needs SEO well logs / Water Supply & Water Yield analysis for the target parcel (TDS, radionuclides in Battle Springs flagged). 🔍
5. **Quantified curtailment probability** for a new junior Green River right depends on unresolved **Post-2026 Colorado River guidelines** — monitor UCRC / WY Advisory Committee outputs. 🔍
6. SEO **News & Press Releases** and **State Engineer's Orders** pages are Google-Sites JS — not deep-fetched here; may carry recent basin-specific orders. 🔍

---

## SOURCES
- USGS SIR 2004-5214, Water Resources of Sweetwater County, WY: https://pubs.usgs.gov/publication/sir20045214 and https://pubs.usgs.gov/sir/2004/5214/
- SEO Ground Water (control areas, permitting history): https://seo.wyo.gov/ground-water and https://seo.wyo.gov/ground-water/control-areas-and-advisory-boards
- SEO e-Permit (portal/login — NOT fetchable): https://seoweb.wyo.gov/e-Permit/ and https://seoweb.wyo.gov/e-Permit/common/login.aspx ; help: https://seoweb.wyo.gov/e-Permit/Help/e-Permit_System.htm
- SEO Wyoming Colorado River Advisory Committee: https://seo.wyo.gov/wyoming-colorado-river-advisory-committee
- WY State Water Plan, Green River Basin water-law memo (EMPTY via fetch): https://waterplan.state.wy.us/plan/green/techmemos/waterlaw.html and .pdf
- Great Divide Basin (endorheic): https://en.wikipedia.org/wiki/Great_Divide_Basin
- EPA aquifer exemption, Lost Creek ISR uranium (Battle Springs): https://www.epa.gov/newsreleases/epa-state-approve-uranium-mining-project-wyoming-aquifer ; https://hpj.com/2025/05/03/epa-approves-wyoming-uranium-mining-project/
- WSGS Groundwater: https://main.wsgs.wyo.gov/water/groundwater
- UW Extension B-1373.1, Demand Mgmt economic assessment: https://wyoextension.org/publications/html/B1373-1/
- Colorado River Compact / curtailment context: https://www.congress.gov/crs-product/R45546 ; https://coloradosun.com/2025/10/30/colorado-river-negotiations-experts-sticking-points/
