-- 02_monthly_booked_mrr.sql
WITH months AS (
  SELECT DISTINCT strftime('%Y-%m-01', invoice_date) AS month
  FROM invoices
),
snap AS (
  SELECT m.month,
         s.customer_id,
         SUM(s.mrr) AS mrr
  FROM months m
  JOIN subscriptions s
    ON date(s.start_date) <= date(m.month, '+1 month', '-1 day')
   AND date(s.end_date)   >= date(m.month)
  GROUP BY 1, 2
)
SELECT month, SUM(mrr) AS total_mrr
FROM snap
GROUP BY 1
ORDER BY 1;
