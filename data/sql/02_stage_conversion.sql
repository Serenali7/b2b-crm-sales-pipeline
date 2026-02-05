-- Stage conversion (drop-off) by sales stage
WITH stage_counts AS (
  SELECT
    stage,
    COUNT(*) AS deals_in_stage,
    SUM(CASE WHEN deal_stage = 'Won' THEN 1 ELSE 0 END) AS won_deals
  FROM sales_pipeline
  GROUP BY stage
)
SELECT
  stage,
  deals_in_stage,
  won_deals,
  ROUND(won_deals * 1.0 / deals_in_stage, 4) AS win_rate_in_stage
FROM stage_counts
ORDER BY deals_in_stage DESC；

Add stage conversion
