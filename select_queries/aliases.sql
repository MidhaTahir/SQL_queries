# AS is used for aliasing/renaming
SELECT 
    first_name, COUNT(first_name) AS counts
FROM
    employees
GROUP BY first_name;

