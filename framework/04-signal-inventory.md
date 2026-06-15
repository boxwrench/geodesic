# 04 — Signal Inventory

Every signal is scored on two axes — **discriminating power** (does it actually separate counties?) and **acquisition cost** — and tagged with its **level** (state / county / site). Only cheap-and-discriminating signals earn automation.

> **v1.1 — calibrated against the 3-county pilot (2026-06-13).** Power scores now carry both the original **prior** and a **calibrated** value, re-scored from pilot evidence per [Step 2 calibration](../research/2026-06-13-step2-calibration.md). The pilot reached **Stage 1 + state screen + Stage 2 (meeting-grade)**; signals not exercised keep their prior and are marked *(untested)*. Every calibrated score traces to a calibration-table row. Governing metric unchanged: *does observing it change the estimate of durable-yes probability per dollar spent?*

## Tier A — Programmatic (structured public datasets, no scraping)

| Signal | Level | Source | Power (prior) | Power (calibrated v1.1) |
|---|---|---|---|---|
| **Scale-threshold ratio** (entry & build-out pop ÷ county pop) | County | Census (1 lookup) | *(was implicit in [heuristic 3](01-heuristics.md))* | **Very high — compute FIRST.** Cheapest signal, highest discrimination: the would-kill for Fall River (~7×) and Jones (~5.5×); separated Sweetwater. [L9](../research/pilot-lessons.md) |
| Landownership fragmentation / **federal-interspersion** (assembly) | Site | Parcel (Regrid/county GIS) + BLM/USFS surface-mgmt | **Very high** | **Very high (West).** Confirmed binding in both Western counties — UP checkerboard (Sweetwater) + grassland interspersion (Fall River); mechanism varies. [L8/L8b](../research/pilot-lessons.md) |
| Water basin appropriation status | State/county | State engineer / water DBs (WY e-Permit, SD DANR) + capacity-use/closed-basin layers | High (West only) | **Very high.** Binds in the West *and* in capped/declining Southeast aquifers (NC CCPCUA, SD Madison) — drop the blanket "Southeast water rarely binding." Screen the **basin a parcel sits in**, not the county. [L5](../research/pilot-lessons.md) |
| Wetlands extent (§404 proxy) | Site | USFWS NWI | High (Southeast) | **Very high (Southeast).** The Jones would-kill (Croatan ~75% wetlands); performed exactly as the region-conditional prior predicted. [L10](../research/pilot-lessons.md) |
| Tribal land / military overlays | Site | BIA, HIFLD | High (binary kill) | Medium (keep as cheap binary screen) — no overlay kill fired in-pilot; don't over-rank on null evidence |
| High-voltage transmission proximity | Site | HIFLD | High | **Medium (demoted).** Never the binding constraint in-pilot — an *attractor* note (Sweetwater strong, others adequate), not a discriminator. Re-elevate only for a transmission-starved candidate |
| Municipal proximity / ETJ exposure | County | Census TIGER + state ETJ statutes | High (Southeast) | High (ETJ states) / Low elsewhere — region-conditional; NC GS 160D-202 is real, but in-pilot Jones towns exercised *zero* ETJ |
| Floodplain extent at candidate sites | Site | FEMA NFHL | Medium | Medium *(untested directly)* |
| Protected/conserved land | Site | PAD-US, NCED | Medium | Medium-High — protected-land density was a real siting constraint (Jones forests, Sweetwater ACEC); see veto-holder note below |
| Population, growth rate, tax-base concentration | County | Census, BEA, county CAFRs | Medium | Medium — tax-base concentration informed the salvation-vs-threat read (all 3 single-industry); useful context, not a gate |
| **Meeting-record host tier** (Granicus/Legistar ▸ YouTube ▸ PDF ▸ records-only) | County | County site / portal probe | *(new)* | Low-Medium (capacity proxy, [L2](../research/pilot-lessons.md)) — cheap to observe at discovery; predicts grading cost |

## Tier B — Semi-automatic (LLM-assisted, targeted)

| Signal | Level | Source | Power (prior) | Power (calibrated v1.1) |
|---|---|---|---|---|
| **Meeting minutes/transcript analysis (friendliness grade)** | County | Granicus/YouTube/county sites + LLM | **Very high** | **High — but ONLY paired with topology ([L15](../research/pilot-lessons.md)).** Meaningless standalone: Fall River 88.5 + Jones 86 scored high purely from **no zoning** (absence of a gate) vs. Sweetwater's genuine 84.5. Comparable only *within* a topology class; "high grade + no zoning" is a **risk flag**. Detector learned via the [friendliness-marker loop](../research/friendliness-markers.md); agent-runnable (acquire + first-pass) per [L12/L14](../research/pilot-lessons.md). |
| Topology classification (Boom / Wild West / Gatekeeper / Bottleneck) | County | Zoning-existence + minutes | *(was a [03](03-county-screen.md) step)* | **High — the gate the grade rides on.** "No zoning / Wild West" must be detected first or the grade misleads. |
| **Veto-holder / opposition identification** | County | News, court, BLM/RMP, tribal, land-trust | *(new — [L13](../research/pilot-lessons.md))* | **High (esp. federal-heavy West).** The real veto is often *not* the local board: BLM RMP/ACEC + sage-grouse (Sweetwater), mature tribal/enviro litigation (Fall River), conservation land trusts (Jones). A friendly board can sit behind a federal/transactional lock. |
| Rezoning approval rate + decision time | County | Extracted from minutes | Very high | High *(only where a discretionary process exists — N/A in no-zoning counties)* |
| Largest project approved in 5 years | County | Minutes + local news | High | High *(also the scale-ceiling input)* |
| Standing opposition orgs with win records | County | News + court search | High | High — Fall River's Black Hills/tribal apparatus is the strongest opposition in the pilot, *invisible to the meeting-grade* |
| Referendum/election history on land use | County | Election records | High | High — SD's *passed-then-preempted* uranium referendum shows even a no-zoning county can wield the ballot |
| Zoning code existence, host platform, PUD procedure length | County | Municode / county sites | Medium | Medium — but **zoning *existence* is now a topology-gate input**, higher leverage than PUD page-count |
| Litigation scrape | County | Court dockets, news search | Medium | Medium-High (West) — surfaced the federal/tribal veto in 2 of 3 counties |
| GIS endpoint existence (ArcGIS REST) | County | `/arcgis/rest/services` probes | Low (capacity proxy) | Low *(untested)* |

## Tier C — Human protocol (scripted, not automated)

| Signal | Level | Protocol | Power (prior) |
|---|---|---|---|
| Planner call | County | Scripted 30-min call; key question: "largest subdivision approved in 5 years and how long did review take?" | Very high |
| EDO outreach | County | Email template + call; classify survival-hungry vs. preservationist | High |
| Local land-use counsel consult | State | Confirm state-screen hypotheses ([02](02-state-screen.md)) | Very high (validation) |
| Landowner conversations | Site | Late-stage only (Commit) | High |

## State-screen signals (one-time per state, manual)

The [four variables + breach test](02-state-screen.md) are statute-reading exercises — high power, low cost, done once per state, never automated.

## Automation policy

Build extraction code strictly in order of **(scorecard cells filled per hour of dev time) × (calibrated power)**. **Re-ranked from pilot evidence (v1.1):**

1. **Scale-threshold ratio** — one Census call, highest-power cell per county. Highest ROI, near-trivial. *Build first.*
2. **Water basin + capacity-use-area / closed-basin flags** — high power, moderate effort.
3. **Ownership / federal-interspersion** (BLM/USFS surface-mgmt + checkerboard + parcel) — high power (West), higher effort.
4. **Wetlands/§404 (NWI) + floodplain** — programmatic, high power (Southeast).
5. **Browser-capable fetch step for gated gov portals** — *the recurring blocker*: the pilot's gaps clustered hard on JS-rendered/login-gated portals (SEO e-Permit, county GIS viewers, Granicus, Google-Drive/Vimeo minutes, IPaC-by-AOI, PACER). A headless-browser fetch tool unlocks more verified cells than any single dataset puller. [L14](../research/pilot-lessons.md)
6. *(Deferred)* **Meeting-minutes/transcript pipeline** — still the highest-value *qualitative* target, but it only ranks counties *within a topology class* ([L15](../research/pilot-lessons.md)) and the pilot showed the cheap structural front did the actual discriminating. Build after a topology gate is in place. Zoning-PDF parsing for setbacks stays *deprioritized*: setbacks don't kill counties.

**Honest-outcome note:** the pilot did *not* show qualitative Mode-D signals dominating — the cheap structural/statutory signals did. The engine grows to match that evidence, not the original plan.

---

## Changelog

- **v1.0** (2026-06-09) — initial signal inventory; all scores priors, frozen pending pilot.
- **v1.1** (2026-06-13) — calibrated against the 3-county pilot (WY/Sweetwater, SD/Fall River, NC/Jones). Added `Power (calibrated)` column. **New signals:** scale-threshold ratio (Tier A, top), meeting-record host tier (Tier A), topology classification + veto-holder identification (Tier B). **Re-scores:** transmission High→Medium; water refined (West + capped/declining Southeast aquifers); meeting-grade gated by topology; protected-land Medium→Medium-High. Untested Stage-2/Mode-D signals retain priors, flagged. Full rationale + calibration table: [research/2026-06-13-step2-calibration.md](../research/2026-06-13-step2-calibration.md). *Stage-3/4 signals remain uncalibrated until a county reaches those stages.*

Next: [05 — Entitlement Paths](05-entitlement-paths.md)
