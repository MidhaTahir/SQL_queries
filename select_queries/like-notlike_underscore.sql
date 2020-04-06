# underscore _ will match one single character

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    first_name LIKE('Mar_'); # gives name start with Mar and one more single character after it
-- -- -- 
# mysql is not case sensitive so we can use MAR_ or mar_ or Mar_ . All are correct