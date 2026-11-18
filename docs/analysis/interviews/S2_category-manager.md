# Interview notes: S-2 Category Manager

| | |
|---|---|
| **Role played by** | AI simulation (model: [exact model name][check]) |
| **Role / persona** | Category Manager for audio, speakers and smartwatches, Piotr Wisniewski |
| **Interviewer / note‑taker / operator** | [name] / [name] / [name] |
| **Transcript** | [transcripts/S2_category-manager.md](../transcripts/S2_category-manager.md) |
| **Prompt used** | [ai‑simulation/prompts/03-category-manager.md](../ai-simulation/prompts/03-category-manager.md) |

## Key answers
- Weekly decisions: **reorder quantities**, **price adjustments on Allegro**, and **adding new models**; bundles cause profit‑calculation problems (lines 20‑21).
- Data sources: **shop platform**, **Allegro/Amazon panels**, **ERP CSVs** for purchase prices; stock levels from warehouse system; returns only as **lumped total** (lines 22‑24).
- Margin visibility is limited to **revenue**; manual **ABC classification** is outdated; cannot see return rates per SKU/brand (lines 26‑28).
- Needed drill‑down: **brand → SKU/variant** to assess profitability and negotiate with suppliers; default view limited to own categories (audio, speakers, smartwatches) with optional full view (lines 30‑33).
- Promotions & bundles require **manual cost splitting** across SKUs, making margin analysis painful (lines 34‑36).
- Overlap with other managers (gaming accessories, smart‑home) creates friction; wants a **single source of truth** for product ownership (lines 38‑40).

## Pain points
- Manual, fragmented **margin calculations** due to varying purchase prices and bundle handling.
- **Return data** only available as total, no SKU‑level insight.
- **ABC classification** is manual and quickly outdated.
- Overlapping product categories cause internal disputes.

## Business questions (new or changed)
- What is the **true margin** per SKU/variant after accounting for promotions, purchase price changes, and returns?
- Which **brands** have high return rates, and are returns due to quality or user‑error?
- Which **variants** (e.g., colour) are dead stock vs high‑turnover?
- How does the **profitability of my categories** compare to other departments?

## Candidate requirements
| Candidate requirement | Catalog ID | Signal strength |
|---|---|---|
| Automated true‑margin tracking down to SKU/variant level | FR‑05, FR‑06, FR‑15 (Must) | strong |
| Granular item‑level return data | FR‑16 (Must) | strong |
| Dynamic ABC classification based on margin & rotation | FR‑18 (Must) | strong |
| Role‑based default view limited to own categories | FR‑25 (Should) | medium |
| Bundle cost‑splitting automation | FR‑08 (Must) | strong |

## Priority signals (must / nice to have)
- **Must**: Accurate SKU‑level margin, return visibility, bundle handling, ABC classification.
- **Nice to have**: Cross‑category comparison dashboard.

## Open questions and follow‑ups
- What data feeds (API, CSV) are available for **purchase price history** per SKU?
- How frequently are **bundle definitions** updated in the shop system?
- Are there existing **brand‑level return logs** or only aggregate totals?

## Changes to the stakeholder map
- Update Category Manager access: default to own categories, ability to view all for cross‑checks.
- Add KPI: *Variant‑level margin*.

## Review
- Notes checked against the transcript by: [name]

