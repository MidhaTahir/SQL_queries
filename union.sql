# in union duplicates are removed (distinct values only)
SELECT  
	e.emp_no, 
    e.first_name,
    e.last_name,
    NULL AS dept_no, -- these two column exist in other table
    NULL AS from_date -- so here creating them as null 
FROM 
	emp_dup e
WHERE 
	e.emp_no = 10001
UNION SELECT
	NULL AS emp_no, -- these 3 exist in above table 
    NULL AS first_name, -- so creating them here as null
	NULL AS last_name,
    m.dept_no,
    m.from_date
FROM 
	dept_manager m;