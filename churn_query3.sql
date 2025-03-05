
CREATE VIEW vw_churndata AS
SELECT * FROM prod_churn
WHERE Customer_status IN ('Stayed', 'Churned');
GO

CREATE VIEW vw_joinData AS 
SELECT * FROM prod_churn
WHERE Customer_status = 'Joined';
GO
