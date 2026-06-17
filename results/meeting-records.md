# Meeting-Record Sources & Infrastructure — keep resource

A persistent registry of **what planning-meeting content each county actually has, in what format, and how obtainable it is** — the output of [meeting-grading Stage 1 (Discover)](../ops/protocol-meeting-grading.md). This is a reusable asset *and* a standing national dataset: the **availability, format, quality, and diversity of meeting records varies enormously county to county**, and that variation is itself signal — it is a county-capacity proxy ([pilot lesson L2](../research/pilot-lessons.md)), it predicts how expensive (and how *valid*) a friendliness grade will be ([L15](../research/pilot-lessons.md)), and it maps where the data pipeline will hit walls ([L14](../research/pilot-lessons.md) — gaps cluster on gated portals). **The pilot confirmed no two counties were alike, and none had clean verbatim transcripts** ([L20](../research/pilot-lessons.md)). Always link this registry from a county's report rather than re-pasting URLs in prose.

## Why track this nationally

The principal's originating instinct — *review the planning meetings to read development friendliness* — only works if the meeting content exists and is rich enough to read tone, not just outcomes. Across the country it ranges from **full searchable video with captions** (you can read who-defers-to-whom) down to **records-request-only** (you get nothing without a FOIA). Tracking this per county, in a comparable schema, lets us: (1) score institutional capacity cheaply at discovery; (2) know *before* spending whether a grade will be tone-rich or counts-only; (3) prioritize the [browser-fetch tool](../ops/step-3-automation.md) at exactly the counties where records are gated; (4) over time, build a map of *where in the US meeting transparency is good* — which correlates with the kind of professionalized, predictable jurisdiction the project wants.

## The four dimensions (record these at Discover for every county)

| Dimension | What it captures | Why it matters |
|---|---|---|
| **1. Format & tone-fidelity** | Video+captions ▸ audio ▸ verbatim minutes ▸ summary minutes ▸ agendas-only. Can we read **tone**, or only **counts/outcomes**? | A friendliness grade's *board-tone* component is only valid with video/verbatim; PDF summary minutes give reliable approval/denial counts but a weak tone read. |
| **2. Availability & access** | Public vs. **gated** (JS-rendered Granicus `ViewPublisher`, Vimeo, Google-Drive PDFs, login/PACER). 24-month depth. **Script-retrievable vs. needs-human/browser.** | Determines pipeline cost and the gap list. Gated portals are the recurring wall ([L14](../research/pilot-lessons.md)); they define the [Step-3 browser-tool](../ops/step-3-automation.md) priority. |
| **3. Coverage & diversity** | *Which* bodies are recorded (Board of Commissioners / P&Z / Planning Board), how completely, and — critically — **is the land-use body itself captured**? | The grade must come from the body that actually gates land use. A rich BCC video archive is useless if the P&Z (the real gate) is PDF-only. |
| **4. Capacity-signal read** | The interpretive layer: what the host tier + coverage imply about **county institutional capacity**, feeding the [topology classification](../framework/03-county-screen.md). | Host tier is a free capacity proxy ([L2](../research/pilot-lessons.md)). Civic-tech investment (Granicus/Legistar) signals a higher-capacity jurisdiction than a Google-Drive-folder clerk site. |

**Host-tier ladder (capacity proxy, best → weakest):** `Legistar/Granicus video+captions` ▸ `YouTube` ▸ `indexed PDF agendas/minutes` ▸ `Google-Drive/Vimeo unstructured` ▸ `records request only`. Audit markers per the [source-annotation rule](../ops/README.md#execution-modes). **Caveat ([L15](../research/pilot-lessons.md)): a rich record in a *no-zoning* county still can't produce a valid friendliness ranking — pair every record assessment with the topology class.**

---

## Sweetwater County, WY — *Discovered 2026-06-13; graded ([county file](wy-sweetwater/county-sweetwater.md#stage-2--filter-1d-budget-actual-))*

| Body | Host / format | Availability & access | Audit |
|---|---|---|---|
| Board of County Commissioners | **Granicus** — video + agendas + MetaViewer minutes | `sweetwatercountywy.granicus.com`; backup county YouTube. **Archive is JS-rendered (`ViewPublisher`) → NOT retrieved by fetch; needs browser tool.** | ✅ source exists; 🔍 `view_id` + 24-mo depth unconfirmed (the gap) |
| Planning & Zoning Commission (Land Use Dept) | **PDF** agendas/staff reports (Granicus S3 + Land Use site) | Plain-fetchable PDFs (also via `cms7files.revize.com`); **9 real packets / 11 meetings pulled** | ✅ PDFs exist + cached; 🔍 P&Z video/full-minutes not confirmed |

- **Format & tone-fidelity:** mixed — BCC has *video* (tone-capable, but gated/unretrieved); the actual graded body (**P&Z**) is **PDF staff-reports only → counts/outcomes reliable, tone weak**. The 84.5 grade was built off P&Z PDFs, *not* verbatim transcripts.
- **Coverage & diversity:** both relevant bodies located; the land-use gate (P&Z) **is** captured (the good case). The richer video (BCC) is the *less* land-use-relevant body — a coverage mismatch.
- **Capacity read:** **highest of the three** — Granicus + Revize is above-average civic-tech for a rural county (Boom-County-consistent).
- **Contact (Mode D):** Commission clerk Sally Shoemaker — 307-872-3890 — shoemakers@sweetwatercountywy.gov.

## Fall River County, SD — *Discovered 2026-06-13; graded 88.5\* ([cache](../research/raw/fall-river/meetings/_INDEX-and-SCORING.md))*

| Body | Host / format | Availability & access | Audit |
|---|---|---|---|
| Board of County Commissioners *(only land-use-touching body — **no P&Z exists**)* | **Self-hosted WordPress; indexed PDF** minutes/agendas/packets | `fallrivercountysd.gov/files/...` — **plain-text fetchable, unusually complete + well-indexed** (every meeting 2024-26 has Minutes+Agenda+Packet). **No Granicus/Legistar/YouTube.** Video = **Facebook Live only, not archived/fetchable.** | 🔍 host + no-zoning verbatim; 7 meetings pulled |

- **Format & tone-fidelity:** **PDF minutes only → counts reliable, tone read weak** (no archived video; minutes themselves point to un-fetchable Facebook for "full context"). 7-meeting sample + full archive index.
- **Coverage & diversity:** **thin by structure** — the county has **no planning & zoning department and no zoning ordinance at all**, so there is no land-use gate to record. The land-use docket is purely ministerial (plats, approach/ROW permits, road districts). Records exist; *signal* is sparse.
- **Capacity read:** **low-to-mid** — clean indexed PDFs (better than Jones) but no civic-tech video stack. **Topology = Wild West**, so the 88.5\* is the *absence of a gate*, not friendliness ([L15](../research/pilot-lessons.md)) — `*` flags grade-invalidated-by-no-zoning.

## Jones County, NC — *Discovered 2026-06-13; graded 86\* ([cache](../research/raw/jones/meetings/_INDEX-and-SCORING.md))*

| Body | Host / format | Availability & access | Audit |
|---|---|---|---|
| Planning Board (7-member; plats + solar site-plans) | **Google-Drive PDFs + Vimeo video**; "transitioning agenda software" | `jonescountync.gov` (WordPress/Elementor); **minutes = individual Google-Drive PDFs → NOT plain-fetchable; video = Vimeo + Facebook Live → not transcribable here.** | 🔍 **outcomes NOT captured — the central gap** |
| Board of Commissioners | same (Drive PDFs + Vimeo) | same gated stack | 🔍 agendas only |

- **Format & tone-fidelity:** **worst of the three** — agendas captured, but **minutes/outcomes and video were unretrievable** (Drive PDFs + Vimeo). Approval/denial counts and board tone are **inferred, not measured** → the 86 is the **lowest-confidence grade** in the pilot.
- **Coverage & diversity:** a working **Planning Board** (plats + solar site-plan review) *is* the right body and is recorded — but **no county zoning** means it's a plat gate, not a rezoning gate; and the records that exist are gated.
- **Capacity read:** **low** — Google-Drive-as-records-system + Vimeo + "transitioning software"; Planning function run out of the EDC/Manager's office, **no Planning Director**. Topology = Wild West→low-end Gatekeeper; `*` = grade-invalidated-by-no-zoning ([L15](../research/pilot-lessons.md)).

---

## Cross-county snapshot (the variation, at a glance)

| | Sweetwater WY | Fall River SD | Jones NC |
|---|---|---|---|
| **Best format available** | Video (BCC, gated) + PDF (P&Z) | Indexed PDF minutes | Google-Drive PDF + Vimeo |
| **Tone-readable?** | Partly (P&Z PDF = weak) | No (counts only) | No (outcomes unretrieved) |
| **Script-retrievable?** | P&Z yes / BCC video no | **Yes (cleanest)** | **No (Drive/Vimeo gated)** |
| **Land-use gate body recorded?** | Yes (P&Z) | N/A (no zoning) | Yes (Planning Board), gated |
| **Capacity tier** | Highest (Granicus/Revize) | Low-mid (PDF clerk) | Low (Drive/Vimeo) |
| **Grade (confidence)** | 84.5 (medium) | 88.5\* (medium) | 86\* (low) |
| **Verbatim transcript?** | **No** | **No** | **No** |

**Takeaway:** three counties, three different record infrastructures, **zero clean verbatim transcripts**, and the two "highest" grades come from counties with *no zoning gate at all*. This is precisely why the dimension is worth tracking nationally rather than treating as a per-county lookup — and why the [browser-fetch tool](../ops/step-3-automation.md) (to clear Granicus/Vimeo/Drive gates) is the highest-leverage automation to build.
