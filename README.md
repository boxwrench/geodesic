# Geodesic

> A framework for finding where a new city can actually get entitled.

[![Status](https://img.shields.io/badge/status-pre--pilot-2f6fed)](./ROADMAP.md)
[![Focus](https://img.shields.io/badge/focus-entitlement%20durability-111111)](./framework/00-the-question.md)
[![Mode](https://img.shields.io/badge/mode-manual%20before%20automation-5b8c5a)](./ROADMAP.md)

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

That framing is the backbone of the repo. Full context lives in [framework/00-the-question.md](C:/GitHub/geodesic/framework/00-the-question.md).

## At a glance

| Area | What it does |
| --- | --- |
| `framework/` | The operating method: question, heuristics, state screen, county screen, signal inventory, entitlement paths |
| `results/` | Applied outputs: state files, county files, scorecard |
| `research/` | Dated research notes and raw supporting material |
| `archive/` | Original draft material preserved for reference |
| [`ROADMAP.md`](C:/GitHub/geodesic/ROADMAP.md) | Current execution plan and log |

## The method

Geodesic works as a funnel, not a thesis.

```text
State law screen
    -> county topology screen
        -> signal inventory
            -> path selection
                -> ranked jurisdictions
```

The repo is organized to match that sequence:

1. [00 - The Question](C:/GitHub/geodesic/framework/00-the-question.md)
2. [01 - Heuristics](C:/GitHub/geodesic/framework/01-heuristics.md)
3. [02 - State Screen](C:/GitHub/geodesic/framework/02-state-screen.md)
4. [03 - County Screen](C:/GitHub/geodesic/framework/03-county-screen.md)
5. [04 - Signal Inventory](C:/GitHub/geodesic/framework/04-signal-inventory.md)
6. [05 - Entitlement Paths](C:/GitHub/geodesic/framework/05-entitlement-paths.md)

## Current posture

| Category | Current state |
| --- | --- |
| Framework | Drafted and restructured |
| Stage | Pre-pilot |
| Pilot states | Wyoming, South Dakota, North Carolina |
| Pilot counties | Sweetwater County WY, Fall River County SD, Jones County NC |
| Next move | Run the state screen first, then validate the county shortlist |
| Automation | Intentionally deferred until the manual pilot proves signal value |

See the active plan in [ROADMAP.md](C:/GitHub/geodesic/ROADMAP.md).

## Reading paths

If you are here to understand the idea:

- Start with [00 - The Question](C:/GitHub/geodesic/framework/00-the-question.md)
- Then read [02 - State Screen](C:/GitHub/geodesic/framework/02-state-screen.md)
- Finish with [05 - Entitlement Paths](C:/GitHub/geodesic/framework/05-entitlement-paths.md)

If you are here to execute the workflow:

- Read the full `framework/` sequence in order
- Open the output templates in [results/states/_template.md](C:/GitHub/geodesic/results/states/_template.md) and [results/counties/_template.md](C:/GitHub/geodesic/results/counties/_template.md)
- Track progress in [results/scorecard.md](C:/GitHub/geodesic/results/scorecard.md)

If you want the research trace:

- Start with [research/2026-06-09-entitlement-durability-synthesis.md](C:/GitHub/geodesic/research/2026-06-09-entitlement-durability-synthesis.md)
- Then inspect the raw notes in [research/raw/](C:/GitHub/geodesic/research/raw)

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
