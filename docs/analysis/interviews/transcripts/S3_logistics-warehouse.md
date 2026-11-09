# Transcript: S-3 Logistics & Warehouse Manager (AI simulation)

| | |
|---|---|
| **Session** | S-3 |
| **Role / persona** | Logistics and Warehouse Manager, Katarzyna Zielinska |
| **Played by** | AI simulation, Google Gemini (model: [exact model name]) |
| **Date of the session** | [yyyy-mm-dd] (PDF export printed 2026-11-08) |
| **Interviewer / note-taker / operator** | [name] / [name] / [name] |
| **Prompt used** | [../ai-simulation/prompts/05-logistics-warehouse-manager.md](../ai-simulation/prompts/05-logistics-warehouse-manager.md) |
| **Source** | Chat "Logistics Manager Interview Session" in Google Gemini (PDF export). Cleaned for the repository: duplicated text removed, speakers labelled, wording unchanged |
| **Known gaps** | Three answers are cut off at page breaks of the PDF export (marked [TRUNCATED]); replace them with the full text copied from the Gemini chat |

---

**Katarzyna Zielinska (AI):** Hello, I'm Katarzyna Zielinska, Logistics and Warehouse Manager here at GadgetBox, and I'm ready to answer your questions about how we operate.

**Interviewer:** 1. How many warehouses are there, and which stock exports exist (format, frequency)?

**Katarzyna Zielinska (AI):** We operate out of two warehouses: Warehouse A is our main hub handling the vast majority of our shipments, while Warehouse B is much smaller and mostly takes care of overflow and B2B orders. Every morning, our warehouse management system automatically generates a CSV file with the daily stock levels for both locations. One frustrating daily reality is that a product might show as "in stock" overall, but it's actually sitting in Warehouse B when my team needs to pack a regular consumer order from Warehouse A. Other than that single morning CSV, we don't get any automated inventory updates as the day progresses. And just so you know, if you are looking for purchase prices to calculate costs, you won't find them in my stock export—those live completely separately over in the ERP system.

**Interviewer:** Why these specific points?

**Katarzyna Zielinska (AI):** Because these are the exact operational friction points that ruin my team's day and cause order delays. A single morning CSV export means that by noon—especially if Marketing drops a promo on chargers without telling us—we're basically operating blind on real inventory. Having two warehouses without real-time coordination means we end up splitting orders into multiple parcels or delaying shipments just to shuffle items between Warehouse A and B. And I brought up the ERP price disconnect because people keep asking me about stock value and margins but I can't assess profitability or holding costs **[TRUNCATED in the PDF export: the answer is cut off here; paste the rest from the Gemini chat]**

**Interviewer:** 2. How do you detect stockouts and overstock today? can you give an example?

**Katarzyna Zielinska (AI):** Honestly, it is highly manual and often happens when it's already too late. For stockouts, I usually find out when my warehouse staff can't pack an order because Marketing launched a surprise promotion on our bestselling power banks, and the physical inventory drained completely by noon. As for overstock, I mostly notice it by walking the floor and seeing the same seasonal smartphone accessories—like winter touchscreen gloves—piling up on the shelves for months. I can filter the morning WMS export for high quantities, but nothing in that file tells me if an item hasn't had a single sale in the last 90 days. I really just need a simple, daily list showing me what is collecting dust and what is about to run out, so I can actually manage the space instead of just reacting to it.

**Interviewer:** 3. What counts as slow-moving stock (for example no sales for 90 days)?

**Katarzyna Zielinska (AI):** Exactly, my rule of thumb is that anything without a single customer order in the last 90 days is slow-moving dead weight. Right now, things like outdated smartwatch bands or summer waterproof phone cases just sit in Warehouse A taking up valuable shelf space, and no system flags them for me automatically. But here is a catch you probably haven't thought of when looking at the data: our WMS tracks the "last movement" of a product, not the last *sale*. So, if I transfer a box of those dead phone cases from our overflow Warehouse B to Warehouse A just to consolidate space, the system resets the date, making that stock look fresh again. That's why I need a simple list based on actual sales **[TRUNCATED in the PDF export: the answer is cut off here; paste the rest from the Gemini chat]**

**Interviewer:** 4. Which carriers do you use, and what status data do they provide?

**Katarzyna Zielinska (AI):** We ship through two courier companies and one parcel-locker network. Each carrier provides tracking statuses—like picked up, in transit, out for delivery, and delivered—but they only show them inside their own separate portals, so I have to check three places. The biggest headache is that one of the couriers updates their statuses with a massive delay, sometimes hours or a day after the package was actually handed to the customer. On top of that, when an order is split into multiple parcels from our warehouses, the shop platform only registers the tracking status for the first parcel, leaving us totally blind to whether the rest of the order arrived on time. Right now, comparing carrier performance against the delivery date we promised the customer at checkout is an absolute nightmare.

**Interviewer:** 5. What does "on time" mean: promised date, carrier SLA?

**Katarzyna Zielinska (AI):** For me, "on time" means strictly one thing: the delivery date promised to the customer at checkout. I don't judge performance based on carrier SLAs, because a courier can easily hit their own internal 24-hour delivery window while the customer still gets their package late if we had picking delays in the warehouse. For example, if a B2C customer orders a charger on Tuesday and checkout promises delivery by Thursday afternoon, handing it over on Friday is a failure—regardless of when the courier picked it up from Warehouse A. Carriers always boast about 98% SLA compliance in their own portals, but that completely ignores our actual promise to the buyer. I need a report that measures the full timeline from the promised checkout date to the moment the final parcel reaches the customer's door or parcel locker.

**Interviewer:** 6. How are orders shipped in several parcels recorded?

**Katarzyna Zielinska (AI):** When we have to split an order—for instance, shipping a gaming keyboard from Warehouse A and the matching headset from Warehouse B—my packing team generates two separate labels and tracking numbers. The problem is that our shop platform is only designed to accept one tracking link per order, so it just grabs the first one we create and ignores the rest. Because of this, as soon as that first parcel is dropped in a parcel locker, the shop platform automatically marks the entire order as 'Delivered'. Then Customer Service gets angry messages from buyers missing half their items, and my warehouse staff has to manually hunt down the second tracking number directly in the carrier portals to prove it's still in transit. If you build a report for me, I need a simple view that ties every individual parcel back to the single original order ID, so we know when the *complete* order actually reaches the customer.

**Interviewer:** 1. Describe the last stockout of a popular product. How did you find out?

**Katarzyna Zielinska (AI):** It happened just last week with a popular 20,000 mAh power bank. Marketing launched a flash discount on Allegro on Thursday morning without giving my team any heads-up. We only had about 120 units sitting in Warehouse A, and by 11 AM the picking bin was completely empty with over 30 orders left waiting to be packed. I found out the hard way: my lead packer physically walked up to my desk to tell me they were out of stock, while Customer Service started blowing up my phone asking why orders weren't moving. If Marketing had just warned us, we could have transferred the 50 backup units sitting in Warehouse B beforehand to handle the rush.

**Interviewer:** 2. How do you handle an order that ships in two parcels?

**Katarzyna Zielinska (AI):** When we have to split an order—like shipping a smart-home hub from Warehouse A and its accessories from Warehouse B—my teams pack them separately and print two different carrier labels. Unfortunately, our shop platform can only handle one tracking link per order, so it only saves the very first one we create. Once that first package reaches the customer's parcel locker, the system immediately marks the entire order as delivered. The customer inevitably panics and calls support about missing items, forcing my warehouse staff to stop packing, log into the specific carrier's portal, and manually track down the second shipment just to prove it is still on the way. It creates unnecessary **[TRUNCATED in the PDF export: the answer is cut off here; paste the rest from the Gemini chat]**

**Interviewer:** 3. What list would you want printed every morning?

**Katarzyna Zielinska (AI):** I want a single, actionable list that highlights imminent stockouts and dead inventory across both warehouses before my shift even starts. For fast-moving items, it needs to show me products with less than three days of stock left based on real sales velocity, so I can pull backups from Warehouse B before a Marketing promo empties us out. On the flip side, it must list any product that hasn't had a single customer order in over 90 days, completely ignoring those fake 'last movement' dates from internal warehouse transfers. I just need a simple, reliable printout I can hand to my floor supervisors every morning to clear out the dead weight and restock the empty bins.

**Interviewer:** END INTERVIEW

**AI (out of character):**

*Pain points expressed*

- **Inventory Blind Spots & Disconnects:** WMS stock exports are generated only once daily via morning CSV, leaving the team blind to intraday stock changes across Warehouse A and Warehouse B. Additionally, stock levels in WMS are isolated from purchase prices in the ERP.
- **Unannounced Marketing Promotions:** Marketing launches campaigns without notifying logistics, causing rapid stockouts on popular items (e.g., chargers, power banks).
- **Multi-Parcel Order Tracking Failures:** The shop platform records only the first parcel label generated per order, automatically marking multi-parcel orders as "Delivered" when the first item arrives. This triggers customer complaints and forces manual tracking across carrier portals.
- **Flawed Slow-Moving Stock Rules:** WMS logs internal warehouse stock transfers as "product movement," masking true dead stock (no sales in >90 days) and clogging warehouse floor space.
- **Fragmented Carrier SLA Monitoring:** Carrier performance must be checked in three separate carrier portals. One courier updates tracking statuses with severe delays, and carriers measure SLAs against pickup times rather than the delivery date promised to the customer at checkout.
- **Unmeasured Opportunity Costs:** Inability to calculate or estimate lost sales resulting from stockouts.

*Business questions to answer*

- Which products are at immediate risk of running out of stock within the next 1-3 days based on real-time sales velocity across both warehouses?
- Which specific SKUs have generated zero customer orders across all channels in the last 90+ days, excluding internal transfers?
- Are carriers delivering all packages on or before the promised delivery date shown to the customer at checkout?
- What is the true delivery status of every individual parcel associated with a single multi-parcel order ID?
- How much potential sales revenue is being lost due to product stockouts?

*Top 3 priorities*

1. **Daily Actionable Inventory Report:** A consolidated daily list showing real-time days of stock (to prevent promo-driven stockouts) and true 90+ day dead stock across both Warehouse A and B.
2. **Order-Level Multi-Parcel Tracking:** A unified tracking view that ties all generated shipping labels and carrier statuses back to a single master order ID.
3. **Promised-Date Carrier SLA Dashboard:** Performance metrics measuring carrier delivery speed strictly against the delivery date promised to the customer during checkout.
