-- Product performance: volume, win rate, avg close value, total won value
SELECT
  product,
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
FROM sales_pipeline
GROUP BY product
ORDER BY total_won_value DESC, win_rate DESC;
