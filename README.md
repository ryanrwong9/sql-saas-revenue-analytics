# 💼 SQL SaaS Revenue Analytics

This project demonstrates practical SQL analytics skills using a realistic **SaaS (Software-as-a-Service)** business dataset.  
It answers core BizOps, Strategic Finance, and FP&A questions — such as revenue trends, MRR evolution, and cohort retention — using clean, modular SQL queries.

---

## 📊 Project Overview

**Business context:**  
A fictional SaaS company tracks customers, their subscriptions, monthly invoices, and payments.  
We want to understand:
- 📈 How revenue is trending over time  
- 💰 How booked MRR evolves month-to-month  
- 🧍 How well customer cohorts are retained

**Key dataset tables:**  
| Table | Description |
|-------|-------------|
| `customers` | Customer info (region, industry, signup date) |
| `subscriptions` | Subscription history (start/end dates, MRR, plan) |
| `invoices` | Monthly billing info with discounts |
| `payments` | Cash collections by invoice |

---

## 🧮 SQL Analyses

| File | Analysis | Business Question |
|------|---------|---------------------|
| `01_monthly_net_revenue.sql` | Monthly net revenue | “What is our net revenue after discounts over time?” |
| `02_monthly_booked_mrr.sql` | MRR snapshot by month | “How is our booked MRR growing each month?” |
| `03_cohort_retention.sql` | Cohort retention matrix | “How well do customer cohorts stay active over time?” |

---

## 🛠 How to Run Locally

### 1️⃣ Requirements
- [**DB Browser for SQLite**](https://sqlitebrowser.org/) *(free & lightweight)*

### 2️⃣ Setup
1. Open `saas_analytics.sqlite` in DB Browser  
2. Navigate to the **Execute SQL** tab  
3. Copy and paste queries from the `/sql` folder  
4. Run each query to see the results

---

## 🧠 Why This Project Matters

Finance & BizOps teams rely on SQL to build recurring analyses like:
- Revenue dashboards  
- Bookings vs billings vs cash reconciliations  
- Retention & churn reporting  
- Cohort analysis for forecasting

This project shows I can:
- Work with relational data  
- Write clear, modular SQL  
- Derive actionable insights from raw tables

---

## 🧑‍💻 Tech Stack

- **SQL:** SQLite  
- **Dataset:** Synthetic SaaS dataset (customers, subscriptions, invoices, payments)  
- **Tooling:** DB Browser for SQLite

---

## 🚀 Next Steps

- Add Python notebook for data visualization (e.g. MRR trends & retention heatmaps)  
- Build a simple dashboard (Metabase / Tableau / Looker Studio)  
- Expand with more advanced SQL (window functions, churn rate calcs, etc.)

---

## ✨ Author

👋 **Ryan Wong**  
💼 Finance Transformation | BizOps | FP&A  
📍 San Francisco, CA
