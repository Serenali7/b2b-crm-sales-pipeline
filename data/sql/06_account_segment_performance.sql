-- 06 Account segment performance: win rate + value by industry (sector) and company size
WITH joined AS (
  SELECT
    sp.opportunity_id,
    sp.sales_agent,
    sp.product,
    sp.account,
    sp.deal_stage,
    sp.engage_date,
    sp.close_date,
    sp.close_value,
    a.sector,
    a.revenue,
    a.employees,
    a.office_location,
    a.year_established
  FROM sales_pipeline sp
  LEFT JOIN accounts a
    ON sp.account = a.account
),
segmented AS (
  SELECT
    *,
    CASE
      WHEN employees IS NULL THEN 'Unknown'
      WHEN employees < 200 THEN 'Small (<200)'
      WHEN employees < 1000 THEN 'Mid (200-999)'
      ELSE 'Large (1000+)'
    END AS company_size
  FROM joined
)

SELECT
  sector,
  company_size,
  COUNT(*) AS total_deals,
  SUM(CASE WHEN deal_stage = 'Won' THEN 1 ELSE 0 END) AS won_deals,
  ROUND(
    SUM(CASE WHEN deal_stage = 'Won' THEN 1 ELSE 0 END) * 1.0 / COUNT(*),
    3
  ) AS win_rate,
  ROUND(AVG(close_value), 2) AS avg_close_value,
  ROUND(
    SUM(CASE WHEN deal_stage = 'Won' THEN close_value ELSE 0 END),
    2
  ) AS total_won_value
FROM segmented
GROUP BY sector, company_size
ORDER BY total_won_value DESC, win_rate DESC;
