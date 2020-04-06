/* Extract a list of all names that are encountered
;ess than 200 times. Let the data refer to people 
hired after the 1st of January */

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING names_count < 200
ORDER BY first_name;
