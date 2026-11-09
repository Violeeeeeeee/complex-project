# Prompts to use after the interviews

These prompts turn a transcript into notes and candidate requirements. They are helpers: **a team member must read and correct the result** before it goes into the repository. The Product Owner decides what enters the catalog.

## 1. Notes from one interview

Paste the transcript after the prompt, in the same chat after END INTERVIEW or in a new chat.

```text
You are helping a student team document a requirements interview. Below is the transcript of a
simulated interview with a GadgetBox stakeholder. Write interview notes in English using exactly
these headings:

Key answers
Pain points
Business questions (new or changed)
Candidate requirements (short description, FR or NFR, how strongly the interviewee wanted it)
Priority signals (what the interviewee called most important or "must have")
Open questions and follow-ups
Changes to the stakeholder map (goals, pains or questions that differ from the hypotheses)

Rules: use only what is in the transcript, do not invent facts, keep each bullet to one sentence,
and mark anything you are unsure about with [check].

TRANSCRIPT:
[paste transcript]
```

## 2. Map candidate requirements to the catalog

```text
Below is the current requirements catalog index and interview notes. For every candidate requirement
in the notes decide: (a) it matches an existing item (give the ID), (b) it extends or changes an
existing item (give the ID and the change), or (c) it is new (propose a one-sentence description, type
FR or NFR, and the source role). Output a table with columns: Candidate, Decision (a/b/c), Catalog ID,
Proposed text, Source role, Evidence (a short phrase from the notes). Do not assign MoSCoW; only
note the interviewee's priority signal.

FUNCTIONAL REQUIREMENTS:
FR-01 Synthetic data: master and order data [Must]
FR-02 Synthetic data: events, stock and operations [Must]
FR-03 Load orders [Must]
FR-04 Load web events [Must]
FR-05 Load ERP/WMS data [Must]
FR-06 Load returns and complaints (RMA) [Must]
FR-07 Data cleaning and validation [Must]
FR-08 Product and customer unification [Must]
FR-09 Data-quality tests [Must]
FR-10 Dimensional model [Must]
FR-11 SCD Type 2 [Must]
FR-12 Net sales and order count [Must]
FR-13 Average order value (AOV) [Must]
FR-14 Gross margin [Must]
FR-15 Conversion rate [Must]
FR-16 Return and complaint rate [Must]
FR-17 Management dashboard [Must]
FR-18 Assortment report [Must]
FR-19 Incremental loading [Should]
FR-20 Purchase funnel and abandoned carts [Should]
FR-21 Inventory report [Should]
FR-22 Logistics report [Should]
FR-23 Marketing effectiveness (CAC, ROAS) [Should]
FR-24 Promotion impact [Should]
FR-25 Row-level security (RLS) [Should]
FR-26 Scheduled pipeline with monitoring [Should]
FR-27 Load carrier shipment statuses [Should]
FR-28 Contribution margin [Could]
FR-29 Demand forecast [Could]
FR-30 Customer segmentation (RFM, cohorts, CLV) [Could]
FR-31 Market-basket analysis [Could]
FR-32 Reviews, NPS and complaint text analysis [Could]
FR-33 CI/CD pipeline [Could]
FR-34 Dynamic pricing [Won't]
FR-35 Real-time recommendation engine [Won't]
FR-36 Build or modify the online shop [Won't]
FR-37 Real-time streaming ingestion [Won't]

NON-FUNCTIONAL REQUIREMENTS:
NFR-01 Performance [Must]
NFR-02 Correctness (reconciliation) [Must]
NFR-03 Data protection (GDPR/RODO) [Must]
NFR-04 Versioning [Must]
NFR-05 Reproducibility [Must]
NFR-06 Usability [Should]
NFR-07 Scalability [Should]
NFR-08 Documentation (data and KPI dictionary) [Should]
NFR-09 Accessibility [Could]
NFR-10 Reliability (idempotent loads) [Should]
NFR-11 Architecture documentation [Must]

INTERVIEW NOTES:
[paste notes]
```

## 3. Conflicts between roles (use after all interviews)

```text
Below are the notes of several interviews with different GadgetBox stakeholders. List (1) places where
two roles define the same KPI or term differently, (2) conflicting priorities, (3) topics mentioned by
several roles (these are likely high priority), and (4) open questions for the prioritisation session.
Use short bullets and name the roles involved.

NOTES:
[paste all notes]
```

## 4. Checks before saving

- Read the AI output against the transcript. Remove anything the interviewee did not say.
- Replace [check] marks with a decision.
- Name the file by session and role and add the header: role played by AI simulation, model and date.
