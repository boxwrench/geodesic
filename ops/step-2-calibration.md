# Game Plan — Step 2: Signal Calibration

**Goal:** an evidence-based update to [framework/04 — Signal Inventory](../framework/04-signal-inventory.md) and the final scorecard schema.
**Input:** the per-signal time logs and findings from the three pilot county files.
**Budget:** half a day. **Mode:** B throughout.

## Procedure

1. **Build the calibration table.** One row per signal: prior power score, actual time spent (range across counties), and — the key column — *did it change the county ranking or trigger a kill?* (yes / no / tiebreaker only).
2. **Re-score.** Promote signals that moved rankings cheaply; demote signals that cost time and changed nothing. A signal that killed a county outright gets top rank regardless of cost.
3. **Decide the scorecard columns.** Final schema = signals with power ≥ medium after calibration. Freeze it; update [results/scorecard.md](../results/scorecard.md).
4. **Update automation priorities.** Re-rank the Step 3 build list by `(cells filled per hour of dev time) × (calibrated power)`.
5. **Record the decision.** Calibration table and rationale go in a dated `research/` note; framework/04 is edited with the new scores.

## Acceptance criteria

Every power score in framework/04 traceable to a calibration-table row; scorecard schema frozen; Step 3 build list re-ranked; research note committed.

## Honest-outcome clause

If calibration shows the qualitative Mode D signals (planner call, EDO read) dominated everything else, the correct conclusion is *less automation, better call scripts* — the engine should shrink to match the evidence, not grow to match the plan.
