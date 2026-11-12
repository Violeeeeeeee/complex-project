# Product Backlog and Sprint 1 User Stories

Sprint 0 | Backlog structure, GitHub Projects setup, Sprint 1 candidate stories

|  |  |
|-------------------------|---------------------------------------------------------------------------|
| **Project** | GadgetBox - analytics solution for an online electronics store |
| **Document owner** | Product Owner (team) - [your name] |
| **Last updated** | 2026-10-12 |
| **Status** | Draft v0.1 |

## 1. Epics

| Epic | Name | Description | Requirements | SP |
|--------|-------------------|----------------------------------|---------------------------------|------|
| EP-01 | Data Integration & Quality | Generate, extract, clean, validate and unify data from all sources; data-quality rules and reject log. | FR-01, FR-02, FR-03, FR-04, FR-05, FR-06, FR-07, FR-08, FR-09, FR-27, NFR-02 | 61 |
| EP-02 | Warehouse & Dimensional Model | Storage zones, fact and dimension tables, SCD2, scalability by configuration. | FR-10, FR-11, NFR-07 | 16 |
| EP-03 | KPIs & Semantic Layer | Business measures (net sales, AOV, margin, conversion, returns, contribution margin) and the semantic model. | FR-12, FR-13, FR-14, FR-15, FR-16, FR-28 | 28 |
| EP-04 | Reports & Dashboards | Management dashboard and operational reports (assortment, funnel, inventory, logistics, marketing), usability and accessibility. | FR-17, FR-18, FR-20, FR-21, FR-22, FR-23, FR-24, NFR-01, NFR-06, NFR-09 | 47 |
| EP-05 | Security & Privacy | GDPR/RODO pseudonymisation, cookie consent, row-level security. | FR-25, NFR-03 | 8 |
| EP-06 | Automation & Operations | Scheduling, monitoring, reproducible environment, idempotent loads, CI/CD. | FR-19, FR-26, FR-33, NFR-05, NFR-10 | 16 |
| EP-07 | Advanced Analytics | Forecasting, RFM/cohorts/CLV, basket analysis, review and complaint text analysis. | FR-29, FR-30, FR-31, FR-32 | 34 |
| EP-08 | Architecture & Documentation | C4, ERD, lineage, ADRs, data and KPI dictionary, version control. | NFR-04, NFR-08, NFR-11 | 13 |
| EP-09 | Out of Scope (Won't have) | Items consciously excluded from this project, with justification. | FR-34, FR-35, FR-36, FR-37 | - |

## 2. GitHub Projects setup

### Board columns (Status field)

| Column | Meaning | Rule |
|-----------------|-------------------------------------------|----------------------------------------|
| Backlog | Idea or requirement, not yet refined | Owned by the Product Owner |
| Ready | Meets the Definition of Ready | Only these may enter a sprint |
| In Progress | Being worked on | Max 2 items per person |
| In Review | Pull request open, review pending | Review within 24 to 48 hours |
| Done | Meets the Definition of Done and was accepted by the PO | Moved by the assignee |

### Custom fields

| Field | Type | Values |
|--------------------|------------------|--------------------------------------------------------------|
| MoSCoW | Single select | Must, Should, Could, Won't |
| Story Points | Number | 1, 2, 3, 5, 8, 13 (Fibonacci); stories above 8 must be split |
| Epic | Single select | EP-01 to EP-09 (see section 1) |
| Requirement ID | Text | FR-xx or NFR-xx from the catalog (needed for the traceability matrix) |
| Area | Single select | Requirements, Architecture, Data generator, ETL, Warehouse, Data quality, BI model, BI reports, Automation, Advanced analytics |
| Sprint | Iteration | Sprint 0 to Sprint 5, 2 weeks each |

### Views and labels

- **Board view** grouped by Status, filtered by the current Sprint.
- **Backlog table view** grouped by Epic, sorted by MoSCoW and then priority order, with SP and Requirement ID columns visible.
- **Roadmap view** by Sprint, to show the plan to the instructor.
- Labels: user-story, task, bug, documentation, spike. The instructor is added as a collaborator or viewer of the repository and the project.
- Burndown and burnup: check what the Insights charts of GitHub Projects can show; if a burndown cannot be produced directly, keep a small spreadsheet fed by the board export. Decide this in the first Planning.

### Issue template for a user story

```markdown
Title: US-xx [short name]
Requirement: FR-xx / NFR-xx   Epic: EP-xx   MoSCoW: [Must/Should/Could]   SP: [n]
Story: As a [role], I want [action], so that [benefit].
Acceptance criteria:
1. Given [context], When [action], Then [result].
2. Given [context], When [action], Then [result].
Dependencies: [US-xx or none]
Definition of Ready checked: [ ]   Definition of Done checked: [ ]
```

## 3. Sprint 1 candidate stories

Sprint 1 (weeks 3 and 4) must deliver at least: C4 and ERD diagrams, ADRs, generated data and one loaded source (orders). The stories below are written to meet that checkpoint. Story sizes are the Product Owner's proposal and will be re-estimated in Planning Poker.

| Story | Title | Requirement | Epic | MoSCoW | SP | Suggested area |
|--------|---------------------------|------------|--------|----------|-----|------------------------------|
| US-01 | Generate master data | FR-01 | EP-01 | Must | 3 | Data generator |
| US-02 | Generate 24 months of orders | FR-01 | EP-01 | Must | 5 | Data generator |
| US-03 | C4 Context and Container diagrams | NFR-11 | EP-08 | Must | 3 | Architecture |
| US-04 | Warehouse ERD with explicit grain | FR-10 | EP-02 | Must | 5 | Architecture / Warehouse |
| US-05 | Architecture decision records (min. 4) | NFR-11 | EP-08 | Must | 3 | Architecture |
| US-06 | Reproducible dev environment and repo skeleton | NFR-05 | EP-06 | Must | 3 | Automation / Warehouse |
| US-07 | Load orders into staging | FR-03 | EP-01 | Must | 5 | ETL |
| US-08 | KPI dictionary v0 (stretch) | NFR-08 | EP-08 | Should | 3 | Requirements / BI |

Proposed commitment: US-01 to US-07 = **27 SP**; US-08 is a stretch item (3 SP). The team sets the final commitment in Sprint Planning based on its available hours (for example 4 people x 8 to 10 hours x 2 weeks).

> **To confirm with the instructor:** the Sprint 1 checkpoint says "generated data". These stories generate master data and orders in Sprint 1. Web events (at least 1 million), daily stock, returns, shipments and marketing costs (FR-02) are planned for Sprint 2, together with loading the remaining sources.

### US-01: Generate master data

- **Epic / Requirement:** EP-01 / FR-01
- **MoSCoW / Story points:** Must / 3
- **Suggested area:** Data generator
- **Dependencies:** Repository skeleton (US-06).

**User story:** As a data engineer, I want a reproducible generator for master data (products, categories, brands, customers, channels, warehouses, carriers), so that the whole team works on the same realistic dataset.

**Acceptance criteria**

1. Given the generator is run with a fixed random seed, When it is run twice, Then both runs produce identical output files.
2. Given the generator has finished, When I inspect the product master, Then it contains at least 2,000 products in 8 categories from 30 brands, each with SKU, EAN and variant attributes.
3. Given the customer master, When I inspect it, Then it contains B2C and B2B, registered and guest customers, and only fake personal data.

### US-02: Generate 24 months of orders

- **Epic / Requirement:** EP-01 / FR-01
- **MoSCoW / Story points:** Must / 5
- **Suggested area:** Data generator
- **Dependencies:** US-01.

**User story:** As a data engineer, I want the generator to produce 24 months of orders and order lines for both channels, so that ETL and KPIs can be developed on realistic volumes.

**Acceptance criteria**

1. Given the generator has finished, When I count the records, Then there are at least 100,000 orders over 24 months, for both own store and marketplace channels.
2. Given the orders, When I check the order lines, Then the discounted line values add up to the order value (except for seeded defects), and some orders contain several lines and partial returns.
3. Given the dataset, When I check the defect log of the generator, Then a documented set of seeded defects (duplicate orders, inconsistent SKUs, missing purchase costs, invalid statuses) exists with a known count.

### US-03: C4 Context and Container diagrams

- **Epic / Requirement:** EP-08 / NFR-11
- **MoSCoW / Story points:** Must / 3
- **Suggested area:** Architecture
- **Dependencies:** Technology direction agreed in the team (confirmed by ADR in US-05).

**User story:** As a team member and business PO, I want C4 Context and Container diagrams of the solution, so that everyone shares one view of sources, integration, storage, model and reporting.

**Acceptance criteria**

1. Given the Context diagram, When I open it, Then it shows GadgetBox, its user roles and at least 3 source systems in different formats.
2. Given the Container diagram, When I review it, Then all five required layers (sources, integration, storage zones, dimensional model, semantic/presentation layer) are shown with the technology of each container.
3. Given the repository, When I look in the architecture folder, Then the diagram source files are stored there and linked from the README.

### US-04: Warehouse ERD with explicit grain

- **Epic / Requirement:** EP-02 / FR-10
- **MoSCoW / Story points:** Must / 5
- **Suggested area:** Architecture / Warehouse
- **Dependencies:** US-03.

**User story:** As a data modeller, I want an ERD of the warehouse with explicit grain for each fact table, so that the implementation in Sprint 2 follows a reviewed design.

**Acceptance criteria**

1. Given the ERD, When I inspect each fact table, Then its grain is stated in one sentence (for example, one row per order line; one row per product, warehouse and day).
2. Given the ERD, When I check the dimensions, Then date, product (category, subcategory, product, SKU, brand), customer, channel and warehouse/carrier are present.
3. Given the ERD, When I look at the product dimension, Then SCD Type 2 columns (valid from, valid to, current flag) for cost and list price are included.

### US-05: Architecture decision records (min. 4)

- **Epic / Requirement:** EP-08 / NFR-11
- **MoSCoW / Story points:** Must / 3
- **Suggested area:** Architecture
- **Dependencies:** None.

**User story:** As an architect, I want at least 4 ADRs (platform, ETL vs ELT, COGS valuation method, BI tool), so that key decisions are justified and traceable.

**Acceptance criteria**

1. Given the ADR folder, When I open any ADR, Then it contains context, options considered, decision and consequences.
2. Given the COGS ADR, When I read it, Then it states how time-varying purchase cost is valued (for example weighted average) and how it relates to SCD Type 2.
3. Given each ADR, When it is merged, Then it was reviewed through a pull request by a second team member.

### US-06: Reproducible dev environment and repo skeleton

- **Epic / Requirement:** EP-06 / NFR-05
- **MoSCoW / Story points:** Must / 3
- **Suggested area:** Automation / Warehouse
- **Dependencies:** Database platform direction (proposed: PostgreSQL in Docker, to be confirmed by ADR).

**User story:** As a developer, I want the database running in a container and a repository skeleton with a README, so that every teammate can start the warehouse locally with one documented procedure.

**Acceptance criteria**

1. Given a clean machine with Git and Docker installed, When I follow the README, Then the database starts and the staging, core and mart schemas exist.
2. Given the README, When a teammate other than the author follows it, Then it works without extra help.

### US-07: Load orders into staging

- **Epic / Requirement:** EP-01 / FR-03
- **MoSCoW / Story points:** Must / 5
- **Suggested area:** ETL
- **Dependencies:** US-02, US-06.

**User story:** As a data engineer, I want to load orders, order lines and customers into the staging layer and reject invalid records into a log, so that the first source is available for the warehouse.

**Acceptance criteria**

1. Given the generated order data, When the load runs, Then the staging row count equals the source row count minus the rejected records.
2. Given the seeded defects, When the load runs, Then every rejected record is written to the reject log with a reason.
3. Given the load result, When I check the load log, Then it records the start time, end time, rows read, rows loaded and rows rejected.

### US-08: KPI dictionary v0 (stretch)

- **Epic / Requirement:** EP-08 / NFR-08
- **MoSCoW / Story points:** Should / 3
- **Suggested area:** Requirements / BI
- **Dependencies:** Interview S1 (finance and owner).

**User story:** As a business user, I want a dictionary with the definition, formula and grain of each Must KPI, so that everybody calculates them the same way.

**Acceptance criteria**

1. Given the dictionary, When I look up net sales, AOV, gross margin, conversion rate and return rate, Then each has definition, formula, source tables and owner.
2. Given the dictionary, When it is reviewed by the PO and the Financial Controller role, Then the approved wording is recorded.

## 4. MoSCoW proportion check

The project limits the effort per category to: Must at most 60%, Should about 20%, Could about 20%, Won't 0%. The figures are calculated from the indicative sizes in the [requirements catalog](../analysis/requirements-catalog.md).

| Category | Indicative SP | Share | Limit | Status |
|--------------------|--------------------|------------------|--------------------|----------------------|
| Must | 130 | 58.3% | max 60% | Within limit |
| Should | 46 | 20.6% | about 20% | Within range |
| Could | 47 | 21.1% | about 20% | Within range |
| Won't | 0 | 0% | 0% | Within limit |
| **Total** | 223 | 100% |  |  |

Sprint 1 is naturally Must-heavy because it builds the foundation. The 60/20/20 proportions apply to the whole backlog. Ask the instructor whether the Sprint Planning template check (Must max 60%) should also be applied per sprint.

## 5. Definition of Ready check for Sprint 1 stories

| DoR item | Status |
|-------------------------------------------------------|---------------------------------------------|
| Written as "As a ... I want ... so that ..." | Done for US-01 to US-08 |
| At least 2 acceptance criteria in Given/When/Then | Done for US-01 to US-08 |
| MoSCoW and epic assigned | Done for US-01 to US-08 |
| Estimated in story points (Planning Poker) | Open: indicative sizes only until the Planning Poker session |
| Size 8 SP or less | Done (largest is 5 SP) |
| Dependencies clear | Done; see the dependency line of each story |
| Team understands the story, questions answered | Open: Backlog Refinement session |
| Linked to a catalog requirement | Done for US-01 to US-08 |
