# 🏦 Customer Churn Analysis (SQL + Power BI)

## Dashboard Preview  

### Sheet 1  
![Sheet 1](Dashboard/Dashboard%20Images/Sheet-1.png)  

### Sheet 2  
![Sheet 2](Dashboard/Dashboard%20Images/Sheet_2.png) 

## 📌 Project Overview
This project analyzes **customer churn for a retail bank** using **SQL** for feature engineering and exploratory analysis, and **Power BI** for dashboarding.  
The goal is to identify **key drivers of churn** and provide **business-relevant insights** for retention strategy.

---

## ⚙️ Methodology
- Uploaded raw churn dataset into **MySQL**.  
- Created enriched views with engineered features:
  - Age ranges  
  - Balance buckets  
  - Salary ranges  
  - Tenure groups  
- Conducted **SQL-based exploratory analysis** (single-feature & cross-feature).  
- Built an **interactive Power BI dashboard** for visualization and monitoring.  

---

## 🔑 Key Insights
- **Age is critical** → Customers aged **50+ churn significantly more** (up to **56%**).  
- **Geography effect** → German customers churn at **~32%**, the highest among regions.  
- **Balance impact** → Medium-to-high balances (**100k+**) strongly correlate with churn.  
- **Membership engagement** → Inactive members churn **~27%**, more than active ones.  
- **Products** → Customers with **3–4 products churn at alarming rates (82–100%)**.  
- **Tenure & Salary** → Minimal impact on churn.  

---

## 📊 Dashboards
- Single-feature churn rates (**age, geography, balance, products, activity, etc.**).  
- Cross-feature analysis (**Age × Geography, Age × Balance, Balance × Activity**).  
- **Dynamic churn slicers** for drill-down insights.  
