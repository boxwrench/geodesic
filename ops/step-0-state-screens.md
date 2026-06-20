# Game Plan — Step 0: State Screens

**Goal:** one completed [state file](../results/states/_template.md) each for WY, SD, NC, answering the [four variables + breach test](../framework/02-state-screen.md) with verified citations.
**Who can run this:** anyone careful with legal text + AI assistance. No legal training required to *draft*; counsel review converts draft → reviewed.
**Budget:** ~4–6 hours per state (Tasks 1–5), plus counsel review.
**Acceptance criteria:** every claim in the state file cites a specific statute section or case, verified by a human against the official legislature site; water findings distinguish new rights from acquirable/transferable existing rights; provenance block completed; verdict paragraph written; open questions listed for counsel.

## Task 1 — Vesting timing

- **Mode:** B (AI-assisted reading, human citation check)
- **Sources:** state legislature site (primary), Justia/Casetext for the leading vested-rights case, law-review surveys of early-vesting states
- **Procedure:**
  1. Search the state code for: "vested right," "development agreement," "permit application," "common law vesting." Statutory candidates: a permit-vesting statute (TX Ch. 245-style), a development agreement act, or nothing (→ common-law reliance rule).
  2. If no statute, find the controlling state supreme court vesting case and record the rule.
  3. Record: rule type (early-statutory / reliance / hybrid), trigger event (application? permit? construction?), and the spend stage at which durability becomes purchasable.
- **Output:** state file §"Vesting timing"
- **Time:** 60–90 min

## Task 2 — Referendum reach

- **Mode:** B
- **Sources:** state constitution (I&R article), Ballotpedia state I&R page (index only — verify), case law on whether rezonings/DAs are legislative or quasi-judicial
- **Procedure:**
  1. Does the constitution/statute extend initiative & referendum to *county* (not just municipal) legislative acts?
  2. Are rezonings classified legislative (referendum-exposed) or quasi-judicial in this state? Find the controlling case.
  3. If the state has a DA statute: is an adopted DA referendum-eligible?
  4. Pull 20 years of county-level land-use ballot measures from Ballotpedia/SOS as the empirical base rate.
- **Output:** state file §"Referendum reach"
- **Time:** 60–90 min

## Task 3 — Mini-NEPA

- **Mode:** B
- **Sources:** academic surveys of state environmental policy acts ("little NEPAs"), then the statute itself
- **Procedure:** confirm existence; if it exists, determine scope (state actions only vs. private projects needing permits) and whether private parties can sue. Record injunction availability. NC note: check SEPA's current scope — it was substantially narrowed; verify what remains.
- **Output:** state file §"Mini-NEPA"
- **Time:** 30–45 min

## Task 4 — Boundary gatekeeper + entitlement paths

- **Mode:** B
- **Sources:** state municipal code titles (annexation, incorporation), state special-district statutes
- **Procedure:**
  1. Annexation: by ordinance? petition? election? boundary commission? NC note: check current annexation law (involuntary annexation was curtailed) and ETJ statute (municipal ETJ up to 1–3 miles — verify current form).
  2. Incorporation: population/density minimums, petition thresholds, who approves. NC note: legislative approval is reportedly required (🔍 verify) — if true, incorporation in NC is a lobbying project, not a petition.
  3. Special districts: what exists (improvement districts, water/sewer districts)? Formed administratively or legislatively?
  4. Fill the [entitlement-paths table](../framework/05-entitlement-paths.md) with each path's veto stack.
- **Output:** state file §"Boundary gatekeeper" + §"Paths"
- **Time:** 60–90 min

## Task 5 — Breach test + water doctrine + acquisition path + verdict

- **Mode:** B/C
- **Procedure:**
  1. Per instrument found above: what claim accrues on revocation and is it enjoinable or damages-only? (Often the hardest question — where unclear, write the question for counsel rather than guessing.)
  2. Record water doctrine and the permit authority + database ([registry](data-sources.md#water-state-specific)).
  3. Separate four water paths: new appropriations/permits; purchase or lease of existing rights; transfer/change-of-use/change-place constraints; land acquisition with attached rights.
  4. If new rights appear unavailable, do not label water a kill until the transfer/acquisition path has been checked or explicitly marked unknown.
  5. Write the verdict paragraph: strongest durable instrument, spend stage, residual kill risks.
- **Output:** state file §"Breach test," §"Water," §"Verdict"
- **Time:** 60–90 min

## Task 5.5 — Provenance note

- **Mode:** B/C
- **Procedure:** complete the state file provenance block before status can move beyond draft. Record autonomous steps, sources used, principal/team assumptions, inferences, and items requiring counsel, engineering, or human confirmation.
- **Output:** state file §"Provenance"
- **Time:** 10 min

## Task 6 — Counsel review

- **Mode:** D
- **Procedure:** send the drafted state file to a land-use attorney *in that state*; ask them to confirm/correct each cited claim and answer the open questions. Update file; flip status to `counsel-reviewed`.
- **Output:** status flag + corrections log at bottom of state file
- **Cost:** budget 1–2 hours of attorney time per state

## Anti-hallucination protocol (applies to every Mode B task)

1. AI proposes a claim + citation.
2. Human opens the official legislature site and reads the cited section.
3. If the section doesn't say what the AI claimed, the claim is discarded — not paraphrased into something weaker.
4. The state file cites *the section the human read*, with a quoted key phrase.
