#Relationship between Antiguity and Attrition levels
#Compharison with the average antiguity
SELECT
    CASE WHEN termreason_desc IS NOT NULL THEN 'Attrited' ELSE 'Staying' END AS employment_status,
    AVG(length_of_service) AS average_length_of_service
FROM
    `peopleanalytics-422815.employeeattrition.Employeeattrition`
GROUP BY
    employment_status;
#Analisis based on the distribution considering Antiguity 
SELECT
    CASE WHEN termreason_desc IS NOT NULL THEN 'Attrited' ELSE 'Staying' END AS employment_status,
    length_of_service,
    COUNT(*) AS num_employees
FROM
    `peopleanalytics-422815.employeeattrition.Employeeattrition`
GROUP BY
    employment_status, length_of_service
ORDER BY
    employment_status, length_of_service;
