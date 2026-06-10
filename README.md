# Geodesix

**A systematic framework for finding where a new city can legally be built.**

Inspired by projects like [California Forever](https://californiaforever.com/), this repo documents — openly, as a teaching resource — a method for filtering U.S. states and rural counties to find the path of least resistance for entitling a master-planned, mixed-use city from scratch. It is an *elimination engine*: the goal at every stage is to kill unviable options cheaply, before falling in love with cheap land.

> ⚠️ Nothing here is legal advice. Every statutory claim is a hypothesis for local land-use counsel until marked counsel-reviewed.

## The question

> **Where can we obtain entitlements for a project 10–100x larger than anything the jurisdiction has ever approved, and have those entitlements be *durable* — binding enough to survive political turnover, organized opposition, and a ballot initiative — before we've spent serious money?**

Screening form: *what is the cheapest observable evidence that a jurisdiction can grant — and is legally able to keep — a yes of this magnitude?*

The acid test for durability is the **breach test**: if a later hostile actor revokes your instrument, is the remedy an injunction — or only money? Damages-only durability means you can be removed; you just get paid. Full derivation in [framework/00](framework/00-the-question.md).

## How to read this repo

The **framework** is the method; **results** are the method applied; **research** is the traceable record of how the method evolved.

1. **[framework/00 — The Question](framework/00-the-question.md)** — what we're actually asking, and why "where is rezoning easy?" is the wrong question
2. **[framework/01 — Heuristics](framework/01-heuristics.md)** — kill-rate ordering, the infrastructure multiplier, scale thresholds, optionality
3. **[framework/02 — State Screen](framework/02-state-screen.md)** — four statute-readable variables that kill or rescue entire states for $0
4. **[framework/03 — County Screen](framework/03-county-screen.md)** — the phase-gate funnel, county topology, vibes-to-data translation
5. **[framework/04 — Signal Inventory](framework/04-signal-inventory.md)** — every signal scored on discriminating power × acquisition cost
6. **[framework/05 — Entitlement Paths](framework/05-entitlement-paths.md)** — county entitlement vs. annexation vs. incorporation vs. special district: the path is a choice variable

## Repo structure

```
framework/   The method (docs 00–05, read in order)
results/     The method applied: states/, counties/, scorecard.md
research/    Dated research notes + raw source material
archive/     Original v0 documents, preserved
ROADMAP.md   Current plan and decision log
```

## Status

| | |
|---|---|
| Framework | v1 drafted, pre-pilot |
| Pilot candidates | Sweetwater Co. WY · Fall River Co. SD · Jones Co. NC |
| Next step | State screens for WY, SD, NC ([ROADMAP](ROADMAP.md)) |
| Automation | None yet — deliberately. The pilot calibrates which signals deserve code. |

## Key ideas, in one paragraph

States matter more than counties: vesting timing, referendum reach, mini-NEPA litigation vetoes, and boundary gatekeepers are set by state law and screenable from statute before any county work. Counties are then run through a kill-ordered funnel where qualitative "vibes" (planning meetings, EDO calls) are translated into structural facts. Every signal is judged by one metric — does it change the estimate of durable-yes probability per dollar spent — and nothing gets automated until a manual pilot proves it discriminates.
