# - HAVING is like WHERE but applied to the GROUP BY block
# after HAVING, you can have a condition with an aggregate function,
# while WHERE cannot use aggregate functions within its conditions
-- SELECT 
--     first_name,COUNT(first_name) as names_count
-- FROM
--     employees
-- WHERE
-- 	COUNT(first_name) > 250 this will be error INVALID USE OF GROUP FUNCTION
-- GROUP BY first_name
-- ORDER BY first_name; 

SELECT 
    first_name,COUNT(first_name) as names_count
FROM
    employees
GROUP BY first_name
HAVING
	COUNT(first_name) > 250
ORDER BY first_name; # extracted all first names that appears more than 250 times

# we cant have both aggreagated an non aggregate in a having clause simultaneously 