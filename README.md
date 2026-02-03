# B2B CRM Sales Pipeline Analysis

## Overview
This project analyzes a B2B CRM sales pipeline to understand funnel performance, win rates, sales cycle efficienct, and rep / product performance. It also produces BI-ready output table(csv) that can be directly used in Tableau / Power BI dashboards.

## Dataset
Source: Maven Analytics (CRM Sales Opportunities challenge dataset)

Core files used:
- `sales_pipeline.csv` – opportunity-level pipeline records (stage, dates, value, rep, product, account)
- `accounts.csv` – account attributes (e.g., sector, size, location)
- `products.csv` – product catalog / product metadata
- `sales_teams.csv` – sales team structure
- `data_dictionary.csv` – dataset field definitions

## Business Context
This project analyzes a B2B CRM sales pipeline to help leadership understand:
- Where pipeline drops happen (stage conversion)
- Which teams/reps drive the best performance
- How long deals take to close (sales cycle)
- What to expect for near-term revenue (weighted pipeline)

## Metrics (Definitions)
- **Win Rate** = Won Deals / Total Deals
- **Stage Conversion Rate** = Deals entering next stage / Deals in current stage
- **Avg Sales Cycle** = Close Date - Created Date (days)
- **Weighted Pipeline** = Σ(Deal Amount × Probability)
  *(Conceptual definition; not implemented in current notebook)*

## Business Questions
1. What is the overall win rate and total won revenue?
2. How is the pipeline distributed across stages (funnel breakdown)?
3. How long does it take to close deals (sales cycle), and how does it differ for Won vs Lost?
4. Which sales reps drive the most won value and highest win rates?
5. Which products perform best by won value and win rate

## Methodology
Implemented in `data/notebooks/01_pipeline_analysis.ipynb`:
- Data loading & basic validation
- Win flag creation (`is_won`) and won value derivation (`won_value`)
- Pipeline KPI calculations (deal count, win rate, average deal value, total won value)
- Funnel stage breakdown (counts + % of total)
- Sales cycle analysis:
  - date parsing for `engage_date` and `close_date`
  - closed-deals filtering (Won/Lost)
  - cycle length computation (days) and summary statistics
  - long-cycle deal identification (75th percentile threshold)
- Performance tables:
  - rep-level performance (`rep_perf`)
  - product-level performance (`product_perf`)

## Deliverables
### 1) Notebook
- `data/notebooks/01_pipeline_analysis.ipynb`

### 2) BI-ready output tables
Exported to `data/dashboard/`:
- `kpi_cards.csv` – top-level KPI cards
- `funnel_table.csv` – stage funnel counts + % of total
- `sales_cycle_dist.csv` – deal-level sales cycle table for distributions
- `rep_perf.csv` – rep performance summary
- `product_perf.csv` – product performance summary

## How to Run
1. Clone the repo
2. Open `data/notebooks/01_pipeline_analysis.ipynb`
3. Run all cells (data files live in `data/`)
4. (Optional) Export CSV outputs for BI use

## Tech Stack
- Python (pandas)
- Jupyter Notebook
- Tableau / Power BI (dashboard consumption via exported CSVs)

## Next Steps
- Build an executive-style dashboard in Tableau (KPI cards + funnel + rep/product ranking + sales cycle distribution)
- Add a short “Findings & Recommendations” section based on the dashboard insights

