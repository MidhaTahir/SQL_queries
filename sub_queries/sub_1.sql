
SELECT * FROM dept_manager;

SELECT 
	e.first_name, e.last_name
FROM 
	employees e 
WHERE 
	e.emp_no IN (SELECT 
			dm.emp_no
		FROM 
			dept_manager dm);
            
-- selects all first , last_names from emp table having same emp_no as in dept_manager table
-- sub query should be always in paranthesis