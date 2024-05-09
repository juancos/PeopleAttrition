#Average age (Attrition and status)
SELECT
    CASE WHEN termreason_desc IS NOT NULL THEN 'Attrited' ELSE 'Staying' END AS employment_status,
    AVG(age) AS average_age
FROM
    `peopleanalytics-422815.employeeattrition.Employeeattrition`
GROUP BY
    employment_status;