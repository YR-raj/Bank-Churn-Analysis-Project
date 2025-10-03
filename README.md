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
- **Age is critical** → Customers aged **50+** churn significantly more (up to **56%**).  
- **Geography effect** → German customers churn at **~32%**, the highest among regions.  
- **Balance impact** → Medium-to-high balances (**100k+**) strongly correlate with churn.  
- **Membership engagement** → Inactive members churn **~27%**, more than active ones.  
- **Products** → Customers with **3–4 products churn at alarming rates (82–100%)**.  
- **Tenure & Salary** → Minimal impact on churn.  

---

## 🚀 Impact
The analysis highlights where targeted retention strategies can make the most difference:

- **Age Factor:** Customers aged 50–59 churn at **56%**, nearly **36 percentage** points above the baseline (**20.37%**). Reducing churn in this segment could significantly improve retention.

- **Geography:** German customers (**2,509 total**) churn at 32%, compared to the baseline 20.37%. This translates to **~292** avoidable customer losses, or a potential **3%** reduction in overall churn if addressed.

- **Engagement:** Inactive members churn at 27%, indicating that improving **customer engagement initiatives** could cut churn by several percentage points.

---

## 📊 Dashboards
- Single-feature churn rates (**age, geography, balance, products, activity, etc.**).  
- Cross-feature analysis (**Age × Geography, Age × Balance, Balance × Activity**).  
- **Dynamic churn slicers** for drill-down insights.  
