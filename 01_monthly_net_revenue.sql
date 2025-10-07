SELECT strftime('%Y-%m-01', invoice_date) AS month,
       SUM(net_amount) AS net_revenue
FROM invoices
GROUP BY 1
ORDER BY 1;