# 04 — Signal Inventory

Every signal is scored on two axes — **discriminating power** (does it actually separate counties?) and **acquisition cost** — and tagged with its **level** (state / county / site). Only cheap-and-discriminating signals earn automation. Power scores below are priors; the [pilot](../ROADMAP.md) calibrates them empirically.

The governing metric for any signal: *does observing it change the estimate of durable-yes probability per dollar spent?*

## Tier A — Programmatic (structured public datasets, no scraping)

| Signal | Level | Source | Power (prior) |
|---|---|---|---|
| Water basin appropriation status | State/county | State engineer / water-rights databases (WY e-Permit, SD DANR, NV DWR, UT DWRi) | High (West only) |
| Floodplain extent at candidate sites | Site | FEMA NFHL | Medium |
| Wetlands extent | Site | USFWS NWI | High (Southeast) |
| High-voltage transmission proximity | Site | HIFLD | High |
| Protected/conserved land | Site | PAD-US, NCED | Medium |
| Tribal land / military overlays | Site | BIA, HIFLD | High (binary kill) |
| Landownership fragmentation (parcels needed for assembly) | Site | Parcel data (Regrid or county GIS) | **Very high** — single-owner ranch vs. 200 smallholders may be the single biggest feasibility variable |
| Population, growth rate, tax-base concentration | County | Census, BEA, county CAFRs | Medium |
| Municipal proximity / ETJ exposure | County | Census TIGER + state ETJ statutes | High (Southeast) |

## Tier B — Semi-automatic (LLM-assisted, targeted)

| Signal | Level | Source | Power (prior) |
|---|---|---|---|
| **Meeting minutes/transcript analysis** | County | Granicus/YouTube/county sites + LLM summarization | **Very high** — this is the proven vibes heuristic, automated. The highest-value automation target in the repo. |
| Rezoning approval rate + decision time | County | Extracted from minutes (above) | Very high |
| Largest project approved in 5 years | County | Minutes + local news | High |
| Zoning code existence, host platform, PUD procedure length | County | Municode / Code Publishing / county sites | Medium |
| GIS endpoint existence (ArcGIS REST) | County | `/arcgis/rest/services` probes | Low (capacity proxy) |
| Litigation scrape | County | Court dockets, news search | Medium |
| Referendum/election history on land use | County | Election records | High |
| Standing opposition orgs with win records | County | News + court search | High |

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

Build extraction code strictly in order of **(scorecard cells filled per hour of dev time)**. Current implied priority: (1) Tier A dataset pulls, (2) minutes/transcript pipeline, (3) everything else only if the pilot proves it discriminates. Zoning-PDF parsing for setbacks/dimensional standards is explicitly *deprioritized*: setbacks don't kill counties.

---

Next: [05 — Entitlement Paths](05-entitlement-paths.md)
