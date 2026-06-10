# 06 — Project Spec Sheet

> **Status: DRAFT — placeholder values.** Every number below is an order-of-magnitude assumption so the screens can run; none is engineering. The principal must replace these with real targets, and an engineer must validate the derived demands before they're used in Validate/Commit stages.

The framework screens for a project it must first define. "10–100x larger than anything the jurisdiction has approved" needs a denominator: without this sheet, kill criteria have no thresholds — *how far is too far from transmission, for what load?* — and the [scale-threshold heuristic](01-heuristics.md) can't be computed.

## Project envelope (placeholders)

| Parameter | Entry phase | Full build-out | Notes |
|---|---|---|---|
| Population | 2,000–5,000 | 50,000+ | Entry phase sized to slip under typical rural scale thresholds |
| Dwelling units | ~1,000–2,000 | ~20,000 | Mixed density |
| Land area | — | 15,000–50,000 ac contiguous-ish | Assembly target; CF-scale reference ≈ 60k ac |
| Land-use mix | Residential + town core | + light industrial/logistics, commercial | "Whatever industrial + residential" per the originating brief |
| Jobs on site | ~500 | 15,000+ | Drives industrial siting + labor-pool checks |

## Derived demands (order-of-magnitude; engineer must verify)

| Demand | Entry phase | Full build-out | Basis (assumption) |
|---|---|---|---|
| Water | ~0.5–0.8 MGD (~600–900 ac-ft/yr) | ~6–9 MGD (~7,000–10,000 ac-ft/yr) | ~120–150 gpcd municipal incl. light industrial |
| Wastewater | comparable to water | comparable | Treatment plant from day one; no septic at scale |
| Electric peak load | ~5–10 MW | ~100–200 MW | ~2–4 kW/capita incl. industrial; heavy industry would change this completely |
| Transport | 2-lane state highway access | Interstate/4-lane within ~30 min | Plus freight rail desirable for industrial |

## Screening thresholds derived from the envelope (provisional)

| Threshold | Value | Used in |
|---|---|---|
| Max distance to ≥115 kV transmission | ~10–15 mi (entry can interconnect lower) | Stage 1 |
| Max economic water-conveyance distance | ~20–30 mi | Stages 1/3 |
| Min single-owner or low-fragmentation block | ≥5,000 ac | Stage 1 fragmentation check |
| Scale-threshold ratio (entry pop ÷ county pop) | flag if > 0.5; kill-review if > 1.0 | Stage 2 |
| Labor pool | ≥10,000 construction-relevant workers within 60 min | Stage 3 |

## Open questions for the principal

1. Is full build-out ~50k people, or CF-scale (~400k)? The answer changes which counties are even plausible and how hard the scale-threshold bites.
2. Industrial anchor type? Data centers, advanced manufacturing, and logistics have wildly different power/water/rail profiles — the derived-demand table is mix-dependent.
3. Phasing horizon (10 yr? 40 yr?) — drives water-rights sizing and DA term length.
4. Capital available for offsite infrastructure — sets the L+I ceiling in [heuristic 2](01-heuristics.md).

---

Previous: [05 — Entitlement Paths](05-entitlement-paths.md) · Next: [07 — Federal Layer](07-federal-layer.md)
