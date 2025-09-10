----------- CROSS FEATURES ANALYSIS --------------

-- Age x Geography
select 
age_range,
Geography,
COUNT(*) as total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(100.0 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
from churn_modelling_enriched
GROUP BY age_range, Geography
ORDER BY churn_rate desc;
/*
Customers from Germany with age_range "50-70" has churn_rate with 66% .
Customers from France with age_range "50-60" is churning more with churn_rate 50% . 
Customers from Spain with age_range "50-60" is churning more with churn_rate 45% . 
*/

-- Age x Balance
select 
age_range,
balance_range,
COUNT(*) as total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(100.0 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
from churn_modelling_enriched
GROUP BY age_range, balance_range
ORDER BY churn_rate desc;
/*Customers in their 50s and above with medium to high balances churn disproportionately more than any other group.*/


-- Age x IsActiveMember
select
age_range,
isactivemember,
COUNT(*) as total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(100.0 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
from churn_modelling_enriched
GROUP BY age_range, isactivemember
ORDER BY churn_rate desc;
/*Inactive members above 50s churn more*/


-- Balance x IsActiveMember
select 
balance_range, 
isactivemember,
COUNT(*) AS total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM churn_modelling_enriched
GROUP BY balance_range, IsActiveMember
ORDER BY churn_rate desc;
/*Inactive members with medium to high balance are churning.*/


