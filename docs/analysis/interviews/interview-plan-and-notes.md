# Interview Plan and Notes

Sprint 0 | Requirements analysis | Deliverable 1 (analytical documentation)

| | |
|---|---|
| **Project** | GadgetBox - analytics solution for an online electronics store |
| **Document owner** | Product Owner (team) - [your name] |
| **Last updated** | 2026-10-12 |
| **Status** | Draft v0.2 (AI simulation approach) |

## 1. Purpose and approach

The project requires at least 3 interview or workshop sessions with role-played stakeholders. The instructor asked the team to use AI to play the stakeholders: the AI receives a prompt with the company briefing and a role, and the team interviews it as a stakeholder.

The sessions confirm the hypotheses in the [stakeholder map](../stakeholder-map.md), collect business questions and produce candidate requirements for the [requirements catalog](../requirements-catalog.md).

- **Format:** one separate AI chat per role, 30 to 40 minutes, all sessions in one block.
- **Roles in the team per session:** interviewer (asks), note-taker (writes notes), operator (runs the chat and saves the transcript). The Product Owner may take any role.
- **Evidence:** prompt, full transcript and notes for every session, stored in this folder. Notes state that the role was played by AI.
- **Limitation:** the AI invents plausible facts. Requirements from the sessions are hypotheses until confirmed with the business PO in the prioritisation session.

## 2. Roles interviewed

The map has 7 roles. Three are interviewed as the required minimum, two more as optional extensions.

| Session | Role | Status | Why this role |
|---|---|---|---|
| S-1 | Owner / CEO | Core | Profitability and the management dashboard (FR-17), plan and YoY comparison, who sees which data |
| S-2 | Category Manager | Core | Assortment report with margin, returns and ABC (FR-18), cost changes over time, promotions |
| S-3 | Logistics & Warehouse Manager | Core | Stock, ERP and carrier data behind the inventory snapshot and logistics reports (FR-05, FR-21, FR-22, FR-27) |
| S-4 | Financial Controller | Optional | Definitions of net sales, COGS valuation and reconciliation (FR-14, NFR-02) |
| S-5 | E-commerce Manager | Optional | Sessions, conversion, funnel and channel comparison (FR-15, FR-20) |

The remaining two roles (Online Marketing Specialist, Customer Service & Complaints Manager) have prompts ready in [ai-simulation/prompts](ai-simulation/prompts/) if time allows.

## 3. Session plan

| Session | Role | Date and time | Interviewer | Note-taker | Operator |
|---|---|---|---|---|---|
| S-1 | Owner / CEO | [tbd] | [name] | [name] | [name] |
| S-2 | Category Manager | [tbd] | [name] | [name] | [name] |
| S-3 | Logistics & Warehouse Manager | [tbd] | [name] | [name] | [name] |
| S-4 (optional) | Financial Controller | [tbd] | [name] | [name] | [name] |
| S-5 (optional) | E-commerce Manager | [tbd] | [name] | [name] | [name] |

## 4. Standard session structure

| Minutes | Part | What happens |
|---|---|---|
| 2 | Start | Operator pastes the prompt, AI greets the interviewer. |
| 5 | Context | The interviewee describes the role and the decisions they make. |
| 10 | Pain points and current reports | How numbers are obtained today, what is missing, what is trusted. |
| 10 | Desired answers | Business questions and KPIs they need, level of detail and frequency. |
| 5 | Priorities | If only three things were delivered, which? What can wait? |
| 3 | Wrap-up | Closing questions, then END INTERVIEW and the AI summary. |

Rule for all sessions: ask open questions, ask "why?" and "can you give an example?", and do not suggest technical solutions during the interview.

## 5. Question guide

The question lists for every role (core questions, follow-up probes and closing questions) are in [ai-simulation/questions.md](ai-simulation/questions.md).

## 6. Notes and transcripts

Copy [`_template.md`](_template.md) for each session and name the file `S1_owner-ceo.md`, `S2_category-manager.md`, `S3_logistics-warehouse.md`. Store the transcripts in [transcripts/](transcripts/).

## 7. After the sessions: checklist

1. Save prompts, transcripts and notes in this folder within one working day.
2. Use the helper prompts in [ai-simulation/post-interview-prompts.md](ai-simulation/post-interview-prompts.md) and correct the result by hand.
3. Add or update requirements in the catalog (source = interviewed role, simulation).
4. Update the stakeholder map if goals, pains or questions changed.
5. Add open questions to the next Backlog Refinement agenda and to the prioritisation session.
6. Record any priority change in the [priority change log](../priority-change-log.md).
