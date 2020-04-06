SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01'  AND  '2000-01-01';
    
 --   LIKE("2000%")
   -- LIKE("199_")
   
SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1990-01-01'  AND  '2000-01-01'; -- lists all before 1990-01-01 or after 2000-01-01
    