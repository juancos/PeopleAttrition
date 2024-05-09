#First reasons associated with attrition rates 
SELECT
    termreason_desc,
    COUNT(employeeID) AS num_employees
FROM
    `peopleanalytics-422815.employeeattrition.Employeeattrition`
WHERE termreason_desc IS NOT NULL
GROUP BY
    termreason_desc
ORDER BY
    num_employees DESC
LIMIT 10;