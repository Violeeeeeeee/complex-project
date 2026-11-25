# ADR-003: COGS Valuation and Historical Cost Tracking (SCD Type 2)

- **Status:** Accepted
- **Date:** 2026-10-18
- **Authors:** Nazar Povod, Anton Krykhta

## Context

Gross margin (`Net Sales - COGS`) depends on product purchase costs that change over time. Overwriting historical purchase costs in place would distort historical margin reporting.

## Options Considered

1. **Overwrite Current Cost (SCD Type 1):** Simple to implement, but invalidates historical gross margin whenever supplier purchase prices change.
2. **SCD Type 2 on `dim_product_scd2`:** Tracks `purchase_cost` and `list_price` intervals (`valid_from`, `valid_to`, `is_current`) and links order lines to the `product_sk` active on the order date.
3. **Lot-Level FIFO Accounting:** High accounting precision, but requires lot-level warehouse picking logs not provided in the source exports.

## Decision

We will implement **SCD Type 2 on `dim_product_scd2`** and assign `product_sk` based on the purchase cost version valid at the order date.

## Consequences

- **Positive:** Preserves historical gross margin accuracy over time while keeping fact-to-dimension joins straightforward.
- **Negative:** Transformation logic must properly close prior SCD Type 2 rows (`valid_to` and `is_current`) whenever updated purchase prices arrive.