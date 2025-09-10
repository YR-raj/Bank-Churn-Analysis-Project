select * from churn_modelling_enriched;

-------------- SINGLE FEATURE ANALYSIS -------------

-- CreditScore
select 
credit_score_range,
COUNT(*) AS total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate
FROM churn_modelling_enriched
GROUP BY credit_score_range
ORDER BY churn_rate desc;
/*Most of the customers belong to "550-750" (Approx 7k). 
However, high churn rate is seen in "350-450" category where churn rate is around 33% */

-- Geography
select 
geography,
COUNT(*) AS total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate
FROM churn_modelling_enriched
GROUP BY geography
ORDER BY churn_rate desc;
/*Most of the customers are form France (approx 50%).
However, the churn is seen more from Germany with churn rate around 32% */

-- Gender
select 
gender,
COUNT(*) AS total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate
FROM churn_modelling_enriched
GROUP BY gender
ORDER BY churn_rate desc;
/*Distribution is more or less equal.
churn is higher in Female with 25% churn rate*/

-- Age
select 
age_range,
COUNT(*) AS total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS churn_rate
FROM churn_modelling_enriched
GROUP BY age_range
ORDER BY churn_rate desc;
/*
Most of the customers are from the range "30-50" (approx 7k).
but churn is higher in range "40-50" with 30% churn rate in comparison to "30-40" with 10% churn rate.
However, the highest churn is seen in the range "50-60" with 56% churn rate
*/

-- Tenure
SELECT 
tenure_range, 
COUNT(*) AS distribution,
sum(case when exited =1 then 1 else 0 end) as churned,
round(sum(case when exited = 1 then 1 else 0 end) * 100.0/count(*), 2) as churn_rate
FROM churn_modelling_enriched
GROUP BY tenure_range
ORDER BY churn_rate;
/*Distribution and churn rate is more or less same.
Each range has approx 20% churn rate*/

-- Balance
SELECT 
balance_range, 
COUNT(*) AS distribution,
sum(case when exited =1 then 1 else 0 end) as churned,
round(sum(case when exited =1 then 1 else 0 end) * 100.0/count(*), 2) as churn_rate
FROM churn_modelling_enriched
GROUP BY balance_range
ORDER BY churn_rate desc;
/*Distribution is higher in range "No balance" and "100k-150k" with approx 7.5k customers.
However, churn is seen more in range "200k" with churn rate 55% */

-- NumOfProducts
select 
NumOfProducts,
COUNT(*) AS total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate
FROM churn_modelling_enriched
GROUP BY NumOfProducts
ORDER BY churn_rate desc;
/*Distribution is higher in customers having 1 and 2 products (approx 9.5k). 
Between them, more churn is seen in customers having 1 product with 27% churn rate.
Surprisingly, customers with 4 products have churn rate 100% and with 3 products it is 82% */

-- HasCrCard
select 
HasCrCard,
COUNT(*) AS total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate
FROM churn_modelling_enriched
GROUP BY HasCrCard
ORDER BY churn_rate desc;
/*Distribution is imbalanced. Customers with credit card has distribution around 7k and those without has distribution around 3k.
Churn_rate is more or less same. */

-- IsActiveMember
select 
IsActiveMember,
COUNT(*) AS total_customers,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END)*100.0/COUNT(*), 2) AS churn_rate
FROM churn_modelling_enriched
GROUP BY IsActiveMember
ORDER BY churn_rate desc;
/*Distribution is balanced to approx 50-50.
churn is higher in customers who is not an active member (approx 27% churn rate).*/

-- Estimated_salary_range
SELECT 
estimated_salary_range, 
COUNT(*) AS distribution,
sum(case when exited =1 then 1 else 0 end) as churned,
round(sum(case when exited =1 then 1 else 0 end) * 100.0/count(*), 2) as churn_rate
FROM churn_modelling_enriched
GROUP BY estimated_salary_range
ORDER BY churn_rate desc;
/*Distribution and churn_rate is balanced with approx 20% in each salary_range*/

