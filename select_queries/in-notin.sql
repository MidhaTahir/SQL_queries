SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name = 'Denis' OR first_name = 'Elvis' OR first_name = 'Mark'; -- Changing this approach to IN
-- --- ----
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name IN ('Denis','Elvis','Mark'); # it check In a given list

-- -- -- -- --
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name NOT IN ('Denis','Elvis','Mark');
