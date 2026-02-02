-- Sales cycle analysis
SELECT
  status,
  AVG(DATEDIFF(close_date, create_date)) AS avg_sales_cycle_days
FROM sales_pipeline
WHERE close_date IS NOT NULL
GROUP BY status;
