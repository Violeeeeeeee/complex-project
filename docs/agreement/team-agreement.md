# Sprint 0: Team Agreement, DoR, DoD and Scrum templates

Working draft from the Scrum Master. Project: analytics solution for the GadgetBox online store.

## 1. Team Agreement

### Team and roles

| Role | Who |
|---|---|
| Product Owner (team) | Anton Krykhta |
| Scrum Master (rotates every sprint) | Nazar Povod (Sprint 0), Vladyslav Humeniuk (Sprint 1), Abdullayev Dinmukhammed (Sprint 2)... |
| Developer | Abdullayev Dinmukhammed |
| Developer | Vladyslav Humeniuk |

Scrum Master rotation order for 6 sprints (developers only, PO does not take SM role): Nazar Povod → Vladyslav Humeniuk → Abdullayev Dinmukhammed → Nazar Povod → Vladyslav Humeniuk → Abdullayev Humeniuk.

### Communication

- Main channel: Telegram. All project decisions are recorded here or in GitHub Projects.
- Urgent matters: post in the main channel marked URGENT. Reply within 24 hours.
- If someone is silent for 48 hours without notice, the SM contacts them privately, then informs the instructor.
- Communication language: English.
- If you cannot attend a meeting, tell the team in advance in the chat.

### Working hours and meetings

| Event | When | Duration |
|---|---|---|
| Sprint Planning | First day of the sprint, Wednesday | Up to 1 hour |
| Daily Scrum | At least 2 times a week: Tuesday and Thursday (asynchronous in Telegram or on a call) | 10-15 minutes |
| Backlog Refinement | At least once per sprint, Friday | 30-45 minutes |
| Sprint Review | Last day of the sprint, in class with the instructor | Per class schedule |
| Sprint Retrospective | Right after the Review | 30 minutes |

- Approximate workload per person: 6-8 hours per week.
- Hours when the team is usually online: Monday-Friday.
- We announce unavailability (exams, work, trips) in advance: 3 days.

### Working with code and tasks

- All code and documents live in one Git repository. Direct commits to `main` are strictly prohibited; pull requests only.
- Branch naming convention: `feature/<short-description>` or `bugfix/<short-description>`.
- Commit message rule: clear, descriptive messages (e.g., "feat(etl): add order staging load script"), avoiding vague ones like "fix" or "update".
- Every pull request is reviewed by at least one other person (code review SLA: 24 to 48 hours).
- WIP limit: maximum 2 tasks in progress per person simultaneously.
- Every task in GitHub Projects has an assignee, a story point estimate, a MoSCoW priority, and an epic.
- Each person's contribution must be visible in the repository history and task tracker.
- Everyone works in at least two technical areas:
    - **Anton Krykhta:** Area 1 (Shop Platform Data) + Area 2 (Marketplace Data), helps with Area 7 (BI Models) & Area 8 (Documentation).
    - **Abdullayev Dinmukhammed:** Area 4 (Data Generator) + Area 5 (ETL & Staging), helps with Data Quality.
    - **Nazar Povod:** Area 3 (Architecture & C4/ERD) + Area 8 (Architecture Documentation & ADRs).
    - **Vladyslav Humeniuk:** Area 6 (Data Quality Tests & Automation) + Area 5 (ETL & Staging Load).

### Conflict resolution

1. First we talk directly between the people involved, calmly and on substance.
2. If there is no agreement within 2 days, we bring it to the team (the SM leads the discussion).
3. If there is still no decision, we vote: the majority decides. For technical disputes, we write a short ADR.
4. If the problem continues, the SM and PO inform the instructor.
5. We criticize the work, not the person.

### Principles

- If something blocks work, we raise it immediately without waiting for the Daily.
- We do not take a task we cannot bring to DoD.
- Every code piece or document must be fully understood and explainable by the team member who authored it (AI tools usage is allowed for assistance, but complete personal comprehension is mandatory for final presentation).

Signatures: Nazar Povod, Anton Krykhta, Abdullayev Dinmukhammed, Vladyslav Humeniuk. Date: 15.10.2026.

## 2. Definition of Ready (DoR)

A story can enter the Sprint Backlog only if everything below is true:
- It is written in format: "As a [role] I want [action] so that [benefit]".
- It has acceptance criteria in Given/When/Then format (at least 2).
- It has a MoSCoW priority and an epic assigned.
- It is estimated in story points (Planning Poker, Fibonacci scale, max 8 SP).
- Dependencies are clear and do not block execution.
- Linked to a catalog requirement (FR/NFR) for traceability.

## 3. Definition of Done (DoD)

A story is done only if everything below is true:
- All acceptance criteria are met and verified.
- Code or document is in the repository via a pull request.
- Code review was completed by another team member and comments resolved.
- Tests pass successfully (if applicable to code).
- Data loads without errors and rejected records go to the reject log (for ETL tasks).
- Documentation/README updated if architecture or setup changed.
- Traceability matrix updated.
- Task moved to Done in GitHub Projects.

## 4. Sprint 0 goal
Organize the team, establish rules, DoR/DoD, stakeholder map, and initial backlog.

## 5. Templates & Logs
- Priority change log: tracked in `docs/analysis/priority-change-log.md`.