-- Pipeline overview metrics
SELECT
  COUNT(*) AS total_deals,
  SUM(CASE WHEN deal_stage = 'Won' THEN 1 ELSE 0 END) AS won_deals,
  ROUND(
    SUM(CASE WHEN deal_stage = 'Won' THEN 1 ELSE 0 END) * 1.0 / COUNT(*),
    3
  ) AS win_rate,
  ROUND(AVG(amount), 2) AS avg_deal_size
FROM sales_pipeline;

