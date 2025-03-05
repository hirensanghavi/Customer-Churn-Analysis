USE Cust_churn_db
select * from stg_churn

SELECT Gender, COUNT(Gender) AS gender_count,
COUNT(Gender) * 1.0 / (SELECT COUNT(*) FROM stg_churn) *100.0 AS Percentage
FROM stg_churn GROUP BY Gender

SELECT Contract, COUNT(Contract) AS Contract_count,
COUNT(Contract) * 1.0 / (SELECT COUNT(*) FROM stg_churn) AS Percentage
FROM stg_churn GROUP BY Contract

SELECT Customer_status, COUNT(customer_status) as total_count,
SUM(total_revenue) as revenue, 
SUM(total_revenue) *1.0 / (select SUM(total_revenue) from stg_churn) * 100.0 as REV_percentage
FROM stg_churn group by Customer_Status

SELECT state, COUNT(state) as state_wise_count,
COUNT(state) * 1.0 / (select count(*) from stg_churn) * 100 as Percentage
from stg_churn group by state order by Percentage desc

select distinct internet_type from stg_churn