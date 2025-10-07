-- 03_cohort_retention.sql
WITH months AS (
  SELECT DISTINCT strftime('%Y-%m-01', invoice_date) AS month FROM invoices
),
cohorts AS (
  SELECT customer_id, strftime('%Y-%m-01', signup_date) AS cohort_month
  FROM customers
),
active AS (
  SELECT DISTINCT s.customer_id, m.month
  FROM subscriptions s
  JOIN months m
    ON date(s.start_date) <= date(m.month, '+1 month', '-1 day')
   AND date(s.end_date)   >= date(m.month)
)
SELECT c.cohort_month,
       a.month,
       COUNT(DISTINCT a.customer_id) AS active_customers
FROM cohorts c
JOIN active a USING(customer_id)
GROUP BY 1,2
ORDER BY 1,2;
