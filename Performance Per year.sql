SELECT
    EXTRACT(YEAR FROM recorddate_key) AS year,
    EXTRACT(MONTH FROM recorddate_key) AS month,
    COUNT(DISTINCT CASE WHEN termreason_desc IS NOT NULL THEN employeeID END) AS num_attrition,
    COUNT(DISTINCT employeeID) AS num_employees,
    (COUNT(DISTINCT CASE WHEN termreason_desc IS NOT NULL THEN employeeID END) * 100.0) / COUNT(DISTINCT employeeID) AS attrition_rate
FROM
    `peopleanalytics-422815.employeeattrition.Employeeattrition`
GROUP BY
    year, month
ORDER BY
    year, month;