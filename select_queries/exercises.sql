# EXERCISES 
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = ' Aruna'); -- Exercise of operator precedence
        
-- -- --
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name NOT IN ('John', 'Mark', 'Jacob');
    
-- -- -- 
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE('Mark%');
    
-- -- --
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE('%2000%');
-- -- --


SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE('1000_');
-- -- -- 
SELECT 
    *
FROM
    salaries
WHERE
     salary BETWEEN '60000'  AND  '70000';

-- -- --
SELECT 
    *
FROM
    salaries
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';
-- -- --
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no  between 'd003' and 'd006';
-- -- --
SELECT 
    *
FROM
    employees
WHERE
    gender='F' and hire_date >= '2000-01-01' ;
-- -- --
SELECT 
    *
FROM
    salaries
WHERE
    salary > '150000'; 
    
-- -- --
SELECT DISTINCT
    hire_date
FROM
    employees;
-- -- -- 
SELECT 
    COUNT(salary)
FROM
    salaries
WHERE 
	salary > '100,000';
-- -- --
SELECT DISTINCT
    hire_date
FROM
    employees;
-- -- -- 
SELECT 
    COUNT(*)
FROM
    dept_manager;
-- -- -- 
/*Write a query that obtains an output whose first column must contain 
annual salaries higher than 80,000 dollars. The second column, renamed to “emps_with_same_salary”, 
must show the number of employee contracts signed with this salary.*/

SELECT salary,COUNT(emp_no) AS emps_with_same_salary
FROM salaries
WHERE salary > '80000'
GROUP BY salary
ORDER BY salary;
-- -- --
/* Select all employees whose average salary is higher than $120,000 per annum.
Hint: You should obtain 101 records.*/

SELECT 
    *, AVG(salary) AS averg
FROM
    salaries
GROUP BY emp_no
HAVING averg > '120000';
-- -- --
/*Select the employee numbers of all individuals 
who have signed more than 1 contract after the 1st of January 2000.
Hint: To solve this exercise, use the “dept_emp” table.*/
SELECT emp_no
FROM dept_emp
WHERE from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) > 1
ORDER BY emp_no;
-- -- --



