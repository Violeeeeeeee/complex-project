# Sprint 0 Sessions Playbook

Planning Poker, Backlog Refinement, prioritisation session, Sprint 1 Planning note

|  |  |
|-------------------------|---------------------------------------------------------------------------|
| **Project** | GadgetBox - analytics solution for an online electronics store |
| **Document owner** | Product Owner (team) - [your name] |
| **Last updated** | 2026-10-12 |
| **Status** | Draft v0.1 |

## 1. Planning Poker session

- **Goal:** estimate the Sprint 1 stories (and a first rough estimate of the rest) in story points.
- **Participants / duration:** all 4 team members; 45 to 60 minutes.
- **Preparation:** the PO shares the stories ([backlog document](product-backlog-and-sprint1-stories.md)) one day before. Everybody reads them and notes questions.
- **Scale:** Fibonacci: 1, 2, 3, 5, 8, 13. A story of 13 must be split before it enters a sprint (the Definition of Ready allows max 8).
- **Reference story:** choose one small, well-understood story as 3 SP (proposal: US-06 environment setup) and compare every other story to it.

### Procedure

1. The PO reads the story and its acceptance criteria. The team asks questions.
2. Everybody selects an estimate privately (cards, a poker website, or a chat message sent at the same moment).
3. All reveal together. If the estimates are the same, record it.
4. If they differ, the lowest and the highest estimator explain their reasoning. Discuss briefly, then vote again (maximum 3 rounds).
5. If there is still no agreement, take the higher value or split the story, and note it.
6. The Scrum Master records the result and updates the Story Points field in GitHub Projects.

### Record

| Story | Round 1 votes | Final SP | Notes (split, assumptions, risks) |
|--------------------------------------|--------------------|----------|--------------------------------|
| US-01 Generate master data |   |   |   |
| US-02 Generate 24 months of orders |   |   |   |
| US-03 C4 Context and Container diagrams |   |   |   |
| US-04 Warehouse ERD with explicit grain |   |   |   |
| US-05 Architecture decision records (min. 4) |   |   |   |
| US-06 Reproducible dev environment and repo skeleton |   |   |   |
| US-07 Load orders into staging |   |   |   |
| US-08 KPI dictionary v0 (stretch) |   |   |   |

## 2. Backlog Refinement session (at least 1 per sprint)

- **Goal:** make the top of the backlog "Ready": clear, split, estimated and linked to requirements.
- **Participants / duration:** PO leads, whole team; 30 to 45 minutes.

**Agenda (Sprint 0)**

1. Open questions from the interviews (5 min)
2. Walk through US-01 to US-08 and clarify acceptance criteria (20 min)
3. Split any story above 8 SP (5 min)
4. Check the Definition of Ready for each story (5 min)
5. Priority changes, recorded in the log (5 min)

### Note template

|  |  |
|----------------------------------------|------------------------------------------------------------|
| **Date / participants** | [date] / [names] |
| **Stories discussed** | [US-xx, US-xx] |
| **Clarified or split** | [what changed] |
| **Priority changes (date, requirement, was to is, reason)** | [or "none"; also copy to the priority change log] |
| **Stories ready according to DoR** | [US-xx, US-xx] |

## 3. Prioritisation session with the business PO

- **Goal:** agree the Must list and the Won't list and confirm the proportions (Must at most 60% of story points).
- **Participants / duration:** business PO (instructor) and team PO, whole team invited; 45 minutes.
- **Pre-read:** [requirements catalog](../analysis/requirements-catalog.md), sent at least 2 days earlier.

### Agenda

| Minutes | Topic |
|------------|----------------------------------------------------------------------------------------|
| 5 | Recap of project goal and the structure of the catalog. |
| 15 | Must list: walk through the justification of each item. Is anything missing or over-prioritised? |
| 10 | Should and Could: confirm the order and that Could works as a buffer. |
| 5 | Won't list: confirm the exclusions and the reasons. |
| 5 | Proportion check (Must at most 60%) and Sprint 1 scope. |
| 5 | Decisions, open points, next steps. |

### Questions for the business PO

1. Must dashboards need both own store and marketplace. Is it acceptable that marketplace orders are simulated in the same order source with a channel flag?
2. Do you prefer fully synthetic data or the Olist dataset supplemented with synthetic data? Any minimum realism requirements?
3. Sprint 1 is Must-heavy by nature. Should the 60% Must limit be applied per sprint or to the whole backlog?
4. Which BI tool and environment can you open for grading, and what is the maximum setup effort for you?
5. In which language should the documentation be written (English or Polish)?
6. May the "generated data" of the Sprint 1 checkpoint be limited to master data and orders, with events and stock in Sprint 2?

### Decision record

| Requirement | Proposed | Decision | Reason | Date |
|---------------|-------------|-----------------------|----------------------------------|---------------|
| [FR-xx] | [Must] | [confirmed / changed to ...] |   |   |

## 4. Sprint 1 Planning note (pre-filled draft)

- **Sprint:** Sprint 1 | weeks 3 and 4 | dates [start] to [end]
- **Participants:** [names]
- **Sprint Goal:** **Design the solution architecture and load the first data source (orders) into the warehouse.**
- **Selected stories:** US-01, US-02, US-03, US-04, US-05, US-06, US-07 (US-08 as stretch). Final selection after Planning Poker.
- **Declared velocity (SP):** [to be set by the team; proposal range 24 to 30 SP for a first sprint]
- **Total SP / Must / Should / Could:** [total] / [27 SP Must] / [stretch US-08: 3 SP Should] / [0]
- **Minimum result at Sprint Review:** C4 and ERD diagrams, ADRs, generated data, one source (orders) loaded.
- **Decisions:** [record decisions made in the Planning]

**Risks and dependencies**

- The data generator takes longer than planned: split the work between two people and keep the first version simple.
- Team members run different environments: US-06 delivers a documented, containerised setup first.
- Technology decisions delay diagrams: close ADRs early in the sprint.
- Instructor availability for feedback: book the Sprint Review date now.

## 5. Sprint 0 closing checklist

| Item | Owner | Done |
|--------------------------------------------------------------|------------------------|--------------|
| Roles and Scrum Master rotation recorded | PO | [ ] |
| Team Agreement, DoR, DoD agreed | Scrum Master | [ ] |
| Stakeholder map confirmed after interviews | PO | [ ] |
| At least 3 interview notes stored | PO / note-takers | [ ] |
| Requirements catalog: 25+ FR, 8+ NFR, MoSCoW, justifications | PO | [ ] |
| Prioritisation session held and logged | PO | [ ] |
| Backlog in GitHub Projects with MoSCoW, SP, epic | PO / team | [ ] |
| Planning Poker held, stories estimated | Scrum Master | [ ] |
| Sprint 1 Planning note and Sprint Goal | Scrum Master | [ ] |
| Sprint Review and Retrospective with at least 1 improvement action | Scrum Master | [ ] |
