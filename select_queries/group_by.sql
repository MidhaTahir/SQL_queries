SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name; #group by will group same values, it is mostly used with aggregate fns
-- -- --
SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;
