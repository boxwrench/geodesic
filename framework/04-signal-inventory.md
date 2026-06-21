# 04 — Signal Inventory

Every signal is scored on two axes — **discriminating power** (does it actually separate counties?) and **acquisition cost** — and tagged with its **level** (state / county / site). Only cheap-and-discriminating signals earn automation.

> **v1.3 — Sweetwater Depth-1 topology addendum (2026-06-21).** Power scores carry both the original **prior** and a **calibrated** value, re-scored from pilot and Depth-1 evidence per [Step 2 calibration](../research/2026-06-13-step2-calibration.md) plus [L21](../research/pilot-lessons.md). v1.3 adds the overlay topology / contiguous-component test: buildable acreage is not enough unless the surviving geometry works as a site. Governing metric unchanged: *does observing it change the estimate of durable-yes probability per dollar spent?*

## Tier A — Programmatic (structured public datasets, no scraping)

| Signal | Level | Source | Power (prior) | Power (calibrated v1.3) |
|---|---|---|---|---|
| **Scale-threshold ratio** (entry & build-out pop ÷ county pop) | County | Census (1 lookup) | *(was implicit in [heuristic 3](01-heuristics.md))* | **Very high — compute FIRST.** Cheapest signal, highest discrimination: the would-kill for Fall River (~7×) and Jones (~5.5×); separated Sweetwater. [L9](../research/pilot-lessons.md) |
| Landownership fragmentation, **large-tract inventory**, and **federal-interspersion** (assembly) | Site | Parcel (Regrid/county GIS), assessor records, ranch/farm listings, broker pages, BLM/USFS surface-mgmt | **Very high** | **Very high (West).** Confirmed binding in both Western counties — UP checkerboard (Sweetwater) + grassland interspersion (Fall River); mechanism varies. Broad acreage-availability claims require a stated search method before implying "no large sites." [L8/L8b](../research/pilot-lessons.md) |
| Water basin appropriation status and **new-vs-acquirable rights path** | State/county | State engineer / water DBs (WY e-Permit, SD DANR) + capacity-use/closed-basin layers + land/right acquisition records | High (West only) | **Very high.** Binds in the West *and* in capped/declining Southeast aquifers (NC CCPCUA, SD Madison). Screen the **basin a parcel sits in**, distinguish new rights from acquirable/transferrable existing rights, and carry the path to the Validate water trichotomy. [L5/L19](../research/pilot-lessons.md) |
| Wetlands extent and flood exposure | Site | USFWS NWI + FEMA NFHL + hydric soils where available | High (Southeast) / Medium (flood) | **Very high for the current attempt; High generally.** NWI caught Jones early and the principal's tolerance for flood/wetland uncertainty is low. Use NWI/FEMA as early buildable-acreage screens, then date-check §404/state-backfill law at Validate. [L10/L17](../research/pilot-lessons.md) |
| **Overlay topology / contiguous-component test** | Site | Candidate parcel geometry + constraint overlays: FEMA/NWI/NHD, hydric soils, PAD-US, BLM/USFS surface, habitat cores/corridors, local avoid zones | *(new — [L21](../research/pilot-lessons.md))* | **Very high at site/Validate.** Prevents aggregate-acreage false passes: Sweetwater GR-1 had ~7,610 non-core acres in aggregate but only ~640 acres in the largest component. Report aggregate surviving acreage, largest component, component count, and buffer sensitivity; classify as fee-contiguous block vs. controlled-section package vs. aggregate-only false pass. |
| Tribal land / military overlays | Site | BIA, HIFLD | High (binary kill) | Medium (keep as cheap binary screen) — no overlay kill fired in-pilot; don't over-rank on null evidence |
| High-voltage transmission proximity | Site | HIFLD | High | **Medium (demoted).** Never the binding constraint in-pilot — an *attractor* note (Sweetwater strong, others adequate), not a discriminator. Re-elevate only for a transmission-starved candidate |
| Municipal proximity / ETJ exposure | County | Census TIGER + state ETJ statutes | High (Southeast) | High (ETJ states) / Low elsewhere — region-conditional; NC GS 160D-202 is real, but in-pilot Jones towns exercised *zero* ETJ |
| Current-jurisdiction federal/wetlands legal posture | Site/state | USACE/WOTUS rule, controlling cases, state backfill statutes | *(new)* | **High where recent legal change is plausible.** Jones' §404 kill was partially rescued by _Sackett_ + NC SB 582; a framework-prior kill must be date-checked before it becomes a final kill. [L17](../research/pilot-lessons.md) |
| Protected/conserved land | Site | PAD-US, NCED | Medium | Medium-High — protected-land density was a real siting constraint (Jones forests, Sweetwater ACEC); see veto-holder note below |
| Population, growth rate, tax-base concentration | County | Census, BEA, county CAFRs | Medium | Medium — tax-base concentration informed the salvation-vs-threat read (all 3 single-industry); useful context, not a gate |
| **Meeting-record infrastructure** (4 dims: format/tone-fidelity · availability/access · coverage/diversity · capacity read) | County | County site / portal probe → [meeting-records registry](../results/meeting-records.md) | *(new)* | **Medium-High as a capacity/confidence signal.** Availability/format/quality vary enormously county-to-county (pilot: 3 counties, 3 infrastructures, **0 verbatim transcripts**), predict grading cost *and tone-validity*, and map where the browser-fetch tool is needed. Track all four dims at discovery, not just the host label. [L20](../research/pilot-lessons.md) |

## Tier B — Semi-automatic (LLM-assisted, targeted)

| Signal | Level | Source | Power (prior) | Power (calibrated v1.3) |
|---|---|---|---|---|
| **Meeting minutes/transcript analysis (friendliness grade)** | County | Granicus/YouTube/county sites + LLM | **Very high** | **High — but ONLY paired with topology ([L15](../research/pilot-lessons.md)).** Meaningless standalone: Fall River 88.5 + Jones 86 scored high purely from **no zoning** (absence of a gate) vs. Sweetwater's genuine 84.5. Comparable only *within* a topology class; "high grade + no zoning" is a **risk flag**. Detector learned via the [friendliness-marker loop](../research/friendliness-markers.md); agent-runnable (acquire + first-pass) per [L12/L14](../research/pilot-lessons.md). |
| Topology classification (Boom / Wild West / Gatekeeper / Bottleneck) | County | Zoning-existence + minutes | *(was a [03](03-county-screen.md) step)* | **Very high gate signal.** "No zoning / Wild West" must be detected first or the grade misleads; it explained why Fall River/Jones looked friendlier than Sweetwater despite being weaker candidates. [L15](../research/pilot-lessons.md) |
| **Firm-water-at-build-out trichotomy** | Site/Validate | Water-rights records, utility/authority plans, supply studies, agency precedent | *(new — [L19](../research/pilot-lessons.md))* | **Very high / terminal Validate signal.** Grade as: firm source exists and durability is the work; firm source exists at major capital cost; no firm source at build-out. Fall River's no-source finding was the cleanest confirmed kill in the pilot. |
| **Absorption capacity** (labor/housing, firm power/water, scale-triggered thresholds) | Regional/Validate | BLS/Census/BEA, housing vacancy, utility tariffs/study rules, water source sizing | *(new — [L16](../research/pilot-lessons.md))* | **Very high at Validate.** Entitlement-feasible is not buildable. All three verdicts became scale/absorption-dependent once labor, housing, firm water, and power cliffs were checked. |
| Power-at-scale threshold/headroom | Site/Validate | Utility large-load process, PSC/tariffs, system-impact study requirements | High for power-dependent projects | **High at Validate; Medium at Stage 1.** Transmission proximity alone did not discriminate, but Sweetwater's 25 MW and 200 MW process cliffs did. |
| **Veto-holder / opposition identification** | County | News, court, BLM/RMP, tribal, land-trust | *(new — [L13](../research/pilot-lessons.md))* | **High (esp. federal-heavy West).** The real veto is often *not* the local board: BLM RMP/ACEC + sage-grouse (Sweetwater), mature tribal/enviro litigation (Fall River), conservation land trusts (Jones). A friendly board can sit behind a federal/transactional lock. |
| Rezoning approval rate + decision time | County | Extracted from minutes | Very high | High *(only where a discretionary process exists — N/A in no-zoning counties)* |
| Largest project approved in 5 years | County | Minutes + local news | High | High *(also the scale-ceiling input)* |
| Planning/zoning commission posture | County | Minutes, agendas, vote records, membership, staff reports | Very high | High — use as part of the topology and meeting-grade read; ground "friendly county" claims in observed votes, staff recommendations, and recurring public-comment actors rather than vibes |
| Standing opposition orgs with win records | County | News + court search | High | High — Fall River's Black Hills/tribal apparatus is the strongest opposition in the pilot, *invisible to the meeting-grade* |
| Referendum/election history on land use | County | Election records | High | High — SD's *passed-then-preempted* uranium referendum shows even a no-zoning county can wield the ballot |
| Zoning code existence, host platform, PUD procedure length | County | Municode / county sites | Medium | Medium — but **zoning *existence* is now a topology-gate input**, higher leverage than PUD page-count |
| Litigation scrape | County | Court dockets, news search | Medium | Medium-High (West) — surfaced the federal/tribal veto in 2 of 3 counties |
| GIS endpoint existence (ArcGIS REST) | County | `/arcgis/rest/services` probes | Low (capacity proxy) | Low *(untested)* |

## Tier C — Human protocol (scripted, not automated)

| Signal | Level | Protocol | Power (prior) |
|---|---|---|---|
| Planner call | County | Scripted 30-min call; key question: "largest subdivision approved in 5 years and how long did review take?" | Very high *(still untested in pilot; keep for finalists)* |
| EDO outreach | County | Email template + call; classify survival-hungry vs. preservationist | High |
| Local land-use counsel consult | State | Confirm state-screen hypotheses ([02](02-state-screen.md)) | Very high (validation) |
| Landowner conversations | Site | Late-stage only (Commit) | High |

## State-screen signals (one-time per state, manual)

The [four variables + breach test](02-state-screen.md) are statute-reading exercises — high power, low cost, done once per state, never automated.

## Automation policy

Build extraction code strictly in order of **(scorecard cells filled per hour of dev time) × (calibrated power)**. **Re-ranked from pilot and Depth-1 evidence (v1.3):**

1. **Scale-threshold ratio** — one Census call, highest-power cell per county. Highest ROI, near-trivial. *Build first.*
2. **Water basin + new-vs-acquirable rights + firm-source trichotomy** — high power; combines early basin flags with Validate-stage source existence.
3. **Flood/wetlands/physical overlay topology screen** — FEMA NFHL + NWI + NHD/hydric soils where available; compute aggregate surviving acreage, largest contiguous component, component count, and buffer sensitivity.
4. **Ownership / federal-interspersion / large-tract inventory** (BLM/USFS surface-mgmt + checkerboard + parcel + listing/broker search method) — high power (West), higher effort; feed its parcels into the topology test rather than treating acreage totals alone as dispositive.
5. **Power threshold/headroom flags** — proximity is medium; process cliffs and study requirements are the useful cells.
6. **Browser-capable fetch step for gated gov portals** — *the recurring blocker*: SEO e-Permit, county GIS viewers, Granicus, Google-Drive/Vimeo minutes, IPaC-by-AOI, PACER. A headless-browser fetch tool unlocks more verified cells than any single dataset puller. [L14/L20](../research/pilot-lessons.md)
7. *(Deferred)* **Meeting-minutes/transcript pipeline** — still high-value qualitative work, but it only ranks counties *within a topology class* and within a meeting-record quality tier. Build after topology and record-infrastructure capture are in place. Zoning-PDF parsing for setbacks stays *deprioritized*: setbacks don't kill counties.

**Honest-outcome note:** the pilot did *not* show qualitative Mode-D signals dominating. It showed the cheap structural/statutory front and Stage-3 absorption/water reality doing the discriminating. The engine grows to match that evidence, not the original plan.

## Output provenance

Every generated state or county file should include a short provenance note: autonomous steps, sources used, principal/team assumptions, inferences, and claims requiring counsel, engineering, or human confirmation.

---

## Changelog

- **v1.0** (2026-06-09) — initial signal inventory; all scores priors, frozen pending pilot.
- **v1.1** (2026-06-13) — calibrated against the 3-county pilot (WY/Sweetwater, SD/Fall River, NC/Jones). Added `Power (calibrated)` column. **New signals:** scale-threshold ratio (Tier A, top), meeting-record host tier (Tier A), topology classification + veto-holder identification (Tier B). **Re-scores:** transmission High→Medium; water refined (West + capped/declining Southeast aquifers); meeting-grade gated by topology; protected-land Medium→Medium-High. Stage-2/Mode-D signals retained priors where untested; Validate-stage signals were deferred to the next pass. Full rationale + calibration table: [research/2026-06-13-step2-calibration.md](../research/2026-06-13-step2-calibration.md).
- **v1.2** (2026-06-20) — second pass after all three counties reached Stage 3 and Sweetwater reached Stage 4. **New/raised signals:** firm-water-at-build-out trichotomy, absorption capacity, current-jurisdiction date-check, power-at-scale threshold/headroom, flood/wetlands buildable-acreage screen, meeting-record infrastructure. **Schema change:** add `Scale` to the scorecard. Mode-D planner/EDO calls remain untested and reserved for finalists.
- **v1.3** (2026-06-21) — Sweetwater Depth-1 layout-gate addendum. **New/raised signal:** overlay topology / contiguous-component test. Buildable acreage screens now report aggregate surviving acreage, largest contiguous component, component count, and buffer sensitivity so a candidate cannot pass on aggregate acres when no workable site geometry exists.

Next: [05 — Entitlement Paths](05-entitlement-paths.md)
