SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND gender = 'M' OR gender = 'F'; # all males with name Denis + all females get selected
/*
an SQL rule stating that in the execution of the query, the operator AND
is applied first, while the operator OR is applied second
AND > OR
*/

SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND (gender = 'M' OR gender = 'F'); # correct approach
    --  Condition 1                  Condition 2
    
