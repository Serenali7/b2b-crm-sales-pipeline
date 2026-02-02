# b2b-crm-sales-pipeline
SQL + Python analysis of B2B CRM pipeline, win rate, sales cycle, and revenue insights

# B2B CRM Sales Pipeline Dashboard (SQL + Python)

## Business Context
This project analyzes a B2B CRM sales pipeline to help leadership understand:
- Where pipeline drops happen (stage conversion)
- Which teams/reps drive the best performance
- How long deals take to close (sales cycle)
- What to expect for near-term revenue (weighted pipeline)

## Dataset
Source: Maven Analytics - Sales/CRM challenge dataset  
(Uploaded to `/data` and documented in `/docs`)

## Key Questions
1. Which stages have the largest drop-offs?
2. Which products/segments drive the most revenue and margin (if available)?
3. Who has the best win rate and shortest sales cycle?
4. What is the weighted pipeline forecast for the next period?

## Metrics (Definitions)
- **Win Rate** = Won Deals / Total Deals
- **Stage Conversion Rate** = Deals entering next stage / Deals in current stage
- **Avg Sales Cycle** = Close Date - Created Date (days)
- **Weighted Pipeline** = Σ(Deal Amount × Probability)

## Deliverables
- SQL queries in `/sql`
- Python notebook in `/notebooks`
- Dashboard screenshot in `/dashboard`
- Data dictionary in `/docs`

## How to Run
1. Download dataset and place files in `/data`
2. Run SQL scripts in `/sql`
3. Open notebook in `/notebooks` for analysis and visuals

## Findings & Recommendations
(Coming soon, not yet completed)
