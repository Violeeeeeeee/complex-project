# ADR-002: Integration Strategy (Python ETL + SQL Core/Mart)

- **Status:** Accepted
- **Date:** 2026-10-18
- **Authors:** Nazar Povod, Anton Krykhta

## Context

Source files (CSV and JSON) include simulated data quality issues such as duplicates, invalid SKUs, missing purchase costs, and inconsistent order statuses. Invalid rows must be logged with explicit rejection reasons, and batch loads must be idempotent.

## Options Considered

1. **Pure ELT (Raw load + SQL/dbt only):** Fast initial ingestion, but row-level custom business reject logging and cross-source SKU/customer key unification are harder to maintain in pure SQL.
2. **Hybrid Python ETL + SQL Transformations:** Python validates schemas, logs rejected records, and unifies identifiers before loading into staging/core, while SQL scripts build `core` (SCD Type 2) and `mart` tables.
3. **GUI ETL Tools (e.g., SSIS):** Produces bulky XML definitions with noisy Git diffs and platform lock-in.

## Decision

We will use a **Hybrid Python ETL + SQL Transformation** pipeline.

## Consequences

- **Positive:** Modular, testable Python validation logic paired with readable SQL transformations and clean Git diffs.
- **Negative:** Requires batch insert patterns (such as `execute_values` or `COPY`) so high-volume order and event loads remain fast.