<div align="center">

<img src="assets/banner.svg" alt="Geodesic — an elimination engine for entitlement feasibility" width="880"/>

### A framework for finding where a new city can actually get entitled.

[![Status](https://img.shields.io/badge/status-pre--pilot-2f6fed)](./ROADMAP.md)
[![Focus](https://img.shields.io/badge/focus-entitlement%20durability-111111)](./framework/00-the-question.md)
[![Mode](https://img.shields.io/badge/mode-manual%20before%20automation-5b8c5a)](./ROADMAP.md)
[![Framework](https://img.shields.io/badge/framework-v1.1%20calibrated-8a63d2)](./framework/04-signal-inventory.md)
[![Pilot](https://img.shields.io/badge/pilot-WY%20·%20SD%20·%20NC-d97706)](./results/scorecard.md)

</div>

Geodesic is a research repo for one question:

> **Where can a master-planned, mixed-use city get a legally durable yes before the project has spent real money?**

This is not a "where is land cheap?" project and not a generic rezoning guide. It is an elimination engine for killing weak jurisdictions early, using state law, county structure, and observable political signals.

Nothing here is legal advice. Every statutory claim stays provisional until local land-use counsel reviews it.

## Why this exists

Most site-selection work starts too late and falls in love with acreage too early.

Geodesic starts one layer up:

- Can this state even create a durable entitlement instrument at this scale?
- Can a county say yes without handing veto power to another body?
- If politics turn hostile later, is the remedy an injunction or just damages?

The core durability standard is the **breach test**:

> If a later actor revokes the instrument, can the project force performance, or only get paid after the damage is done?

That framing is the backbone of the repo. Full context lives in [framework/00-the-question.md](framework/00-the-question.md).

## At a glance

| Area | What it does |
| --- | --- |
| `framework/` | The operating method: question, heuristics, state screen, county screen, signal inventory, entitlement paths |
| `ops/` | Hand-off-ready game plans per step: tasks tagged by execution mode (automated / AI-assisted / human / phone), data-source registry, tooling build triggers |
| `results/` | Applied outputs: state files, county files, scorecard |
| `research/` | Dated research notes and raw supporting material |
| `archive/` | Original draft material preserved for reference |
| [`ROADMAP.md`](ROADMAP.md) | Current execution plan and log |

## The method

Geodesic works as a funnel, not a thesis. Each stage exists to kill candidates cheaply before the next, more expensive stage begins.

```mermaid
flowchart LR
    A["🏛️ State law screen<br/><small>vesting · referendum reach<br/>mini-NEPA · boundaries</small>"]
    B["🗺️ County screen<br/><small>topology · capacity<br/>friendliness grade</small>"]
    C["📊 Signal inventory<br/><small>power × cost<br/>calibrated by pilot</small>"]
    D["⚖️ Path selection<br/><small>entitle · annex<br/>incorporate · district</small>"]
    E["🎯 Ranked<br/>jurisdictions"]

    A -->|"survivors"| B -->|"survivors"| C --> D --> E

    A -.->|"kill"| K1[" ✕ "]
    B -.->|"kill"| K2[" ✕ "]
    D -.->|"kill"| K3[" ✕ "]

    style A fill:#16324f,stroke:#5b8c5a,color:#f3f6fa
    style B fill:#16324f,stroke:#5b8c5a,color:#f3f6fa
    style C fill:#16324f,stroke:#5b8c5a,color:#f3f6fa
    style D fill:#16324f,stroke:#5b8c5a,color:#f3f6fa
    style E fill:#5b8c5a,stroke:#16324f,color:#f3f6fa
    style K1 fill:none,stroke:#c4677a,color:#c4677a
    style K2 fill:none,stroke:#c4677a,color:#c4677a
    style K3 fill:none,stroke:#c4677a,color:#c4677a
```

The repo is organized to match that sequence:

1. [00 - The Question](framework/00-the-question.md) — what we're actually asking, and the breach test
2. [01 - Heuristics](framework/01-heuristics.md) — kill-rate ordering, infrastructure multiplier, scale thresholds
3. [02 - State Screen](framework/02-state-screen.md) — four statute-readable variables that kill entire states for $0
4. [03 - County Screen](framework/03-county-screen.md) — the phase-gate funnel and county topology
5. [04 - Signal Inventory](framework/04-signal-inventory.md) — every signal scored on power × cost
6. [05 - Entitlement Paths](framework/05-entitlement-paths.md) — the path is a choice variable, not an input
7. [06 - Project Spec](framework/06-project-spec.md) — the envelope being screened for (draft; placeholder numbers)
8. [07 - Federal Layer](framework/07-federal-layer.md) — §404, ESA, NEPA handles: minimize federal hooks

## Current posture

| Category | Current state |
| --- | --- |
| Framework | **v1.1 — signal inventory ([04](framework/04-signal-inventory.md)) calibrated against the 3-county pilot**; docs 00–03, 05–07 stable. Scale-threshold promoted, transmission demoted, friendliness-grade topology-gated |
| Stage | Pre-pilot |
| Pilot states | Wyoming, South Dakota, North Carolina |
| Pilot counties | Sweetwater County WY, Fall River County SD, Jones County NC |
| Next move | Run the state screen first, then validate the county shortlist |
| Automation | Intentionally deferred until the manual pilot proves signal value |

See the active plan in [ROADMAP.md](ROADMAP.md).

## Reading paths

If you are here to understand the idea:

- Start with [00 - The Question](framework/00-the-question.md)
- Then read [02 - State Screen](framework/02-state-screen.md)
- Finish with [05 - Entitlement Paths](framework/05-entitlement-paths.md)

If you are here to execute the workflow:

- Read the full `framework/` sequence in order
- Open the output templates in [results/states/_template.md](results/states/_template.md) and [results/counties/_template.md](results/counties/_template.md)
- Track progress in [results/scorecard.md](results/scorecard.md)

If you want the research trace:

- Start with [research/2026-06-09-entitlement-durability-synthesis.md](research/2026-06-09-entitlement-durability-synthesis.md)
- Then inspect the raw notes in [research/raw/](research/raw)

## Design principles

- **Kill cheap.** Use the lowest-cost signal that can eliminate a jurisdiction.
- **State law first.** Many hard constraints sit above the county level.
- **Durability over friendliness.** A warm meeting is not a durable instrument.
- **Optionality always.** Keep multiple live jurisdictions in play.
- **Earn automation.** Do manual work first; code only what proves useful.

## What this repo is not

- Not a legal opinion
- Not a policy advocacy project
- Not a land acquisition playbook
- Not a general-purpose urbanism wiki

It is a decision system for reducing entitlement risk before capital gets trapped.

## Status note

This repo was restructured on **2026-06-09** into `framework/`, `results/`, `research/`, and `archive/`. The current version is meant to be readable, inspectable, and easy to extend as the first pilot runs.
