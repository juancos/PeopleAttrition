#Attrition considered by each quarter
SELECT
    EXTRACT(YEAR FROM recorddate_key) AS year,
    CONCAT('Q', CAST(CEIL(EXTRACT(MONTH FROM recorddate_key) / 3) AS STRING)) AS quarter,
    COUNT(DISTINCT CASE WHEN termreason_desc IS NOT NULL THEN employeeID END) AS num_attrition,
    COUNT(DISTINCT employeeID) AS num_employees,
    (COUNT(DISTINCT CASE WHEN termreason_desc IS NOT NULL THEN employeeID END) * 100.0) / COUNT(DISTINCT employeeID) AS attrition_rate
FROM
    `peopleanalytics-422815.employeeattrition.Employeeattrition`
GROUP BY
    year, quarter
ORDER BY
    year, quarter;
