DELETE FROM employees
WHERE emp_no = 999903;

SELECT * FROM employees
WHERE emp_no = 999903;

SELECT * FROM titles
WHERE emp_no = 999903;

# since employees and titles are linked record will be deleted form both

ROLLBACK;