# B2B CRM Sales Pipeline Analysis

## Overview
This project analyzes a B2B CRM sales pipeline to evaluate funnel performance,
sales efficiency, and revenue drivers.  

The goal is to provide data-driven insights that support sales leadership in
pipeline management, forecasting, and resource allocation.

The analysis is implemented in Python using Pandas, with outputs designed to
support downstream BI dashboards and executive reporting.

## Business Context
This project analyzes a B2B CRM sales pipeline to help leadership understand:
- Where pipeline drop-offs occur across deal stages (stage conversion)
- Which teams/reps drive the best performance
- How long deals take to close (sales cycle)
- What to expect for near-term revenue (weighted pipeline)

These insights support decision-making around sales strategy, coaching, forecasting, and operational efficiency.

## Business Questions
This analysis focus on answering the following key questions:

1. Where do deals drop off most frequently in the sales funnel?
2. Which sales reps generate the highest value and win rates?
3. How long does it typically take to close a deal?
4. Which products contribute the most to total revenue?
5. How is pipeline volume distributed across stages?

## Dashboard Preview
<img width="1031" height="800" alt="Screenshot 2026-02-04 at 14 48 12" src="https://github.com/user-attachments/assets/b3e8895d-769f-4859-b937-90cba6405fe6" />
Integrated Sales Pipeline Dashboard: A comprehensive view of organizational health, combining high-level KPIs with deep-dive analysis.

## Key Metrics & Definitions
- **Win Rate** = Won Deals / Total Deals
- **Stage Conversion Rate** = Deals entering next stage / Deals in current stage
- **Avg Sales Cycle** = Close Date - Engage Date (in days)
- **Total Won Value** = Sum of deal value for closed-won opportunities  
- **Pipeline Distribution** = Share of deals by funnel stage

## Findings & Recommendations
### 1. Significant Drop-Off Occurs in Early Pipeline Stages
<img width="1014" height="205" alt="Screenshot 2026-02-04 at 15 22 48" src="https://github.com/user-attachments/assets/45ab643a-02c9-4f4b-b4ec-c731d3b97505" />

**Finding:**  
Funnel analysis reveals a critical bottleneck between Engaging and Prospecting, 
with a conversion rate of only 31.5%. Nearly 70% of potential leads exit the 
pipeline at the very start of the sales process.

**Recommendation:**  
- Audit Qualification Criteria: Review lead scoring used in the Engaging stage
  to filter out low-quality leads earlier.
- Optimize Outreach: Refine initial sales scripts and outreach cadences to improve
  early-stage engagement efficiency.
- Automated Disqualification: Introduce automated rules to disqualify inactive leads,
  allowing reps to focus on high-intent prospects.

### 2. Sales Performance Is Highly Concentrated and Segmented
<img width="1017" height="604" alt="Screenshot 2026-02-04 at 14 51 15" src="https://github.com/user-attachments/assets/07b2c276-6419-4d63-9ec0-c85fa82825ec" />

**Finding:**  
A 4-quadrant scatter plot analysis identifies that revenue is driven by a small group 
of "Stars", while a large segment of "Workhorses" maintains high deal volume but 
below-average win rates.

**Recommendation:**  
- Tailored Coaching: Use top-performer benchmarks (Stars) to inform specific
  closing-technique coaching for the Workhorse segment.
- Behavioral Documentation: Identify and document the sales patterns of
  "Niche Experts" (high win rate, low volume) to replicate their success.
- Incentive Alignment: Rebalance deal allocation to ensure that high-value
  opportunities are handled by reps with proven closing capabilities.

### 3. Cycle Velocity Shows Inconsistent Deal Progression
<img width="851" height="610" alt="Screenshot 2026-02-04 at 15 25 50" src="https://github.com/user-attachments/assets/620909c0-74f7-402f-9501-78cd9bdf1bf6" />

**Finding:**  
Sales cycle analysis indicates substantial variance in time-to-close. 
While many deals close within 10 days, a significant "long tail" of stagnant 
deals drags beyond 90 days, impacting forecasting accuracy.

**Recommendation:**  
- Early Intervention: Monitor outliers with exceptionally long cycles and
  trigger manager reviews once a deal exceeds 60 days.
- Segmented Benchmarks: Establish different cycle benchmarks for high-value vs. low-value products
  to set more realistic expectations.
- Forecasting Improvement: Incorporate deal age into forecasting models to
  discount the probability of "stale" opportunities.

### 4. Revenue Concentration Follows the Pareto Principle
<img width="1015" height="606" alt="Screenshot 2026-02-04 at 14 53 04" src="https://github.com/user-attachments/assets/ead13981-7205-47b6-abff-74ada17f2ed5" />

**Finding:**  
Pareto Analysis confirms that just 3 core products (GTXPro, GTX Plus Pro, 
and MG Advanced) contribute to approximately 80% of total revenue, 
indicating high dependency on a narrow product subset.

**Recommendation:**  
- Prioritize High-Drivers: Align marketing and demand generation efforts
  primarily with these top 3 revenue drivers to maximize ROI.
- Product Reassessment: Evaluate low-performing products (e.g., MG Special) for
  potential sunsetting or repositioning to free up resources.
- Risk Diversification: Investigate why other product lines have lower win rates and
  develop cross-selling strategies to diversify the revenue base.

### 5. Pipeline Health Monitoring via Stage-Level Metrics
**Finding:**  
Total deal volume is healthy, but the distribution across stages is imbalanced. 
A high volume in early stages without proportional mid-funnel progression 
poses a risk to near-term revenue targets.

**Recommendation:**  
- Dashboard Alerts: Set alert thresholds for unhealthy stage distributions
  (e.g., a "top-heavy" funnel with low mid-stage volume).
- Weighted Pipeline Analysis: Use weighted metrics (Value x Probability) at each
  stage to provide a more accurate short-term revenue outlook.
- Continuous Tracking: Maintain ongoing monitoring via the Sales Pipeline Dashboard
  to enable real-time tactical adjustments by sales leadership.

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

## Dataset
Source: Maven Analytics (CRM Sales Opportunities challenge dataset)

Core files used:
- `sales_pipeline.csv` – opportunity-level pipeline records (stage, dates, value, rep, product)
- `accounts.csv` – account attributes (e.g., sector, size, location)
- `products.csv` – product catalog / product metadata
- `sales_teams.csv` – sales team structure
- `data_dictionary.csv` – dataset field definitions

Each row in the sales pipeline corresponds to a single sales opportunity.

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

## Tech Stack
- Python (pandas)
- Jupyter Notebook
- Tableau (dashboard consumption via exported CSVs)

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




