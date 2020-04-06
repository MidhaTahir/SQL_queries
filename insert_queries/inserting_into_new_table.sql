/* Insert into table_2(col_1,col_2,col_3)
SELECT col_1,col_2,... col_n
FROM table_1
WHERE condition; */

CREATE table depart_dup
(
 dept_no CHAR(4) NOT NULL,
 dept_name VARCHAR(40) NOT NULL
); -- creating a depart_dup table 



INSERT INTO depart_dup
(
	dept_no,
    dept_name
)
SELECT * FROM departments; -- inserting all departments things into new depart_dup

SELECT 
    *
FROM
    depart_dup; -- checking if all things now exists

INSERT INTO depart_dup
(
	dept_no,
    dept_name
)
VALUES
(
	'd010',
    'Business Analysis'
); -- inserting new row in new table

