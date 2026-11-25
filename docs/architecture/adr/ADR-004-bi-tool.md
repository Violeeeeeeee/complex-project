# ADR-004: BI Visualization & Semantic Layer Tool

- **Status:** Accepted
- **Date:** 2026-10-18
- **Authors:** Nazar Povod, Anton Krykhta

## Context

The analytics platform needs management and operational dashboards, shared KPI definitions, Row-Level Security (RLS) by product category, and BI artifacts that can be tracked cleanly in Git.

## Options Considered

1. **Power BI Desktop (PBIP / TMDL format):** Native DAX semantic layer, built-in RLS roles, and text-based project files compatible with Git version control.
2. **Looker Studio:** Accessible web tool, but lacks local Git text version control for report definitions and easy local PostgreSQL integration.
3. **Metabase / Apache Superset:** Can run locally in containers, but adds extra container overhead and lacks a DAX/TMDL semantic workflow for this setup.

## Decision

We will use **Microsoft Power BI Desktop in PBIP / TMDL format** connected to the PostgreSQL `mart` schema.

## Consequences

- **Positive:** DAX measures, model metadata, and RLS definitions can be reviewed and versioned in Git as text files.
- **Negative:** Power BI Desktop requires Windows (or a Windows environment/teammate) for interactive editing of `.pbip` reports.