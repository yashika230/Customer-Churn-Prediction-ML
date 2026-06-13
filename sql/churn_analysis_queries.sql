
-- Analyze churn by Contract Type
SELECT
    Contract,
    COUNT(customerID) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(customerID)) AS ChurnRate
FROM
    customer_churn
GROUP BY
    Contract
ORDER BY
    ChurnRate DESC;

-- Analyze churn by Payment Method
SELECT
    PaymentMethod,
    COUNT(customerID) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(customerID)) AS ChurnRate
FROM
    customer_churn
GROUP BY
    PaymentMethod
ORDER BY
    ChurnRate DESC;

-- Analyze churn by Tenure (grouped into bins)
SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure > 12 AND tenure <= 24 THEN '13-24 Months'
        WHEN tenure > 24 AND tenure <= 48 THEN '25-48 Months'
        WHEN tenure > 48 AND tenure <= 60 THEN '49-60 Months'
        ELSE 'Over 60 Months'
    END AS TenureGroup,
    COUNT(customerID) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(customerID)) AS ChurnRate
FROM
    customer_churn
GROUP BY
    TenureGroup
ORDER BY
    TenureGroup;

-- Analyze churn by Monthly Charges (grouped into bins)
SELECT
    CASE
        WHEN MonthlyCharges <= 30 THEN '0-30'
        WHEN MonthlyCharges > 30 AND MonthlyCharges <= 60 THEN '31-60'
        WHEN MonthlyCharges > 60 AND MonthlyCharges <= 90 THEN '61-90'
        ELSE 'Over 90'
    END AS MonthlyChargesGroup,
    COUNT(customerID) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(customerID)) AS ChurnRate
FROM
    customer_churn
GROUP BY
    MonthlyChargesGroup
ORDER BY
    MonthlyChargesGroup;
