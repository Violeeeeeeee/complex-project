# Requirements Catalog

Sprint 0 | Requirements analysis | MoSCoW prioritisation

|  |  |
|-------------------------|---------------------------------------------------------------------------|
| **Project** | GadgetBox - analytics solution for an online electronics store |
| **Document owner** | Product Owner (team) - [your name] |
| **Last updated** | 2026-10-12 |
| **Status** | Draft v0.1 |

## 1. How to read this catalog

- The catalog contains **37 functional (FR)** and **11 non-functional (NFR)** requirements. The project minimum is 25 FR and 8 NFR.
- It starts from the baseline list R-01 to R-23 and NFR-01 to NFR-09 of the project brief. Large items were split into smaller requirements, and new items were added (FR-01/02 synthetic data, FR-08 unification, NFR-10, NFR-11).
- **Source** is the stakeholder role that needs the requirement. These sources are hypotheses until the interviews confirm them; "Business PO" means the requirement comes from the course brief.
- **SP** is an indicative size in story points set by the Product Owner for the proportion check. It will be replaced by the team estimate from Planning Poker.
- Every Must and Won't requirement has a one-sentence justification, as required. Should and Could items also have one, to make later re-prioritisation easier.
- Priority changes are recorded in the [priority change log](priority-change-log.md); the link to stories and tests is in the [traceability matrix](traceability-matrix.md).

## 2. MoSCoW summary

| Category | Requirements | Indicative SP | Share of total SP | Project limit | Check |
|--------------|---------------|---------------|------------------|----------------------|----------------|
| Must | 26 | 136 | 57.9% | max 60% | OK |
| Should | 13 | 46 | 20.6% | about 20% | OK |
| Could | 7 | 47 | 21.1% | about 20% (buffer) | OK |
| Won't | 4 | 0 | 0% | 0% | OK |
| **Total** | 48 | 223 | 100% |  |  |

Could items (47 SP) are a buffer. A 4-person team will realistically deliver only a part of them.

## 3. Functional requirements

| ID | Requirement | Source | MoSCoW | Epic | SP | Justification |
|------|---------------------------------|-----------|-------|------|----|---------------------------------|
| FR-01 | **Synthetic data: master and order data.** Generate a reproducible synthetic dataset of master and order data: at least 2,000 products, 8 categories, 30 brands, customers (B2C/B2B, guest/registered), channels, warehouses, and 24 months of orders (at least 100,000) with order lines, discounts and statuses, including deliberately seeded data defects. | Business PO | Must | EP-01 | 8 | Without realistic data there is nothing to analyse, and the dataset is a graded deliverable. |
| FR-02 | **Synthetic data: events, stock and operations.** Generate at least 1,000,000 web events with sessions, daily stock snapshots, returns/complaints, shipments and marketing costs, consistent with the order data. | Business PO | Must | EP-01 | 8 | Conversion, stock and return KPIs (all Must) need these sources. |
| FR-03 | **Load orders.** Load orders, order lines, customers and carts from the shop platform database and marketplace order exports, with a channel flag (own store / marketplace). | E-commerce Manager | Must | EP-01 | 5 | Orders are the core of every sales KPI. |
| FR-04 | **Load web events.** Load web-analytics sessions and events (JSON): page views, product views, add-to-cart, checkout, payment, device, traffic source, cookie consent. | E-commerce Manager | Must | EP-01 | 5 | The conversion rate (a Must KPI) cannot be computed without sessions. |
| FR-05 | **Load ERP/WMS data.** Load daily stock levels, purchase prices and supplier purchases from ERP/WMS CSV exports. | Logistics & Warehouse Manager | Must | EP-01 | 3 | Needed for COGS, gross margin and the mandatory inventory snapshot fact. |
| FR-06 | **Load returns and complaints (RMA).** Load returns and complaints with type (withdrawal vs complaint), reason and partial returns. | Customer Service Manager | Must | EP-01 | 3 | The return rate is a Must KPI and directly affects margin. |
| FR-07 | **Data cleaning and validation.** Clean and validate incoming data (duplicate orders, inconsistent SKUs, missing purchase costs, invalid statuses) and write every rejected record to a reject log with the reason. | Financial Controller | Must | EP-01 | 8 | Management cannot use numbers it does not trust. |
| FR-08 | **Product and customer unification.** Unify product records across shop, marketplace and ERP via SKU/EAN mapping (product, variant, SKU, bundles) and unify customer identity across channels. | Category Manager | Must | EP-01 | 8 | Without a common product key, sales, margin and stock cannot be combined. |
| FR-09 | **Data-quality tests.** Run at least 10 automated data-quality rules at every load (e.g. stock >= 0, shipment not before order, sum of lines = order value) and store the results. | Financial Controller | Must | EP-01 | 5 | Mandatory requirement and the basis for trusting every KPI. |
| FR-10 | **Dimensional model.** Build a dimensional model with at least 3 fact tables of different grain (including a daily inventory snapshot), at least 5 dimensions (date, product, customer, channel, warehouse/carrier) and an explicitly documented grain for each fact. | Business PO | Must | EP-02 | 8 | The core of the solution and a pass condition. |
| FR-11 | **SCD Type 2.** Track the history of product purchase cost and list price (or customer segment) as a Type 2 slowly changing dimension. | Financial Controller | Must | EP-02 | 5 | Margin is only correct if the cost valid at the time of sale is used. |
| FR-12 | **Net sales and order count.** Measures for net sales (after discounts, excluding VAT and delivery) and number of orders, correct for any period, channel, category, brand and product. | Owner / CEO | Must | EP-03 | 5 | The basic measure on which all other KPIs build. |
| FR-13 | **Average order value (AOV).** AOV = net sales / number of orders, by the same dimensions. | E-commerce Manager | Must | EP-03 | 2 | A required base KPI, cheap once FR-12 exists. |
| FR-14 | **Gross margin.** Gross margin (amount and %) = net sales minus COGS, with COGS based on time-varying purchase cost (e.g. weighted average). | Financial Controller | Must | EP-03 | 5 | Management cannot judge profitability without margin. |
| FR-15 | **Conversion rate.** Conversion rate = orders / sessions for the own store, by device and traffic source. | E-commerce Manager | Must | EP-03 | 3 | A required base KPI of the project brief. |
| FR-16 | **Return and complaint rate.** Return and complaint rate by quantity and value, split into withdrawal and complaint, including partial returns. | Customer Service Manager | Must | EP-03 | 5 | Returns erode margin and are a graded KPI. |
| FR-17 | **Management dashboard.** Management dashboard with core KPIs, comparison to the previous year (YoY) and to the sales plan, split into own store and marketplace. | Owner / CEO | Must | EP-04 | 8 | The main deliverable for the board and the reason the product exists. |
| FR-18 | **Assortment report.** Category-manager report with sales, margin and returns by category, brand and product, a product ranking and ABC analysis. | Category Manager | Must | EP-04 | 8 | An explicitly required report and the category manager's main need. |
| FR-19 | **Incremental loading.** Load orders and web events incrementally (only new or changed records). | Business PO | Should | EP-06 | 5 | Full reloads work at this data size, but incremental loading is needed for realistic operation. |
| FR-20 | **Purchase funnel and abandoned carts.** Report on the funnel (session, product page, cart, order, payment) and abandoned carts by device and traffic source. | E-commerce Manager | Should | EP-04 | 3 | Important, but the web-analytics tool gives a workaround. |
| FR-21 | **Inventory report.** Report on stock turnover, days of stock, stockout rate with estimated lost sales, and slow-moving stock (no sales for more than 90 days). | Logistics & Warehouse Manager | Should | EP-04 | 5 | Stock can be checked manually per product in the meantime. |
| FR-22 | **Logistics report.** Report on order-to-dispatch and order-to-delivery time and on-time delivery by carrier and region. | Logistics & Warehouse Manager | Should | EP-04 | 5 | Carrier portals provide a partial workaround. |
| FR-23 | **Marketing effectiveness (CAC, ROAS).** Analysis of CAC and ROAS by channel and campaign. | Online Marketing Specialist | Should | EP-04 | 5 | Ad platforms report ROAS separately as a workaround. |
| FR-24 | **Promotion impact.** Analysis of the impact of promotions on sales and margin. | Online Marketing Specialist | Should | EP-04 | 3 | Valuable for pricing decisions, but results can be approximated manually. |
| FR-25 | **Row-level security (RLS).** A category manager sees only the categories they are responsible for. | Owner / CEO | Should | EP-05 | 3 | Separate report copies per manager are an acceptable workaround. |
| FR-26 | **Scheduled pipeline with monitoring.** Run the pipeline automatically on a schedule with error monitoring. | Business PO | Should | EP-06 | 3 | A manual run is a workable fallback. |
| FR-27 | **Load carrier shipment statuses.** Load shipment statuses from carrier APIs (JSON), including orders shipped in several parcels. | Logistics & Warehouse Manager | Should | EP-01 | 3 | Required for the logistics report, but not for any Must KPI. |
| FR-28 | **Contribution margin.** Profitability after contribution costs (delivery, marketplace and payment fees, returns, attributed advertising) by product and channel. | Owner / CEO | Could | EP-03 | 8 | Answers the owner's key question, but depends on many Should items. |
| FR-29 | **Demand forecast.** Demand forecast for categories or products for 4 to 12 weeks with error (MAPE) and a reorder-point proposal. | Category Manager | Could | EP-07 | 13 | High value but high effort; only with spare capacity. |
| FR-30 | **Customer segmentation (RFM, cohorts, CLV).** Customer segmentation (RFM), repeat-purchase rate, cohort analysis and CLV. | Online Marketing Specialist | Could | EP-07 | 8 | Nice to have; uses the same data as the Must KPIs. |
| FR-31 | **Market-basket analysis.** Association rules for products bought together (e.g. smartwatch + strap + charger). | E-commerce Manager | Could | EP-07 | 5 | Interesting insight, no dependency from other reports. |
| FR-32 | **Reviews, NPS and complaint text analysis.** Average rating, review count, NPS, and sentiment/topic analysis of reviews and complaint reasons. | Customer Service Manager | Could | EP-07 | 8 | Needs text data and NLP effort beyond the core scope. |
| FR-33 | **CI/CD pipeline.** CI/CD pipeline for ETL code and model (e.g. GitHub Actions). | Business PO | Could | EP-06 | 3 | Improves quality, but the project works without it. |
| FR-34 | **Dynamic pricing.** Automatic dynamic price setting with write-back to the shop platform. | Owner / CEO | Won't | EP-09 | - | Needs write-back into the shop and pricing logic, which is outside analytics scope and the 12-week, 4-person capacity. |
| FR-35 | **Real-time recommendation engine.** Product recommendation engine running in real time on the website. | E-commerce Manager | Won't | EP-09 | - | Real-time ML serving and storefront integration are out of scope. |
| FR-36 | **Build or modify the online shop.** Build or modify the online shop itself. | Business PO | Won't | EP-09 | - | The project delivers analytics, not the transactional shop. |
| FR-37 | **Real-time streaming ingestion.** Streaming (real-time) ingestion of web events. | E-commerce Manager | Won't | EP-09 | - | Batch loading meets every stated reporting need; streaming adds major infrastructure effort. |

| FR-38 | **Split‑shipment cost calculation (margin).** Capture per‑parcel delivery cost to support margin calculation. | Logistics & Warehouse Manager | Could | EP-05 | 4 | Detailed cost calculation deferred to later sprint. |
| FR-39 | **Data source format specifications.** Define formats: relational DB for shop, JSON for web analytics and carrier APIs, CSV for ERP/WMS exports. | Business PO | Should | EP-06 | 2 | Ensures correct ingest pipelines.
| FR-40 | **Granularity specification (SKU level).** Ensure all fact tables use SKU as the lowest grain, with dimensions for category, subcategory, product, brand. | Business PO | Must | EP-02 | 3 | Aligns data model with reporting requirements.
## 4. Non-functional requirements

| ID | Requirement | Source | MoSCoW | Epic | SP | Justification |
|------|---------------------------------|-----------|-------|------|----|---------------------------------|
| NFR-01 | **Performance.** Dashboard page refresh in under 5 seconds at full data volume, including at least 1 million web events. | Owner / CEO | Must | EP-04 | 5 | A slow dashboard will not be used by management. |
| NFR-02 | **Correctness (reconciliation).** Sales and order counts in the warehouse reconcile with the source to within 0.1%; stock levels match the ERP for a given day. | Financial Controller | Must | EP-01 | 5 | Management will not trust figures that cannot be reconciled. |
| NFR-03 | **Data protection (GDPR/RODO).** Pseudonymise personal data (name, e-mail, phone, address) in the reporting layer, keep location at city or postal-code level at most, and respect cookie consent. | Business PO (RODO) | Must | EP-05 | 5 | A legal obligation and a project pass condition. |
| NFR-04 | **Versioning.** All code (SQL, ETL, BI model in text form such as PBIP/TMDL) is in Git with a readable history. | Business PO | Must | EP-08 | 2 | Required, and individual contributions are graded from the repository history. |
| NFR-05 | **Reproducibility.** Run instructions allow the environment to be rebuilt from scratch in under 2 hours. | Business PO | Must | EP-06 | 3 | The instructor must be able to run the solution; a pass condition. |
| NFR-06 | **Usability.** The dashboard is understandable for a non-technical user; tested with at least 2 people outside the team. | Owner / CEO | Should | EP-04 | 3 | Strongly affects the grade, but the dashboards work without the test. |
| NFR-07 | **Scalability.** A new category, sales channel (e.g. another marketplace) or warehouse can be added without code changes (configuration data only). | Business PO | Should | EP-02 | 3 | Good design practice; a hard-coded variant would still work. |
| NFR-08 | **Documentation (data and KPI dictionary).** A data dictionary and KPI dictionary (definition, formula, grain) is available to business users. | Financial Controller | Should | EP-08 | 3 | Needed so everyone calculates KPIs the same way. |
| NFR-09 | **Accessibility.** Colours and contrast are friendly to people with colour-vision deficiency. | Business PO | Could | EP-04 | 2 | Nice-to-have polish for the dashboards. |
| NFR-10 | **Reliability (idempotent loads).** Re-running a failed or repeated load does not create duplicates, and every load run is logged. | Financial Controller | Should | EP-06 | 2 | Protects data correctness, but manual clean-up is possible. |
| NFR-11 | **Architecture documentation.** C4 Context and Container diagrams, warehouse ERD, data lineage and at least 4 architecture decision records (ADRs). | Business PO | Must | EP-08 | 8 | A mandatory deliverable and 20 points of the grade. |

## 5. Mapping to the baseline list of the project brief

| Brief item | Catalog item(s) | Comment |
|-------------------------|-------------------------|--------------------------------------------------|
| R-01 Load 3+ sources | FR-03, FR-04, FR-05, FR-06 | Split by source so each can be delivered and tested separately. |
| R-02 Cleaning and validation | FR-07, FR-08 | Unification of product and customer keys is made explicit. |
| R-03 Dimensional model | FR-10, FR-11 | SCD Type 2 is separated into its own requirement. |
| R-04 KPI measures | FR-12 to FR-16 | One requirement per KPI group. |
| R-05 Management dashboard | FR-17 | Unchanged. |
| R-06 Assortment report | FR-18 | Unchanged. |
| R-07 Data-quality tests | FR-09, NFR-02 | Reconciliation added as a non-functional requirement. |
| R-08 Incremental loading | FR-19, NFR-10 | Idempotency added. |
| R-09 to R-12 Reports | FR-20 to FR-24 | Funnel, inventory, logistics, marketing and promotion analysis. |
| R-13 RLS | FR-25 | Unchanged. |
| R-14 Scheduling | FR-26 | Unchanged. |
| R-15 to R-20 Could items | FR-28 to FR-33 | Unchanged scope, text analysis merged with reviews and NPS. |
| R-21 to R-23 Won't items | FR-34 to FR-36 | Unchanged. FR-37 (streaming) added. |
| NFR-01 to NFR-09 | NFR-01 to NFR-09 | Unchanged. NFR-10 and NFR-11 added. |
| (not in the brief) | FR-01, FR-02 | Synthetic data generation is a graded deliverable and a large work item. |
