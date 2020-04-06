# A substitute for a string of characters %
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name LIKE('Mar%'); # gives names starting with Mar like Mary Margareta , Maren , Marla (matches Mar and gives all after)

-- -- -- --
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name LIKE('%ar'); # gives names ending with ar

-- -- --
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name not LIKE('%ar%'); #gives names in which ar is not in between 
-- -- -- --


