# Game Plan — Step 3: Tooling & Automation (+ Step 4 Scale-Out)

**Goal:** build only the tools the pilot proved out, in order of `scorecard cells filled per hour of dev time × calibrated power`. This doc is the standing decision record for what gets built, what doesn't, and what triggers each build.

## Build triggers (no tool is built before its trigger fires)

| Tool | Trigger |
|---|---|
| Database | Scorecard schema frozen (Step 2 complete) |
| Dataset pullers | ≥10 counties queued for screening |
| Minutes pipeline | Minutes analysis confirmed high-power in calibration AND ≥10 counties queued |
| MCP server | Database exists AND research sessions are demonstrably re-fetching the same material |

## Candidate tool 1 — The database

- **What:** SQLite file in-repo (`data/geodesic.db`) + CSV exports for diffability. Tables: `states`, `counties`, `signals` (one row per signal observation: county, signal, value, source URL, date, time-spent, researcher), `sources`. The markdown scorecard becomes a *generated artifact* (small build script renders it from the DB).
- **Why:** traceability (every cell → sourced observation), token economics (sessions query locally instead of re-reading documents), and it's the substrate the MCP serves.
- **Don't:** reach for Postgres/hosted anything. One file, versioned in git, is correct at this scale.

## Candidate tool 2 — Dataset pullers (Tier A)

- **What:** small Python scripts, one per source: NFHL/NWI/HIFLD/TIGER/PAD-US queries for a county or AOI → rows in `signals`. Census ACS pull for population/growth/tax-base context.
- **Form:** `pullers/{source}.py --county "Jones, NC"` → writes to DB + caches raw responses in `data/raw/`. Each puller documents its endpoint in [data-sources.md](data-sources.md).
- **Est. effort:** 1–3 h per source once the DB exists.

## Candidate tool 3 — Minutes/transcript pipeline

The big one — automates the highest-cost, highest-value Stage 2 task.

- **Stages:**
  1. *Discovery:* per county, find the meeting record home (Legistar API check → YouTube channel search → clerk-site crawl). Output: `meeting_source` field per county.
  2. *Acquisition:* Legistar REST where available; `yt-dlp` auto-captions for YouTube; PDF download for clerk sites. Cache everything.
  3. *Extraction:* LLM pass → structured JSON per meeting (rezonings heard/outcome/elapsed-time, largest project, comment volume/tone, dominant topics). Schema lives in the repo so results are comparable across counties.
  4. *QA:* 10% human spot-check per county, logged. Counties failing QA get re-run or flagged manual-only.
- **Est. effort:** 2–4 days. **Only after its trigger fires.**

## Candidate tool 4 — MCP server (`geodesic-mcp`)

- **What:** a local MCP server exposing the database and pullers to AI sessions: `query_scorecard(filters)`, `get_county(county)`, `get_state_screen(state)`, `run_puller(source, county)`, `log_signal(observation)`.
- **Why:** chat-based research currently re-derives context every session — the MCP turns the repo into the session's memory, cutting tokens and keeping every observation flowing through one audited write path.
- **Form:** thin Python MCP over the SQLite file; runs locally; no hosting.
- **Est. effort:** ~1 day once the DB exists. High leverage, but pointless before there's data to serve — hence the trigger.

## Explicitly not building

- Zoning-PDF dimensional parsing (setbacks don't kill counties — [framework/04](../framework/04-signal-inventory.md#automation-policy))
- Generic scraper framework (each puller is small and bespoke)
- Statute-screen automation (Mode B forever; hallucination risk in legal claims is disqualifying)
- Anything hosted/web — this is a files-in-a-repo project until scale forces otherwise

## Step 4 — Scale-out procedure

When the funnel widens beyond the pilot:

1. New state enters → run [step-0](step-0-state-screens.md) (always manual+counsel; never automated).
2. Passing states → enumerate candidate counties (population band, distance-to-metro, ag land share — criteria set per state).
3. Pullers fill Tier A columns for all queued counties → kill on Stage 1 triggers.
4. Minutes pipeline + Mode C tasks for survivors → kill on Stage 2 triggers.
5. Mode D calls only for counties surviving to the top decile — *human time is the scarcest resource; the entire engine exists to ration it.*
6. Optionality rule enforced at all times: ≥2 live jurisdictions, ideally 3, plus the buy-already-entitled track.
