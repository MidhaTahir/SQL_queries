SELECT 
    *
FROM
    employees
ORDER BY first_name; # or ORDER BY first_name ASC; y defualt it orders in ascending order
-- -- -- 
SELECT 
    *
FROM
    employees
ORDER BY first_name DESC; 
-- -- -- 
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;
-- -- -- 
SELECT 
    *
FROM
    employees
ORDER BY first_name,last_name; # all people who have same first_name are now also ordered by last_name
