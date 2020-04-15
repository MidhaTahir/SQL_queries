 # union all is used to unify tables

DROP TABLE IF EXISTS emp_dup;

CREATE TABLE emp_dup (
	 emp_no int(11),
	birth_date date,
    first_name varchar(14),
    last_name varchar(16),
    gender enum('M','F'),
    hire_date date
);

INSERT INTO emp_dup
SELECT e.*
FROM employees e
LIMIT 20;

SELECT * FROM emp_dup;

-- insert a duplicate of the first row

INSERT INTO emp_dup VALUES
('10001','1953-09-02','Georgi','Facello','M','1986-06-26');
-- -- -- 
# UNION ALL is done when columns name are same so we are creating null columns 
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
UNION ALL SELECT
	NULL AS emp_no, -- these 3 exist in above table 
    NULL AS first_name, -- so creating them here as null
	NULL AS last_name,
    m.dept_no,
    m.from_date
FROM 
	dept_manager m;
    
