# Stakeholder Map

Sprint 0 | Requirements analysis | Deliverable 1 (analytical documentation)

|  |  |
|-------------------------|---------------------------------------------------------------------------|
| **Project** | GadgetBox - analytics solution for an online electronics store |
| **Document owner** | Product Owner (team) - [your name] |
| **Last updated** | 2026-10-12 |
| **Status** | Draft v0.1 |

## 1. Purpose

This document identifies the stakeholders of the GadgetBox analytics solution, their goals, pain points and the business questions they expect the solution to answer. It is the starting point for the interviews and for the requirements catalog.

> **Important:** all goals, pains and questions below are working hypotheses prepared by the Product Owner from the project brief. They must be confirmed, corrected or extended in the interview sessions (see [interview plan](interviews/interview-plan-and-notes.md)). After the interviews this document is updated.

## 2. Stakeholder overview

| ID | Role | What they do | Influence | Interest | Interview |
|------|---------------------|------------------------------------------|---------|---------|-------------|
| S1 | Owner / CEO | Owns the business and makes investment decisions on channels, categories and suppliers. | High | High | Session 1 |
| S2 | E-commerce Manager | Responsible for the own online store: traffic, conversion and the on-site customer journey. | Medium | High | Session 2 |
| S3 | Category Manager (buyer) | Manages the assortment, prices and supplier orders of a set of product categories. | Medium | High | Session 2 |
| S4 | Logistics & Warehouse Manager | Runs one or two warehouses, stock levels, purchasing inputs and carrier relationships. | Medium | High | Session 3 |
| S5 | Online Marketing Specialist | Plans and runs paid, organic and newsletter campaigns. | Medium | High | Session 2 |
| S6 | Customer Service & Complaints Manager | Handles returns, withdrawals and complaints (RMA) and customer contact. | Medium | Medium | Session 3 |
| S7 | Financial Controller | Owns the numbers: sales plan, cost of goods, reconciliation and financial reporting. | Medium | High | Session 1 |

### Influence / interest grid

|  | Interest: Medium | Interest: High |
|--------------------|---------------------------------|-----------------------------------------------|
| **Influence: High** | (none) | Owner / CEO: manage closely, confirm priorities and the Must list |
| **Influence: Medium** | Customer Service & Complaints Manager: keep informed, involve in returns KPI | E-commerce Manager, Category Manager, Logistics & Warehouse Manager, Online Marketing Specialist, Financial Controller: involve in interviews and report reviews |

## 3. Stakeholder profiles

### S1. Owner / CEO

**Role:** Owns the business and makes investment decisions on channels, categories and suppliers.

**Goals**

- Grow profitable revenue, not just revenue
- Decide where to invest: channels, categories, brands
- Have one trusted view of the whole business

**Pain points**

- Does not know which products and channels are really profitable after delivery, returns and advertising
- Figures from different systems disagree
- Plan-versus-actual comparison arrives too late

**Business questions**

- S1-Q1: Which channels and categories generate profit after delivery, returns and advertising?
- S1-Q2: How do sales and margin compare to last year and to the sales plan?
- S1-Q3: Which products and brands should we scale up, and which should we drop?
- S1-Q4: How much money is tied up in slow-moving stock?
- S1-Q5: Can I trust the numbers I see, and who may see which data?

**KPIs of interest:** Net sales, gross margin, contribution margin, YoY, plan vs actual

**Influence / interest:** High / High

**Planned interview:** Session 1

### S2. E-commerce Manager

**Role:** Responsible for the own online store: traffic, conversion and the on-site customer journey.

**Goals**

- Increase conversion and revenue of the own store
- Improve the on-site purchase journey
- Understand which traffic sources bring buyers

**Pain points**

- Cannot see where visitors drop out of the funnel
- Abandoned carts are not analysed by device or source
- Own store and marketplace are not comparable

**Business questions**

- S2-Q1: At which step (session, product page, cart, order, payment) do we lose most visitors?
- S2-Q2: Which devices and traffic sources convert best?
- S2-Q3: How is the abandoned-cart rate developing, and for which products?
- S2-Q4: How does the own store compare with the marketplace?
- S2-Q5: How do promotions change conversion and average order value?

**KPIs of interest:** Conversion rate, AOV, abandoned carts, sessions, orders

**Influence / interest:** Medium / High

**Planned interview:** Session 2

### S3. Category Manager (buyer)

**Role:** Manages the assortment, prices and supplier orders of a set of product categories.

**Goals**

- Grow margin and turnover of own categories
- Decide on assortment, pricing and reordering with facts
- Spot problem products early

**Pain points**

- Margin is calculated manually in Excel once a month
- Returns are not visible per product or brand
- No ABC classification of the assortment

**Business questions**

- S3-Q1: Which products and brands are top and bottom by sales and by margin?
- S3-Q2: Which products or brands have unusually high return rates?
- S3-Q3: What is the ABC class of each product?
- S3-Q4: Which products have had no sales for more than 90 days?
- S3-Q5: What is the effect of promotions on margin in my categories?

**KPIs of interest:** Net sales, gross margin %, return rate, ABC class, stock days

**Influence / interest:** Medium / High

**Planned interview:** Session 2

### S4. Logistics & Warehouse Manager

**Role:** Runs one or two warehouses, stock levels, purchasing inputs and carrier relationships.

**Goals**

- Minimise stockouts and overstock
- Deliver orders on time
- Choose carriers based on performance

**Pain points**

- Some products are out of stock while others pile up
- Carrier performance is unclear
- Orders shipped in several parcels are hard to track

**Business questions**

- S4-Q1: Which products stock out most often, and how much sales do we lose?
- S4-Q2: What are the stock turnover and days of stock per category?
- S4-Q3: Which stock has not sold for more than 90 days?
- S4-Q4: How long from order to dispatch and to delivery?
- S4-Q5: What share of parcels arrives on time, by carrier and region?

**KPIs of interest:** Stock turnover, days of stock, stockout rate, on-time delivery, lead time

**Influence / interest:** Medium / High

**Planned interview:** Session 3

### S5. Online Marketing Specialist

**Role:** Plans and runs paid, organic and newsletter campaigns.

**Goals**

- Acquire new customers at low cost
- Prove the return on advertising spend
- Run promotions that do not destroy margin

**Pain points**

- Ad costs are in one tool and sales in another
- CAC and ROAS per campaign are unknown
- Promotion impact on margin is not measured

**Business questions**

- S5-Q1: What are CAC and ROAS by channel and campaign?
- S5-Q2: Which campaigns bring profitable customers, not only orders?
- S5-Q3: How do promotions affect sales volume and margin?
- S5-Q4: What share of customers is new versus returning?
- S5-Q5: How are newsletter campaigns performing, within the cookie and consent rules?

**KPIs of interest:** CAC, ROAS, new vs returning customers, promotion uplift

**Influence / interest:** Medium / High

**Planned interview:** Session 2

### S6. Customer Service & Complaints Manager

**Role:** Handles returns, withdrawals and complaints (RMA) and customer contact.

**Goals**

- Reduce returns and complaints
- Handle cases faster
- Give procurement evidence about faulty products

**Pain points**

- Withdrawal from contract and complaint are not separated in reports
- Root causes are invisible
- Partial returns are hard to count

**Business questions**

- S6-Q1: Which products and brands have the highest return and complaint rates?
- S6-Q2: How do withdrawals and complaints split by product and by channel?
- S6-Q3: What are the most common return and complaint reasons?
- S6-Q4: What is the value of partial returns and refunds?
- S6-Q5: How are product ratings and customer comments developing?

**KPIs of interest:** Return and complaint rate (quantity and value), reasons, ratings

**Influence / interest:** Medium / Medium

**Planned interview:** Session 3

### S7. Financial Controller

**Role:** Owns the numbers: sales plan, cost of goods, reconciliation and financial reporting.

**Goals**

- Accurate figures that reconcile with the source systems
- Correct margin with purchase cost that changes over time
- Clear plan-versus-actual reporting

**Pain points**

- Different systems give different totals
- Purchase cost changes and is valued inconsistently
- Marketplace commissions and payment fees are not in margin

**Business questions**

- S7-Q1: Does the warehouse reconcile with the source systems within 0.1%?
- S7-Q2: How is the cost of goods valued (for example weighted average), and what changes when purchase cost changes?
- S7-Q3: How are net sales defined: discounts, VAT, delivery, cancelled orders?
- S7-Q4: What is gross margin by channel, and what do marketplace commissions and payment fees add?
- S7-Q5: At which level does the sales plan exist (month, channel, category)?

**KPIs of interest:** Net sales, COGS, gross margin, reconciliation difference, plan vs actual

**Influence / interest:** Medium / High

**Planned interview:** Session 1

## 4. Coverage of the required analysis areas

The project brief requires the analysis to cover the areas below. The table shows which stakeholders represent each area.

| Analysis area | Represented by |
|---------------------------------------------|-------------------------------------------------------|
| Sales and assortment (categories, brands, ABC/XYZ) | Category Manager, Owner / CEO |
| Prices and promotions | Category Manager, Online Marketing Specialist |
| Sales channels and marketing | Online Marketing Specialist, E-commerce Manager, Owner / CEO |
| Customer journey on the website (funnel) | E-commerce Manager |
| Customers and loyalty (B2C vs B2B) | Online Marketing Specialist, Owner / CEO |
| Warehouse and procurement | Logistics & Warehouse Manager, Category Manager |
| Logistics and delivery | Logistics & Warehouse Manager |
| Returns and complaints | Customer Service & Complaints Manager |
| Product and channel profitability | Owner / CEO, Financial Controller, Category Manager |

## 5. Change history

Changes are tracked by the Git history of this file. Record notable versions here.

| Version | Date | Change | Author |
|----------|-----------------|-----------------------------------------------------|--------------------|
| 0.1 | 2026-10-12 | First draft from the project brief (hypotheses). | [PO name] |

## 4. Updated coverage with new requirements (Этап 4)

- **R‑08 (Incremental loading)** – primarily supports **S2 (E‑commerce Manager)** and **S4 (Logistics & Warehouse Manager)** for timely order and event data.
- **R‑13 (Row‑level security)** – directly impacts **S1 (Owner / CEO)** (overall data access governance) and **S3 (Category Manager)** (restricted view of categories).
- **FR‑38 (Split‑shipment cost calculation)** – aligns with **S4 (Logistics & Warehouse Manager)** for margin analysis.
- **FR‑39 (Data source format specifications)** – relevant for **S2 (E‑commerce Manager)**, **S4 (Logistics & Warehouse Manager)** and **S5 (Online Marketing Specialist)** as they consume different source formats.
- **FR‑40 (SKU‑level granularity specification)** – essential for **S3 (Category Manager)**, **S2 (E‑commerce Manager)** and **S1 (Owner / CEO)** to ensure consistent reporting.

These additions do not introduce new stakeholder roles but clarify the linkage between existing stakeholders and the new functional requirements introduced in Этап 3.
