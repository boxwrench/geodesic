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

## Sweetwater County, WY — *graded ([county file](wy-sweetwater/county-sweetwater.md#stage-2--filter-1d-budget-actual-))*

<!-- BEGIN GENERATED: sweetwater -- from scripts/meetings/registry.json; do not hand-edit -->

**Discovered 2026-06-13** · topology **boom** · land-use gate: **Planning & Zoning Commission**

Grade **84.5** (medium confidence)

| Body | Host / format | Availability & access | Audit |
|---|---|---|---|
| **Planning & Zoning Commission** *(land-use gate)* | PDF agendas / staff reports (Granicus S3 + Land Use site) | script-retrievable; 24-month depth — via pdf, pdf_index | verified - PDFs exist and are cached; P&Z video / full minutes not confirmed |
| Board of County Commissioners | Granicus - video, agendas, MetaViewer minutes | **gated - needs browser** — via granicus | verified source exists; view_id and 24-month depth unconfirmed - this is the gap |

**Contact (Mode D):** Sally Shoemaker, Commission clerk — 307-872-3890 — shoemakers@sweetwatercountywy.gov

<!-- END GENERATED: sweetwater -->

- **Format & tone-fidelity:** mixed — BCC has *video* (tone-capable, but gated/unretrieved); the actual graded body (**P&Z**) is **PDF staff-reports only → counts/outcomes reliable, tone weak**. The 84.5 grade was built off P&Z PDFs, *not* verbatim transcripts.
- **Coverage & diversity:** both relevant bodies located; the land-use gate (P&Z) **is** captured (the good case). The richer video (BCC) is the *less* land-use-relevant body — a coverage mismatch.
- **Capacity read:** **highest of the three** — Granicus + Revize is above-average civic-tech for a rural county (Boom-County-consistent).

## Fall River County, SD — *graded ([cache](../research/raw/fall-river/meetings/_INDEX-and-SCORING.md))*

<!-- BEGIN GENERATED: fall-river -- from scripts/meetings/registry.json; do not hand-edit -->

**Discovered 2026-06-13** · topology **wild_west** · **no land-use gate body exists**

Grade **88.5\*** (medium confidence) — **not comparable**: the county has no discretionary land-use gate, so the score reflects the absence of a gate rather than friendliness ([L15](../research/pilot-lessons.md)). `score.py` withholds the composite.

| Body | Host / format | Availability & access | Audit |
|---|---|---|---|
| Board of County Commissioners | Self-hosted WordPress; indexed PDF minutes, agendas, packets | script-retrievable; 24-month depth — via facebook, pdf_index | draft - host and no-zoning status confirmed verbatim; 7 meetings pulled |

<!-- END GENERATED: fall-river -->

- **Format & tone-fidelity:** **PDF minutes only → counts reliable, tone read weak** (no archived video; minutes themselves point to un-fetchable Facebook for "full context"). 7-meeting sample + full archive index.
- **Coverage & diversity:** **thin by structure** — the county has **no planning & zoning department and no zoning ordinance at all**, so there is no land-use gate to record. The land-use docket is purely ministerial (plats, approach/ROW permits, road districts). Records exist; *signal* is sparse.
- **Capacity read:** **low-to-mid** — clean indexed PDFs (better than Jones) but no civic-tech video stack. **Topology = Wild West**, so the 88.5\* is the *absence of a gate*, not friendliness ([L15](../research/pilot-lessons.md)) — `*` flags grade-invalidated-by-no-zoning.

## Jones County, NC — *graded ([cache](../research/raw/jones/meetings/_INDEX-and-SCORING.md))*

<!-- BEGIN GENERATED: jones -- from scripts/meetings/registry.json; do not hand-edit -->

**Discovered 2026-06-13** · topology **wild_west** · land-use gate: **Planning Board**

Grade **86\*** (low confidence) — **not comparable**: the county has no discretionary land-use gate, so the score reflects the absence of a gate rather than friendliness ([L15](../research/pilot-lessons.md)). `score.py` withholds the composite.

| Body | Host / format | Availability & access | Audit |
|---|---|---|---|
| **Planning Board** *(land-use gate)* | Google-Drive PDFs; 7-member board handling plats and solar site plans | **gated - needs browser** — via none | open - outcomes NOT captured, which is the central gap |
| Board of Commissioners | Google-Drive PDFs plus Vimeo video; county is transitioning agenda software | **gated - needs browser** — via drive_file, facebook, vimeo | draft - agendas retrieved 2026-07-25; outcomes and video not |

**Contact (Mode D):** Angelica K Hall, Clerk to the Board — 252-448-7571 — ahall@jonescountync.gov

**Disabled sources:**
- OUT OF WINDOW - see the Board of Commissioners entry. Planning Board records were mixed into this pre-2023 archive. Outcomes and vote records were never retrieved during the pilot, which is why the Jones grade is the lowest-confidence of the three; the in-window fix is the Vimeo archive, not this folder.
- OUT OF WINDOW - archive is prior to March 2023, and the protocol grades a rolling 24 months. Disabled 2026-07-25. Also technically blocked: the folder view yields entry IDs whose download endpoints all fail (500/500/400), consistent with the IDs being subfolders rather than files. Re-enable only if a historical question needs pre-2023 records, and expect to clear it in a browser.

<!-- END GENERATED: jones -->

- **Format & tone-fidelity:** **worst of the three** — agendas captured, but **minutes/outcomes and video were unretrievable** (Drive PDFs + Vimeo). Approval/denial counts and board tone are **inferred, not measured** → the 86 is the **lowest-confidence grade** in the pilot.
- **Coverage & diversity:** a working **Planning Board** (plats + solar site-plan review) *is* the right body and is recorded — but **no county zoning** means it's a plat gate, not a rezoning gate; and the records that exist are gated.
- **Capacity read:** **low** — Google-Drive-as-records-system + Vimeo + "transitioning software"; Planning function run out of the EDC/Manager's office, **no Planning Director**. Topology = Wild West→low-end Gatekeeper; `*` = grade-invalidated-by-no-zoning ([L15](../research/pilot-lessons.md)).

---

## Cross-county snapshot (the variation, at a glance)

<!-- BEGIN GENERATED: snapshot -- from scripts/meetings/registry.json; do not hand-edit -->

| | Sweetwater WY | Fall River SD | Jones NC |
|---|---|---|---|
| **Best format available** | Video, no captions | Summary minutes | Video, no captions |
| **Tone-readable at the gate body?** | No - counts only | N/A - no gate body | No |
| **Script-retrievable?** | Partly | **Yes** | **No** |
| **Land-use gate body recorded?** | Yes | N/A - none exists | Yes, but gated |
| **Capacity tier** | Highest of the three | Low-to-mid | Lowest of the three |
| **Grade (confidence)** | 84.5 (medium) | 88.5\* (medium) | 86\* (low) |

`*` marks a grade invalidated by the absence of a zoning gate. Note that the two highest scores belong to the counties with no zoning at all — which is the whole reason this dimension is tracked rather than assumed.

<!-- END GENERATED: snapshot -->

**Takeaway:** three counties, three different record infrastructures, **zero clean verbatim transcripts**, and the two "highest" grades come from counties with *no zoning gate at all*. This is precisely why the dimension is worth tracking nationally rather than treating as a per-county lookup — and why the [browser-fetch tool](../ops/step-3-automation.md) (to clear Granicus/Vimeo/Drive gates) is the highest-leverage automation to build.
