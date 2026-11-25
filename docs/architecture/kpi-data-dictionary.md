# KPI & Data Dictionary — GadgetBox Analytics

This document defines core business KPIs, calculation logic, and key domain entities used across the GadgetBox analytics solution.

## 1. Core KPI Definitions

| KPI | Business Definition | Formula / Calculation Logic | Priority |
| --- | --- | --- | --- |
| **Net Sales** | Net order value after discounts, excluding VAT and shipping. | Sum of net line revenue after allocating order-level discounts, excluding VAT and delivery fees. | Must |
| **Order Count** | Number of valid orders in the selected period and scope. | Count of distinct orders (`order_id`) matching active filters (excluding cancelled/invalid records per rules). | Must |
| **AOV (Average Order Value)** | Average net order value per order. | `Net Sales / Order Count` | Must |
| **Gross Margin (Amt & %)** | Profit after product purchase cost (COGS). | Gross Margin Amt: `Net Sales - COGS` (using `dim_product_scd2` cost valid at order date). Gross Margin %: `Gross Margin Amt / Net Sales` | Must |
| **Conversion Rate** | Share of store sessions resulting in an order. | `Orders (Own Store) / Sessions (Own Store)` | Must |
| **Return & Complaint Rate** | Share of returned or claimed items/value relative to sold items/value, split by withdrawal vs. complaint. | `Returned or Claimed Qty (or Amt) / Sold Qty (or Amt)` | Must |
| **Abandoned Cart Rate** | Share of created carts that did not result in a completed order. | `(Created Carts - Orders from Carts) / Created Carts` | Should |
| **Inventory Turnover & Days of Stock** | How fast stock cycles and how many days current stock covers demand. | Turnover: `COGS / Avg Inventory Value`; Days of Stock: `Current Stock Qty / Avg Daily Sales Qty` | Should |
| **Stockout Rate** | Share of days/products out of stock and estimated lost sales. | Count/share of product-days with zero available stock (`is_stockout = true`) | Should |
| **On-Time Delivery & Lead Time** | Fulfillment/delivery duration and share of shipments delivered within promised SLA. | Lead time from order/dispatch to delivery; `% delivered within carrier sla_days` | Should |
| **CAC & ROAS** | Customer acquisition cost and return on ad spend by channel/campaign. | `CAC = Marketing Spend / New Customers`; `ROAS = Ad-Attributed Revenue / Ad Spend` | Should |

## 2. Key Domain & Modeling Concepts

- **Order vs. Order Line vs. Shipment:** One order can contain multiple line items and be fulfilled/shipped in separate parcels/carriers; order-level discounts are allocated to lines so totals reconcile within `0.1%`.
- **Product vs. Variant vs. SKU vs. Bundle:** Products are grouped into categories, subcategories, and brands; variants (`color`, `capacity`) map to distinct `SKU`s (and unified via `EAN` across sources), including `bundle` items.
- **Customer (B2C vs. B2B, Guest vs. Registered):** Pseudonymized via `customer_hash` in reporting layers in line with GDPR/RODO (`city` and `postal_code` max location granularity).
- **SCD Type 2 (`dim_product_scd2`):** Tracks historical `purchase_cost` and `list_price` changes over time (`valid_from`, `valid_to`, `is_current`) so historical margins remain intact.