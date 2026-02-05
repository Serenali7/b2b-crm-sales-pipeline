-- Sales cycle analysis: days from first engagement to close
SELECT
  deal_stage,
  ROUND(
    AVG(DATEDIFF(close_date, engage_date)),
    1
  ) AS avg_sales_cycle_days,
  COUNT(*) AS deals
FROM sales_pipeline
WHERE close_date IS NOT NULL
  AND engage_date IS NOT NULL
GROUP BY deal_stage
ORDER BY avg_sales_cycle_days;

