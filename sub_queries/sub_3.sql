
/* assign employee number 110022 as a manager to all employees
from 10001 to 10020, and employye number 110039 as a manager
to all employees from 10021 to 10040*/
SELECT 
	A.* 
FROM 
	(SELECT 
		e.emp_no AS emp_id,
		MIN(de.dept_no) AS dpt_code,
		(SELECT 
				emp_no
			FROM
				dept_manager
			WHERE
				emp_no = 110022) AS manager_id
	FROM
		employees e
			JOIN
		dept_emp de ON e.emp_no = de.emp_no
	WHERE
		e.emp_no <= 10020
	GROUP BY e.emp_no
	ORDER BY e.emp_no) AS A
UNION
SELECT 
	B.* 
FROM 
	(SELECT 
		e.emp_no AS emp_id,
		MIN(de.dept_no) AS dpt_code,
		(SELECT 
				emp_no
			FROM
				dept_manager
			WHERE
				emp_no = 110039) AS manager_id
	FROM
		employees e
			JOIN
		dept_emp de ON e.emp_no = de.emp_no
	WHERE
		e.emp_no > 10020
	GROUP BY e.emp_no
	ORDER BY e.emp_no
    LIMIT 20) AS B;