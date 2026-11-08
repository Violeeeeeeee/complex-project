# Sprint 0: Sprint Retrospective

- **Sprint:** Sprint 0
- **Date:** 15 October 2026
- **Participants:** Nazar Povod (SM), Anton Krykhta (PO), Abdullayev Dinmukhammed (Dev), Vladyslav Humeniuk (Dev)
- **Technique:** Start / Stop / Continue

## Retrospective Matrix

| Start | Stop | Continue |
|---|---|---|
| • Document all technical decisions directly in Pull Requests before merging to `main`. | • Postponing task updates and moving cards in GitHub Projects until the end of the week. | • Maintaining open and proactive communication in the Telegram chat. |
| • Conduct short asynchronous daily digests in the chat twice a week (Tue, Thu). | • Taking tasks into development without clear DoR acceptance criteria. | • Utilizing a clear division of roles and responsibilities. |
| • Perform code reviews by at least one other team member within 24 to 48 hours. | • Making direct commits to the `main` branch. | • Mutual assistance and supporting overlapping areas of responsibility (ETL + BI). |

## Action Items (Improvements for Sprint 1)

1. **Backlog & DoR Compliance:** Every task must strictly comply with DoR, have an assigned MoSCoW priority, and include Story Points in GitHub Projects before moving to `In Progress`.
    - **Responsible:** Nazar Povod (Scrum Master) & Anton Krykhta (Product Owner)
    - **Verification:** Tracked during every Daily Scrum and Backlog Refinement.

2. **Synthetic Data Pipeline Execution:** Ensure data generators (master data & orders) are reproducible with fixed random seeds and proper defect logging.
    - **Responsible:** Abdullayev Dinmukhammed & Vladyslav Humeniuk (Developers)
    - **Verification:** Code review and dataset validation in PRs for US-01 & US-02.

3. **Architecture & Environment Standardization:** Finalize C4/ERD diagrams, ADRs, and ensure dockerized environment setup works smoothly for all team members.
    - **Responsible:** Nazar Povod & Anton Krykhta
    - **Verification:** Peer review of ADR pull requests and README environment setup test.