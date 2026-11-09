# AI simulation of stakeholder interviews

The instructor asked the team to simulate stakeholders with AI. This folder has everything needed to run the sessions.

## Which roles

Required minimum is 3 roles. Recommended core set:

| Session | Role | Prompt |
|---|---|---|
| S-1 | Owner / CEO | [prompts/01-owner-ceo.md](prompts/01-owner-ceo.md) |
| S-2 | Category Manager | [prompts/03-category-manager.md](prompts/03-category-manager.md) |
| S-3 | Logistics & Warehouse Manager | [prompts/05-logistics-warehouse-manager.md](prompts/05-logistics-warehouse-manager.md) |
| optional | Financial Controller | [prompts/02-financial-controller.md](prompts/02-financial-controller.md) |
| optional | E-commerce Manager | [prompts/04-ecommerce-manager.md](prompts/04-ecommerce-manager.md) |
| spare | Online Marketing Specialist | [prompts/06-marketing-specialist.md](prompts/06-marketing-specialist.md) |
| spare | Customer Service & Complaints Manager | [prompts/07-customer-service-manager.md](prompts/07-customer-service-manager.md) |

## How to run one session

1. Open a **new** chat with the AI. One chat per role, so roles do not mix.
2. Paste the whole prompt file (company briefing + role prompt) as the first message.
3. The AI greets you in character. Ask the questions from [questions.md](questions.md), one at a time, in the order: core questions, follow-up probes, closing questions.
4. The note-taker writes notes in [the template](../_template.md) while the interview runs.
5. Write END INTERVIEW. The AI leaves the role and gives a short summary.
6. Copy the whole conversation into `transcripts/` (see [transcripts/README.md](../transcripts/README.md)).

If the AI breaks character, remind it: "Please stay in the role of [name], [title], and continue."
If you must use one chat for all roles, write "END INTERVIEW" and then paste the next role prompt, but separate chats give more consistent answers.

## After the sessions

Use [post-interview-prompts.md](post-interview-prompts.md) for notes, mapping to the catalog and conflicts between roles, and then correct everything by hand.

## What to save

| What | Where |
|---|---|
| Prompt used | this folder (prompts/), unchanged, or the changed version if you edited it |
| Full conversation | ../transcripts/S1_owner-ceo.md and so on |
| Notes | ../S1_owner-ceo.md and so on (from the template) |
| Model and date | in the header of the notes and of the transcript |

## Honest limits

- The AI is not a real stakeholder. It invents plausible facts, and it can agree too easily. Treat everything as a hypothesis.
- Ask "why?" and "what happens if we do not do this?" to get priorities instead of wishes.
- The Product Owner decides what enters the catalog, and the business PO (instructor) confirms priorities.
