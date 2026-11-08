# Sprint 1: Sprint Planning

- **Sprint no.:** Sprint 1
- **Dates:** 16.10.2026 – 30.10.2026 (weeks 3 and 4)
- **Participants:** Nazar Povod (SM), Anton Krykhta (PO), Abdullayev Dinmukhammed (Dev), Vladyslav Humeniuk (Dev)
- **Sprint Goal:** Design solution architecture (C4, ERD, ADR), set up the environment, and load the first data source (orders) into the warehouse staging layer.
- **Declared Velocity:** 27 Story Points (+ 3 SP Stretch Goal)

## Selected Backlog Items for Sprint 1

| ID | Story Title | MoSCoW | SP | Epic | Assignee | Area |
|---|---|---|---|---|---|---|
| **US-01** | Generate master data | Must | 3 | EP-01 | Abdullayev Dinmukhammed | Data generator |
| **US-02** | Generate 24 months of orders | Must | 5 | EP-01 | Vladyslav Humeniuk | Data generator |
| **US-03** | C4 Context and Container diagrams | Must | 3 | EP-08 | Nazar Povod | Architecture |
| **US-04** | Warehouse ERD with explicit grain | Must | 5 | EP-02 | Nazar Povod | Architecture / Warehouse |
| **US-05** | Architecture decision records (min. 4 ADRs) | Must | 3 | EP-08 | Anton Krykhta & Nazar Povod | Architecture |
| **US-06** | Reproducible dev environment & repo skeleton | Must | 3 | EP-06 | Anton Krykhta | Automation / Warehouse |
| **US-07** | Load orders into staging | Must | 5 | EP-01 | Vladyslav Humeniuk & Abdullayev Dinmukhammed | ETL |
| **US-08** | KPI dictionary v0 *(Stretch Goal)* | Should | 3 | EP-08 | Anton Krykhta | Requirements / BI |

## Metrics & Workload Breakdown

- **Total Story Points Committed:** 27 SP (Must)
- **Stretch Goals:** 3 SP (Should - US-08)
- **Sprint 1 MoSCoW Proportion:** 90% Must, 10% Should *(Overall project backlog strictly complies with the limit: Must ≤ 58.3%).*

## Team Responsibilities & Execution Plan
1. **Data Generation Component (US-01, US-02):** Handled by Abdullayev Dinmukhammed and Vladyslav Humeniuk to ensure robust multi-year synthetic order history and master data seeds.
2. **Architecture & Modeling (US-03, US-04, US-05):** Led by Nazar Povod with architecture reviews and contributions from Anton Krykhta.
3. **Environment & ETL Pipeline (US-06, US-07):** Repository skeleton and staging load handled collaboratively by Anton Krykhta, Vladyslav Humeniuk, and Abdullayev Dinmukhammed.

## Risks & Dependencies
1. **Data generator delays:** Limit complex logic in the first iteration; build a straightforward CSV generator for Master Data and Orders.
2. **Environment discrepancies:** Task US-06 (Docker + PostgreSQL) is executed first in the sprint by Anton to standardize the environment for the entire team.
3. **ADR approval:** Review ADRs via Pull Request within 24 hours with mandatory peer sign-off.