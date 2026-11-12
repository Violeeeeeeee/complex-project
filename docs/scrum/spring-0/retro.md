# Sprint 0: Sprint Retrospective

- **Sprint:** Sprint 0
- **Date:** 15 October 2026
- **Participants:** Nazar Povod (SM), Anton Krykhta (PO), Abdullayev Dinmukhammed (Dev), Vladyslav Humeniuk (Dev)
- **Technique:** Start / Stop / Continue

## Retrospective Matrix

| Start | Stop | Continue |
|---|---|---|
| • Document all technical decisions directly in Pull Requests and ADRs before merging to `main`. | • Postponing task updates and moving cards in GitHub Projects until the end of the week. | • Maintaining open, proactive communication in the Telegram team chat. |
| • Conduct short asynchronous daily digests twice a week (Tuesday, Thursday). | • Taking tasks into development without checking DoR compliance first. | • Strict adherence to divided roles and areas of responsibility. |
| • Perform code reviews by at least one peer within 24–48 hours. | • Making direct commits to the `main` branch without a pull request. | • Mutual assistance across overlapping technical domains (ETL + Architecture). |

## Action Items (Improvements for Sprint 1)

1. **Backlog & DoR Compliance:** Every task must strictly comply with DoR, have an assigned MoSCoW priority, and include Story Points before moving to `In Progress`.
   - **Responsible:** Nazar Povod (Scrum Master) & Anton Krykhta (Product Owner)
   - **Verification:** Tracked during Daily Scrums and Backlog Refinements.

2. **Synthetic Data Pipeline Execution:** Ensure data generators (master data & orders) are reproducible with fixed random seeds and proper defect logging.
   - **Responsible:** Abdullayev Dinmukhammed & Vladyslav Humeniuk (Developers)
   - **Verification:** Code review and dataset validation in PRs for US-01 & US-02.

3. **Architecture & Environment Standardization:** Finalize C4/ERD diagrams, ADRs, and ensure dockerized environment setup works smoothly for all team members.
   - **Responsible:** Nazar Povod & Anton Krykhta
   - **Verification:** Peer review of ADR pull requests and README setup verification.