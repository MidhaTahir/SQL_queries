-- INSERT INTO table_name (column_1, column_2, …, column_n)  VALUES (value_1, value_2, …, value_n);

INSERT INTO employees(emp_no,birth_date,first_name,last_name,gender,hire_date)
VALUES (999901,'1986-4-21','John','Smith','M','1999-4-21');

SELECT * FROM employees
ORDER BY emp_no DESC
LIMIT 10;
-- -- --
INSERT INTO employees(birth_date,emp_no,first_name,last_name,gender,hire_date) -- changing order of first two
VALUES ('1986-4-21',999902,'John','Smith','M','1999-4-21');
SELECT * FROM employees
ORDER BY emp_no DESC
LIMIT 10;
