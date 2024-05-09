#Department attrition analysis 
SELECT
    department_name,
    COUNT(DISTINCT CASE WHEN termreason_desc IS NOT NULL THEN employeeID END) AS num_attrition,
    COUNT(DISTINCT employeeID) AS num_employees,
    (COUNT(DISTINCT CASE WHEN termreason_desc IS NOT NULL THEN employeeID END) * 100.0) / COUNT(DISTINCT employeeID) AS attrition_rate
FROM
    `peopleanalytics-422815.employeeattrition.Employeeattrition`
GROUP BY
    department_name
ORDER BY
    attrition_rate DESC;