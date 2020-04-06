/*
they are applied on multiple rows of a single column of a table and
return an output of a single value
*/
SELECT 
    COUNT(emp_no)
FROM
    employees; # COUNT counts the number of non-null records in a field
-- -- --
SELECT 
    COUNT(DISTINCT(emp_no)) #different names count
FROM
    employees;
-- -- --
SELECT 
    MAX(salary)
FROM
    salaries;
-- -- --
# SUM sums all the non-null values in a column
# MIN , MAX , AVG are also available