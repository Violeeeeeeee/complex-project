# Interview notes: S-1 Owner / CEO

| | |
|---|---|
| **Role played by** | AI simulation (model: [exact model name][check]) |
| **Role / persona** | Owner and CEO, Tomasz Kowalski |
| **Interviewer / note‑taker / operator** | [name] / [name] / [name] |
| **Transcript** | [transcripts/S1_owner-ceo.md](../transcripts/S1_owner-ceo.md) |
| **Prompt used** | [ai‑simulation/prompts/01-owner-ceo.md](../ai-simulation/prompts/01-owner-ceo.md) |

## Key answers
- Quarterly decisions depend on **marketing & promotion budget allocation**, **supplier negotiations**, and **sales targets / operational spending limits** (lines 19‑20).
- B2B bulk discounts are mixed with B2C sales, distorting demand signals (line 20).
- Current profit assessment is **delayed (≈10 days)** and based on fragmented spreadsheets (lines 27‑28).
- The CEO needs a **single‑page profitability dashboard** showing real net profit, actual vs plan, YoY growth, channel‑wise margins, and total cost of returns & delivery (lines 39‑45).
- Critical comparisons: **Actual vs Plan**, **YoY**, **Own store vs marketplace**, **B2C vs B2B** (lines 49‑51).
- Access: **Full unrestricted access for CEO**, but **role‑based view for category managers** (line 53).
- Desired immediate Monday numbers: **Weekend Real Net Profit**, **Weekend Gross Revenue vs Weekly Target**, **Number of Split Shipments** (lines 61‑63).

## Pain points
- Data is **disconnected and arrives too late** (line 83).
- Gross revenue dashboards **ignore hidden costs** (commissions, ads, returns, delivery) (line 84).
- B2B bulk orders **skew demand metrics** (line 85).
- Split shipments **double delivery costs** (line 86).

## Business questions (new or changed)
- What is the **true net profit** per channel/category after deducting all hidden costs?
- Are we hitting **monthly sales plans** and achieving **profitable YoY growth**?
- Which channels (own store vs marketplace) are **genuinely profitable**?
- How much are **logistics inefficiencies** (split shipments, returns) costing us?

## Candidate requirements
| Candidate requirement | Catalog ID | Signal strength |
|---|---|---|
| Real‑time unified profit dashboard (net profit, margins, costs) | FR‑17 (Must) | strong |
| Automated cost deduction (commissions, ads, delivery, returns) | FR‑05, FR‑06, FR‑15, FR‑16 (Must) | strong |
| Role‑based data access (full for CEO, limited for managers) | FR‑25 (Should) | medium |
| Split‑shipment cost tracking | FR‑27 (Should) | strong |
| Immediate weekend KPI snapshot | FR‑12, FR‑15 (Must) | strong |

## Priority signals (must / nice to have)
- **Must**: Real‑time profit visibility, automated cost deduction, role‑based security.
- **Nice to have**: Split‑shipment cost analytics, weekend KPI snapshot.

## Open questions and follow‑ups
- Which exact data sources (shop platform, marketplace APIs, ERP) are available for real‑time cost extraction? |
- How frequently should the dashboard refresh (real‑time vs hourly)? |

## Changes to the stakeholder map
- Add **CEO** access level: **unrestricted**.
- Add **new KPI**: *Real Net Profit*.

## Review
- Notes checked against the transcript by: [name]

