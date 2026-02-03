# B2B CRM Sales Pipeline Analysis

## Overview
This project analyzes a B2B CRM sales pipeline to evaluate funnel performance,
sales efficiency, and revenue drivers.  

The goal is to provide data-driven insights that support sales leadership in
pipeline management, forecasting, and resource allocation.

The analysis is implemented in Python using Pandas, with outputs designed to
support downstream BI dashboards and executive reporting.

## Dataset
Source: Maven Analytics (CRM Sales Opportunities challenge dataset)

Core files used:
- `sales_pipeline.csv` – opportunity-level pipeline records (stage, dates, value, rep, product)
- `accounts.csv` – account attributes (e.g., sector, size, location)
- `products.csv` – product catalog / product metadata
- `sales_teams.csv` – sales team structure
- `data_dictionary.csv` – dataset field definitions

Each row in the sales pipeline corresponds to a single sales opportunity.

## Business Context
This project analyzes a B2B CRM sales pipeline to help leadership understand:
- Where pipeline drop-offs occur across deal stages (stage conversion)
- Which teams/reps drive the best performance
- How long deals take to close (sales cycle)
- What to expect for near-term revenue (weighted pipeline)

These insights sipport decision-making around sales strategy, coaching, forecasting, and operational efficiency.

## Key Metrics & Definitions
- **Win Rate** = Won Deals / Total Deals
- **Stage Conversion Rate** = Deals entering next stage / Deals in current stage
- **Avg Sales Cycle** = Close Date - Engage Date (in days)
- **Total Won Value** = Sum of deal value for closed-won opportunities  
- **Pipeline Distribution** = Share of deals by funnel stage

## Business Questions
This analysis focus on answering the following key questions:

1. Where do deals drop off most frequently in the sales funnel?
2. Which sales reps generate the highest value and win rates?
3. How long does it typically take to close a deal?
4. Which products contribute the most to total revenue?
5. How is pipeline volume distributed across stages?

## Methodology
The analysis is conducted in a single Jupyter notebook and includes:

- Data loading and validation
- Feature engineering (win flags, won value, sales cycle)
- Funnel analysis by deal stage
- Sales cycle analysis for closed deals
- Performance aggregation by sales rep and product
- Preparation of clean output tables for BI dashboards

All calculations are performed using Pandas to mirror common SQL style
aggregations used in analytics workflows.

## Deliverables
- **01_pipeline_analysis.ipynb**  
  End-to-end analysis notebook with documented logic and outputs.

- **Dashboard-ready CSV outputs** (generated optionally):
  - `kpi_cards.csv`
  - `funnel_table.csv`
  - `sales_cycle_dist.csv`
  - `rep_perf.csv`
  - `product_perf.csv`

These outputs are designed for direct use in Tableau, Power BI, or similar BI tools.

## Findings & Recommendations
### 1. Significant Drop-Off Occurs Before Deals Reach the Final Stage
**Finding:**  
Funnel analysis shows that a large share of opportunities exit the pipeline
before reaching a closed stage, particularly between early engagement and
later-stage qualification.

**Recommendation:**  
- Review qualification criteria used in early stages to reduce low-quality leads
- Introduce clearer exit criteria or automated disqualification rules
- Provide structured sales playbooks for mid-funnel deal progression


### 2. Sales Performance Is Highly Concentrated Among a Small Group of Reps
**Finding:**  
A small number of sales reps account for a disproportionately large share of
total won revenue, while overall win rates vary meaningfully across reps.

**Recommendation:**  
- Identify best-performing reps and document their sales patterns and behaviors
- Use top-performer benchmarks to inform coaching for lower-performing reps
- Rebalance deal allocation to ensure high-value opportunities receive adequate attention


### 3. Sales Cycle Length Varies Widely Across Deals
**Finding:**  
Sales cycle analysis indicates substantial variance in time-to-close,
suggesting inconsistent deal velocity across the pipeline.

**Recommendation:**  
- Segment sales cycle benchmarks by deal stage or product
- Monitor outliers with exceptionally long cycles for early intervention
- Use sales cycle metrics to improve forecasting accuracy


### 4. Revenue Is Driven Primarily by a Subset of Products
**Finding:**  
Product-level aggregation shows that a limited number of products contribute
the majority of total won value, while others have lower average deal sizes
or win rates.

**Recommendation:**  
- Prioritize high-performing products in sales strategy and enablement
- Reassess pricing, positioning, or packaging for underperforming products
- Align marketing and demand generation efforts with top revenue drivers


### 5. Pipeline Health Requires Ongoing Stage-Level Monitoring
**Finding:**  
Although total deal volume is substantial, pipeline distribution reveals
imbalances across stages that could impact near-term revenue realization.

**Recommendation:**  
- Track stage-level pipeline metrics regularly via dashboards
- Set alert thresholds for unhealthy stage distributions
- Incorporate weighted pipeline metrics to improve short-term forecasting

## Dashboard Preview

The following dashboard was built in Tableau using the exported CSV outputs
to visualize pipeline health, sales performance, and revenue drivers.

## How to Run
1. Clone the repository
2. Ensure the following files are present in the `data` directory:
   - `sales_pipeline.csv`
   - `accounts.csv`
   - `products.csv`
   - `sales_teams.csv`
3. Open `01_pipeline_analysis.ipynb`
4. Run all cells in order  
5. (Optional) Enable CSV exports to generate dashboard outputs

## Tech Stack
- Python (pandas)
- Jupyter Notebook
- Tableau / Power BI (dashboard consumption via exported CSVs)

## Next Steps
- Build an executive-style dashboard in Tableau (KPI cards + funnel + rep/product ranking + sales cycle distribution)


