# GadgetBox Project Dictionary

## Section 1: Business KPI Dictionary

| KPI | MoSCoW Priority | Business Definition | Exact Calculation Formula | Required Analysis Cuts |
|---|---|---|---|---|
| **Net Sales** | Must | Order value after discounts, excluding VAT and delivery costs. | `SUM(order_total - discount)` where `order_total` is the sum of order line amounts and `discount` is the total discount applied to the order. | Sales channel (own store, marketplace), category, brand, product, period.
| **Order Count** | Must | Number of placed and valid orders (excluding cancelled ones). | `COUNT(DISTINCT order_id)` with filter `order_status NOT IN ('canceled')`. | Channel, period, customer type.
| **Average Order Value (AOV)** | Must | Average revenue per order. | `Net Sales / Order Count` | Channel, category, brand, period.
| **Gross Margin (amount and %)** | Must | Profit before operating expenses. | Amount: `Net Sales - COGS`; Percentage: `(Gross Margin / Net Sales) * 100`. | Channel, product, brand, period.
| **Conversion Rate** | Must | Share of sessions that resulted in an order in the own e‑shop. | `Orders (own store) / Sessions (own store)` | Device, traffic source, period.
| **Return & Claim Rate** | Must | Share of returned or claimed items (and their value) out of total sold items. | `RETURNED_VALUE / SOLD_VALUE`. | Split into a) contract withdrawal (within allowed period) and b) defect claim. Includes partial returns.
| **Abandoned Cart Rate** | Should | Percentage of created carts that never resulted in an order. | `Abandoned_carts / All_carts` | Channel, device, period.
| **Inventory Turnover & Days of Inventory** | Should | Speed of inventory consumption and time needed to exhaust stock. | Turnover: `COGS / AVG(Stock)`; Days of inventory: `Current_stock / AVG_Daily_Sales`. | Warehouse, SKU, period.
| **Stockout Rate & Lost Sales Estimate** | Should | Share of days or SKUs when a product was unavailable, plus estimate of lost revenue. | `Stockout_days / Total_days` and `Lost_sales = AVG_Daily_Sales * Lost_days`. | Warehouse, SKU, period.
| **On‑Time Delivery & Lead Time** | Should | Share of shipments delivered within the promised timeframe and average time from order to delivery. | `OTD = COUNT(delivered_on_time) / COUNT(all_deliveries)`. `Lead_Time = AVG(delivery_date - order_date)`. | Channel, carrier, region.
| **CAC & ROAS** | Should | Customer acquisition cost and return on ad spend. | `CAC = Marketing_spend / New_customers`. `ROAS = Revenue_from_campaign / Marketing_spend`. | Channel, campaign, period.
| **Contribution Margin** | Could | Profit after deducting variable costs (delivery, marketplace & payment fees, returns, attributed advertising). | `Contribution_Margin = Gross_Margin - Delivery_cost - Marketplace_fees - Return_cost - Attributed_ad_cost`. | Product, channel.
| **Purchase Repeat Rate & CLV** | Could | Share of customers with ≥2 orders and the lifetime value of a customer. | `Repeat_rate = COUNT(customers with >=2 orders) / COUNT(all_customers)`. `CLV = Σ (Revenue_per_customer - Cost_per_customer) over lifetime`. | Customer segment, period.
| **Product Ratings & NPS** | Could | Average product rating, number of reviews, and Net Promoter Score after purchase surveys. | `Avg_rating = AVG(rating)`. `NPS = %Promoters - %Detractors`. | Product, period.

## Section 2: Core Business Entities & Modeling Rules (Domain Rules)

1. **Order ↔ Order Line ↔ Shipment** – A single order may be split into multiple shipments (split‑shipment). Each order line can belong to one or more shipments.
2. **Product ↔ Variant ↔ SKU** – Hierarchy: `Category → Sub‑category → Product → Variant (color, capacity) → SKU`. Every SKU is associated with a brand.
3. **Bundles** – A set of several SKUs sold as a single item. When calculating COGS and stock balances, component SKUs must be accounted for.
4. **Order Status Lifecycle** – `placed → paid → shipped → delivered / cancelled`. Only `paid` and `delivered` statuses count towards revenue.
5. **Order‑Level Discount Allocation** – A discount applied to the whole basket/order must be proportionally distributed to its order lines for correct SKU‑level margin calculations.
6. **Changing Purchase Cost (COGS)** – Historical purchase and catalogue prices are stored using SCD Type 2 (slowly changing dimension).
7. **Warehouse Stock Snapshots** – Stored as daily periodic snapshots. KPI calculations use the latest snapshot for the required period.
8. **Customers** – Distinguish between guest purchases (no registration) and registered customers (B2C & B2B). Personal data (full name, email, phone, precise address) are **hashed/masked** in the reporting layer according to GDPR/RODO; only city and postal code are kept.
