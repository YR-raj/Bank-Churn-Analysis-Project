SELECT * FROM churn_modelling;

CREATE OR REPLACE VIEW churn_modelling_enriched AS
SELECT 
CustomerId,
Surname,
CreditScore,

case 
	when CreditScore >= 350 and CreditScore < 450 then '350-449'
	when CreditScore >= 450 and CreditScore < 550 then '450-549'
	when CreditScore >= 550 and CreditScore < 650 then '550-649'
	when CreditScore >= 650 and CreditScore < 750 then '650-749'
	when CreditScore >= 750 and CreditScore <= 850 then '750-850' 
	else 'Other'
end as credit_score_range,

Geography,
Gender,
Age,

case 
	when age >= 18 and age < 30 then '18-29'
	when age >= 30 and age < 40 then '30-39'
	when age >= 40 and age < 50 then '40-49'
	when age >= 50 and age < 60 then '50-59'
	when age >= 60 and age < 70 then '60-69'
	else '70-92'
end as age_range,

Tenure,

CASE 
	WHEN Tenure <= 5 THEN '0-5 Years'
	ELSE '5-10 Years'
END AS tenure_range,

Balance,

CASE 
	WHEN Balance = 0 THEN 'No Balance'
	WHEN Balance > 0 AND Balance <= 100000 THEN 'Low'
	WHEN Balance > 100000 AND Balance <= 200000 THEN 'Medium'
	ELSE 'High'
END AS balance_range,

NumOfProducts,
HasCrCard,
IsActiveMember,
EstimatedSalary,

case 
	when EstimatedSalary >= 0 and EstimatedSalary < 50000 then 'Low'
	when EstimatedSalary >= 50000 and EstimatedSalary < 100000 then 'Medium'
	when EstimatedSalary >= 100000 and EstimatedSalary < 150000 then 'High'
	else 'Very High'
end as estimated_salary_range,

Exited
FROM churn_modelling;







