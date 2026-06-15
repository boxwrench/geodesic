# Friendliness Markers — the learning loop

**Why this exists.** The [meeting-grading protocol](../ops/protocol-meeting-grading.md) scores against a keyword/behavior list that started as *guesses*. But the friend's original insight was that you learn what a friendly board looks like **by watching meetings** — the tells aren't fully knowable in advance. This file is where that learning accumulates: every time we read a real meeting, the phrases, behaviors, and patterns that actually predict a yes (or a kill) get logged here, and the recurring ones **graduate** into the grader. Over time the grader gets sharper and the search gets better at finding friendly jurisdictions cheaply.

This is the [earn-automation principle](../framework/01-heuristics.md) applied to a signal: don't hard-code the detector, *learn it from evidence*, then encode what proved out.

## The loop

```
read meeting (protocol Stage 4)
   ↓  observe a tell not yet in the grader
log marker here (candidate, n=1, cite the meeting)
   ↓  same marker recurs in ≥3 meetings across ≥2 counties
GRADUATE → add to grader keyword/behavior list (protocol Stage 3/4) + note in framework/04
   ↓  Step 2 calibration
re-weight by whether it actually moved a ranking
```

**Graduation bar:** a candidate marker graduates when it recurs in **≥3 meetings across ≥2 counties** *and* its presence/absence tracked the eventual outcome. Single-county markers stay candidates (they may be local idiom, not transferable). Markers that recur but *don't* track outcomes get demoted to `noise` — equally valuable, because they stop us wasting grader weight on them.

**Status:** `candidate` (observed, unproven) · `graduated` (in the grader) · `noise` (recurs but doesn't discriminate). Every row cites its evidence with audit markers per the [source-annotation rule](../ops/README.md#execution-modes).

## Positive markers (predict a durable-ish yes)

| Marker (phrase / behavior / pattern) | Why it predicts friendliness | Status | Evidence (meeting cites) |
|---|---|---|---|
| Board asks applicant *logistics* questions (access, utilities, phasing) rather than *whether* to allow it | Deliberation is about how, not if — willingness is assumed | `candidate` (v0 prior, unobserved) | — |
| Staff report recommends approval and board adopts without re-litigating | Professional staff trusted; predictable process | `candidate` (**1st hit** 🔍) | Sweetwater P&Z 2024-2025 — staff-rec approvals adopted, 0 denials/28 hearings ([cache](../research/raw/sweetwater/meetings/)) |
| Prior large project approved and *referenced approvingly* as precedent | Scale-threshold headroom + path dependency | `candidate` (**1st hit** 🔍) | Sweetwater — Love's 125' sign cited to approve YESCO 125' sign (2025) |
| Agenda dominated by roads/budgets/maintenance, land-use items routine | Land use isn't politicized ([framework/03](../framework/03-county-screen.md)) | `candidate` (v0 prior) | 🔍 partial — P&Z docket low-volume/routine; BCC agenda mix unverified |
| Economic-development language initiated *by the board*, not just the applicant | Hunger for tax base/jobs | `candidate` (v0 prior) | — |
| Staff/board frames default as "free market" / property-owner rights | Pro-development default posture | `candidate` (**new, Sweetwater** 🔍) | Sweetwater Land Use staff: "as far as the Land Use Dept is concerned it's free market" (Apr 2025); chair invoked owner's rights to approve a campground over neighbor opposition |
| Postponements are *engineering/inter-agency*, not hostility, and resolve to approval | Friction is logistical, not political | `candidate` (**new, Sweetwater** 🔍) | Sweetwater — Maverik cluster postponed ~2mo then approved; continuances were engineering/agency, not opposition |
| A *competitor* speaks in support of a rival's rezoning | Pro-growth business climate, low NIMBY capture | `candidate` (**new, Sweetwater** 🔍) | Sweetwater 2025 — competitor spoke in favor of a rival's ZMA |
| Active *deregulation* events (requirement removed, discretion reduced) | Board lowering friction over time | `candidate` (**new, Sweetwater** 🔍) | Sweetwater — STR made non-discretionary; a CUP requirement removed Dec 2025 (application withdrawn as no longer needed) |

## Negative markers (predict friction or a kill)

| Marker (phrase / behavior / pattern) | Why it predicts hostility | Status | Evidence |
|---|---|---|---|
| Multiple distinct public commenters citing "character," "traffic," "property values" on one item | Organized opposition forming; social-license risk | `candidate` (v0 prior) | — |
| Board continues/tables land-use items repeatedly | Paralysis / friction proxy (Bottleneck topology) | `candidate` (v0 prior) | — |
| Members invoke a *pending* zoning rewrite or moratorium | Rules about to change under you | `candidate` (v0 prior) | — |
| Conditions piled on approvals (exactions, study demands) | High-friction Gatekeeper even when it says yes | `candidate` (v0 prior) | — |
| Any project at our scale ever referenced as a cautionary tale | Scale-threshold tripped historically | `candidate` (v0 prior) | — |

## Grade-invalidating conditions (NOT positive markers)

Some conditions make a high friendliness grade **meaningless rather than good** — flag them and report the grade only alongside the topology, never as a standalone rank. ([L15](pilot-lessons.md))

| Condition | Why it invalidates the grade | Evidence |
|---|---|---|
| **No county zoning / no discretionary land-use process** (Wild West topology) | Approval/contention/throughput all score high because *there is nothing to deny* — the grade measures the absence of a gate, not friendliness; carries ~zero signal for a large/novel project, and the county can adopt hostile zoning in response | Fall River SD = 88.5 with **no P&Z dept / no zoning ordinance** (2026-06-13) — *higher* than Sweetwater's 84.5 active board |
| Docket too thin to score (few/no land-use items) | Low-information; grade is noise | Fall River — mostly ministerial plats; scale-ceiling component unscoreable |

**Rule:** a friendliness grade is comparable only *within* a topology class. "88.5 / Wild West" is a risk flag; "84.5 / Boom County" is genuine.

## Notes for the reader-grader (protocol Stage 4)

When you read a meeting, in addition to filling the fixed schema: **flag any tell not already in the tables above** — a turn of phrase, a body's habit, a recurring objection shape. Log it as a `candidate` with the meeting cite and a one-line "why it might predict outcome." Don't pre-judge; n=1 is fine to record. The graduation bar does the filtering later. **Also check the grade-invalidating conditions above before trusting any grade.**

## Feeds

- **[ops/protocol-meeting-grading.md](../ops/protocol-meeting-grading.md):** graduated markers update the Stage 3 keyword/regex lists and the Stage 4 schema.
- **[framework/04 — Signal Inventory](../framework/04-signal-inventory.md):** graduation of a marker may raise the meeting-analysis signal's calibrated power.
- **[ops/step-2-calibration.md](../ops/step-2-calibration.md):** calibration re-weights graduated markers by whether they moved rankings.
- **[research/pilot-lessons.md](pilot-lessons.md):** cross-cutting lessons about *what kind* of markers transfer (vs. stay local) get logged there.
