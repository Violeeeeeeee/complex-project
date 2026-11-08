# Sprint 0: Team Agreement, DoR, DoD and Scrum templates

Working draft from the Scrum Master. Everything in square brackets [...] must be filled in or agreed with the team. Project: analytics solution for the GadgetBox online store.

## 1. Team Agreement

### Team and roles

| Role | Who                     |
|---|-------------------------|
| Product Owner (team) | Anton Krykhta           |
| Scrum Master (rotates every sprint) | Nazar Povod             |
| Developer | Abdullayev Dinmukhammed |
| Developer | Vladyslav Humeniuk      |

Scrum Master rotation order for 6 sprints (Sprint 0 counts too): Nazar Povod → Anton Krykhta → Vladyslav Humeniuk →
Abdullayev Dinmukhammed → Nazar Povod -> Anton Krykhta. Whoever has already been SM does not take the role again until everyone has had a turn.

### Communication

- Main channel: Telegram. All project decisions are recorded here or in GitHub Projects.
- Urgent matters: post in the main channel marked URGENT. Reply within 24 hours.
- If someone is silent for 48 hours without notice, the SM contacts them privately, then informs the instructor.
- Communication language: English.
- If you cannot attend a meeting, tell the team in advance in the chat.

### Working hours and meetings

| Event | When                                                                | Duration |
|---|---------------------------------------------------------------------|---|
| Sprint Planning | first day of the sprint, Wednesday                                  | up to 1 hour |
| Daily Scrum | at least 2 times a week: Tuesday and Thursday, in chat or on a call | 10-15 minutes |
| Backlog Refinement | at least once per sprint: Friday                                    | 30-45 minutes |
| Sprint Review | last day of the sprint, in class with the instructor                | per class schedule |
| Sprint Retrospective | right after the Review                                              | 30 minutes |

- Approximate workload per person: 6-8 hours per week.
- Hours when the team is usually online: Monday-Friday.
- We announce unavailability (exams, work, trips) in advance: 3 days.

### Working with code and tasks

- All code and documents live in one Git repository. Direct commits to main are not allowed, pull requests only.
- Every pull request is reviewed by at least one other person (code review).
- Every task in GitHub Projects has an assignee, a story point estimate, a MoSCoW priority and an epic.
- Each person's contribution must be visible in the repository history and in the task tool, so we move our own tasks on time.
- Everyone works in at least two areas (project requirement). 
- Split: Anton: 1 + 2 (helps 7, 8); Abdullayev Dinmukhammed: 4 + 5; Nazar Povod 3 + 8; Vladyslav Humeniuk 9 + 6.

### Conflict resolution

1. First we talk directly between the people involved, calmly and on the substance.
2. If there is no agreement within 2 days, we bring it to the team (the SM leads the discussion).
3. If there is still no decision, we vote: the majority decides. For technical disputes we can write a short ADR with the options and the decision.
4. If the problem continues (e.g. someone is not working), the SM and PO inform the instructor.
5. We criticize the work, not the person.

### Principles

- If something blocks work, we say so immediately and do not wait for the Daily.
- We do not take a task we cannot bring to DoD.
- We record decisions and priority changes.

Signatures (write "I agree" in the chat): Nazar Povod, Anton Krykhta, Abdullayev Dinmukhammed, Vladyslav Humeniuk. Date: 15.10.2026.

## 2. Definition of Ready (DoR)

A story can enter the Sprint Backlog only if everything below is true:

- It is written as "As a [role] I want [action] so that [benefit]".
- It has acceptance criteria in Given/When/Then format (at least 2).
- It has a MoSCoW priority and an epic.
- It is estimated in story points (Planning Poker, Fibonacci scale).
- Its size is at most 8 story points, otherwise it must be split.
- Dependencies (data, other stories) are clear and do not block the start.
- The team understands the story and questions to the PO have been answered.
- It is linked to a requirement from the catalog (FR/NFR) so the traceability matrix stays complete.

## 3. Definition of Done (DoD)

A story is done only if everything below is true:

- All acceptance criteria are met and verified.
- Code or document is in the repository via a pull request.
- Code review was done by another team member and comments were addressed.
- Tests are written or updated (SQL reconciliation, dbt tests or pytest) and pass.
- Data loads without errors and rejected records go to the log.
- Documentation is updated (README, data and KPI dictionary, diagrams if the architecture changed).
- The traceability matrix is updated (requirement → story → solution element → test).
- The result can be shown at the Sprint Review.
- The task in the tracker is moved to Done.

## 4. Sprint 0 goal

Organize the team and prepare the foundation: roles, working rules, DoR/DoD, stakeholder map and an initial backlog with MoSCoW priorities.

Minimum result for the Sprint Review: roles, Team Agreement, DoR/DoD, stakeholder map (at least 5 roles) and an initial backlog with MoSCoW priorities.

## 5. Template: Backlog Refinement

- Date: [ ] Participants: [ ]
- Stories discussed: [ ]
- What was clarified or split: [ ]
- Priority changes (date, requirement, was → is, reason): [ ]
- Stories ready per DoR: [ ]

## 6. Template: sprint metrics

| Sprint | Planned SP | Completed SP | Stories carried over | Reason for deviation |
|---|---|---|---|---|
| Sprint 0 | [ ] | [ ] | [ ] | [ ] |
| Sprint 1 | [ ] | [ ] | [ ] | [ ] |

Attach the sprint burndown chart and the project burnup chart to the table (GitHub Projects or Jira generate them automatically).

## 7. Template: priority change log

| Date | Requirement | Was | Is | Reason |
|---|---|---|---|---|
| [ ] | [FR-xx] | [Should] | [Must] | [ ] |
