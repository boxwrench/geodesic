# Roadmap

Principle: **earn the engine.** No automation is built until a manual pilot proves which signals discriminate. The pilot is the three counties currently under consideration: Sweetwater WY, Fall River SD, Jones NC.

## Step 0 — State screens (WY, SD, NC) — *next up*

Run [framework/02](framework/02-state-screen.md) on the three pilot states: four variables, breach test per instrument, entitlement-path inventory. Output: one [state file](results/states/_template.md) each.

This may show the current shortlist sits in structurally disadvantaged states (the four-variable screen tentatively favors TX/UT/AZ — unverified). Either result is the funnel working: it validates the picks or redirects before county-level spend.

## Step 1 — Manual county pilot

Run Stage 1 + 2 of [framework/03](framework/03-county-screen.md) by hand on the three counties, logging time-per-signal and whether each signal moved the ranking. Output: three [county files](results/counties/_template.md), filled [scorecard](results/scorecard.md) rows, and a comparison memo on "ease of rezoning and permitting" (the originating request).

## Step 2 — Calibrate the signal inventory

Update [framework/04](framework/04-signal-inventory.md) power scores from pilot evidence. Demote signals that didn't discriminate; promote ones that did. Finalize scorecard columns.

## Step 3 — Automate, in order of cells-per-hour

Build extraction only for signals that survived calibration, strictly ordered by scorecard cells filled per hour of dev time. Expected order: Tier A dataset pulls → meeting-minutes/transcript pipeline → everything else only if justified.

## Step 4 — Widen the funnel

Run the calibrated screen across all counties in states that passed Step 0. Maintain the optionality rule ([framework/01](framework/01-heuristics.md)): at least two, ideally three, live jurisdictions at all times. Keep the buy-already-entitled track populated in parallel.

## Standing checks

- Every statutory claim remains a hypothesis until counsel-reviewed (flag in state files).
- Every scorecard cell traceable to a sourced finding.
- Periodic re-read of [framework/00](framework/00-the-question.md): is current work changing durable-yes probability per dollar?

## Log

- **2026-06-09** — Repo restructured (framework/research/results); core question recorded with breach test; two-agent durability exercise synthesized ([research note](research/2026-06-09-entitlement-durability-synthesis.md)). Originals preserved in [archive/](archive/).
