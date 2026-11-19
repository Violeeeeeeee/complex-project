# Data Warehouse ERD & Grain Specification (`mart` schema)

This document defines the dimensional model (Star Schema) for the GadgetBox Data Warehouse, including explicit grain definitions for all fact tables, conformed dimensions, and Slowly Changing Dimensions (SCD Type 2).

## 1. Explicit Grain Definitions (Fact Tables)

| Fact Table | Type | Explicit Grain (One row per...) |
|---|---|---|
| `fact_order_lines` | Transaction Fact | One individual product line item within a customer order (after order-level discount allocation). |
| `fact_web_events` | Transaction / Event Fact | One user interaction event on the online store (page view, product view, add-to-cart, checkout, payment) tied to a session. |
| `fact_daily_inventory` | Periodic Snapshot Fact | One SKU in one warehouse at the end of one calendar day (daily closing stock quantity, reserved stock, and inventory value). |

## 2. Entity-Relationship Diagram (Star Schema)
![Data Warehouse Star Schema ERD](assets/warehouse-erd.png)

