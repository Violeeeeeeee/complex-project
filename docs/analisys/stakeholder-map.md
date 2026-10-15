# Stakeholder map: GadgetBox analytics project

Draft. Stakeholders are fictional people at GadgetBox (online store with small electronics). Names are invented so interview notes are easier to write; they can be changed. Each stakeholder will be role-played by the instructor or students from another group in the interviews.

## Overview

| ID | Stakeholder | Role | Influence | Interest | Main KPIs |
|---|---|---|---|---|---|
| SH-01 | Anna Kowalska | CEO / owner | High | High | Net sales, contribution margin, YoY growth |
| SH-02 | Marek Nowak | E-commerce manager | High | High | Conversion, AOV, abandoned carts, sales vs plan |
| SH-03 | Katarzyna Wiśniewska | Category manager / buyer | Medium | High | Margin, returns, ABC by category, brand and product |
| SH-04 | Piotr Zieliński | Logistics and warehouse manager | Medium | High | Stockout rate, inventory turnover, days of stock, on-time delivery |
| SH-05 | Ewa Lewandowska | Online marketing specialist | Medium | High | CAC, ROAS, impact of promotions |
| SH-06 | Tomasz Wójcik | Customer service and returns manager | Medium | Medium | Return and complaint rate, reasons for returns |
| SH-07 | Joanna Kamińska | Financial controller | High | Medium | Gross margin, contribution margin, data reconciliation |

## Details

### SH-01 Anna Kowalska, CEO / owner

- **Goals:** know which products and channels are really profitable after delivery, returns and advertising costs; make decisions on assortment and budgets.
- **Business questions:**
    1. Which channels (own store vs marketplace) and categories bring real profit, not just sales?
    2. How are sales and margin changing compared with last year and with the plan?
    3. Where are we losing money (returns, delivery costs, marketplace fees)?
- **Needs from the solution:** management dashboard (YoY, plan, own store vs marketplace), simple and readable.
- **Related areas:** sales and assortment, profitability of product and channel.

### SH-02 Marek Nowak, E-commerce manager

- **Goals:** grow online sales and conversion; understand customer behavior on the site.
- **Business questions:**
    1. What is the conversion rate and how does it change by device and traffic source?
    2. At which step of the funnel (session → product page → cart → order → payment) do we lose most customers?
    3. How many carts are abandoned and why might that be?
- **Needs from the solution:** purchase funnel report, abandoned carts by device and source, sales vs plan.
- **Related areas:** customer journey on the site, channels and marketing, prices and promotions.

### SH-03 Katarzyna Wiśniewska, Category manager / buyer

- **Goals:** manage the assortment, choose products to keep or drop, negotiate with suppliers.
- **Business questions:**
    1. Which categories, brands and products give the highest margin and which have the most returns?
    2. Which products are in class A, B, C (ABC analysis)?
    3. How does the purchase cost change over time and how does it affect margin?
- **Needs from the solution:** assortment report with ranking and ABC, filtered to her own categories (row-level security).
- **Related areas:** sales and assortment, prices and promotions, returns.

### SH-04 Piotr Zieliński, Logistics and warehouse manager

- **Goals:** reduce stockouts and overstock, deliver on time.
- **Business questions:**
    1. Which products are often out of stock and how much sales do we lose?
    2. Which products have not sold for more than 90 days (slow-moving stock)?
    3. Which carriers and regions deliver late and how long does an order take from placing to delivery?
- **Needs from the solution:** warehouse report (turnover, days of stock, stockouts), logistics report (lead time and on-time delivery by carrier and region).
- **Related areas:** warehouse and procurement, logistics and delivery.

### SH-05 Ewa Lewandowska, Online marketing specialist

- **Goals:** spend the advertising budget effectively, acquire new customers cheaply.
- **Business questions:**
    1. What is the CAC and ROAS by channel and campaign?
    2. Which promotions increase sales and margin, and which only reduce margin?
    3. Which traffic sources bring customers who buy again?
- **Needs from the solution:** marketing effectiveness report (CAC, ROAS, promotion impact).
- **Related areas:** channels and marketing, prices and promotions, customers and loyalty.

### SH-06 Tomasz Wójcik, Customer service and returns manager

- **Goals:** lower the number of returns and complaints, improve customer satisfaction.
- **Business questions:**
    1. What are the return and complaint rates, split into withdrawal from contract and complaint?
    2. Which products and brands have the highest return rate and why?
    3. How do product ratings relate to returns?
- **Needs from the solution:** returns and complaints measures by product, brand and reason; later, text analysis of reviews (Could).
- **Related areas:** returns and complaints, customers and loyalty.

### SH-07 Joanna Kamińska, Financial controller

- **Goals:** reliable numbers that match the source systems; correct margin calculation.
- **Business questions:**
    1. Do net sales and order counts in the warehouse match the source with accuracy up to 0.1%?
    2. How is COGS calculated (weighted average cost) and how does it change over time?
    3. What is the margin after delivery, marketplace fees, returns and advertising?
- **Needs from the solution:** reconciliation with the source, documented KPI definitions in the business glossary, contribution margin (Could).
- **Related areas:** profitability of product and channel, data quality.

## Interview plan (minimum 3 sessions)

| Session | Stakeholders | Focus | Date | Notes |
|---|---|---|---|---|
| 1 | SH-01 CEO, SH-07 Controller | Profitability, KPI definitions, reconciliation | [date] | [link to notes] |
| 2 | SH-02 E-commerce, SH-05 Marketing | Funnel, conversion, CAC and ROAS | [date] | [link to notes] |
| 3 | SH-03 Category manager, SH-04 Logistics, SH-06 Customer service | Assortment, stock, delivery, returns | [date] | [link to notes] |

## Next steps

- Run the interviews and save notes in `docs/analysis/interviews/`.
- From the business questions, write the requirement catalog (FR-01..., NFR-01...) with source = stakeholder ID and MoSCoW priority.
- Link requirements to user stories in the traceability matrix.