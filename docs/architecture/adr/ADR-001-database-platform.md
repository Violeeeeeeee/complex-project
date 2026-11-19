# ADR-001: Data Warehouse Storage Platform

- **Status:** Accepted
- **Date:** 2026-10-18
- **Authors:** Nazar Povod, Anton Krykhta

## Context

The GadgetBox analytics platform needs a relational data warehouse capable of storing 24 months of historical orders (100,000+ orders), daily inventory snapshots, and 1,000,000+ web events. The architecture requires separated logical schemas (`staging`, `core`, `mart`), sub-5-second dashboard query performance, and reproducible local startup via Docker.

## Options Considered

1. **PostgreSQL 16 (Dockerized):** Open-source relational database, lightweight container footprint, strong SQL support (CTEs, window functions, indexing), and straightforward BI connectivity.
2. **Microsoft SQL Server Developer Edition:** Solid BI integration, but higher memory footprint in Docker and slower startup across varying student machine setups.
3. **Cloud Data Warehouse (BigQuery / Snowflake):** Scalable, but introduces external account dependencies, credit/billing constraints, and network latency during local development and evaluation.

## Decision

We will use **PostgreSQL 16 running in Docker Compose** with three logical schemas: `staging`, `core`, and `mart`.

## Consequences

- **Positive:** Fast, reproducible local environment via a single Docker Compose setup with zero licensing cost.
- **Negative:** Requires proper indexes on foreign keys and date/event columns so analytical queries stay well under 5 seconds at full data volume.