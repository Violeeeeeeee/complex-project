# GadgetBox Analytics

End-to-end analytics solution for the fictional online electronics store **GadgetBox**:
from source data to management dashboards. Course project, run in SCRUM with MoSCoW prioritisation.

## Business context

GadgetBox sells small electronics online (own store and marketplaces). Management needs to know which
products and channels are really profitable after delivery, returns and advertising, and how to reduce
stockouts and overstock. This project delivers the data warehouse, KPIs and reports for that.

## Team

| Name | Role | Main areas |
|---|---|---|
| [name] | Product Owner | Requirements, architecture |
| [name] | Developer / Scrum Master (rotating) | [areas] |
| [name] | Developer / Scrum Master (rotating) | [areas] |
| [name] | Developer / Scrum Master (rotating) | [areas] |

## Technology stack (planned, to be confirmed in ADRs)

| Layer | Technology |
|---|---|
| Synthetic data and ETL | Python (managed with uv) |
| Warehouse | PostgreSQL in Docker |
| BI | Power BI (PBIP/TMDL text format) |
| Tests | pytest, SQL reconciliation scripts |
| Project management | GitHub Projects |

## Repository structure

| Folder | Content |
|---|---|
| `docs/analysis` | Stakeholder map, interviews, requirements catalog, traceability |
| `docs/architecture` | C4 diagrams, ERD, data lineage, ADRs, data and KPI dictionary |
| `docs/scrum` | Team Agreement, DoR/DoD, sprint notes, retrospectives, metrics |
| `src` | Data generator and ETL code |
| `sql` | DDL and transformation scripts |
| `tests` | Data-quality and code tests |
| `configs` | Configuration (channels, categories, warehouses) |
| `infrastructure` | Docker and environment setup |
| `data` | Generated data (not committed) |
| `reports` | BI model and report files |

## Quick start

> The full run instructions are completed in Sprint 1 (user story US-06).
> Goal: rebuild the environment from scratch in under 2 hours (NFR-05).

Prerequisites: Git, Python 3.12+, [uv](https://docs.astral.sh/uv/), Docker.

    git clone https://github.com/Violeeeeeeee/complex-project.git
    cd complex-project
    uv sync

Database startup, data generation and load steps: _to be added_.

## Working agreement

- No direct commits to `main`; every change goes through a pull request.
- Branch names: `feature/short-description`.
- At least one reviewer per pull request (code review is part of the Definition of Done).
- Meaningful commit messages, not "fix" or "update".
- Tasks and backlog: GitHub Projects.

## Project status

| Sprint | Weeks | Goal | Status |
|---|---|---|---|
| 0 | 1-2 | Organisation and requirements analysis | In progress |
| 1 | 3-4 | Architecture and first data | Planned |
| 2 | 5-6 | Warehouse and basic KPIs | Planned |
| 3 | 7-8 | All Must requirements | Planned |
| 4 | 9-10 | Should requirements | Planned |
| 5 | 11-12 | Could items, stabilisation, handover | Planned |

## License

MIT, see [LICENSE](LICENSE).