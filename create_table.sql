CREATE TABLE sales
(
	purchase_number INT NOT NULL PRIMARY KEY auto_increment,
    data_of_purchase DATE NOT NULL,
    customer_id INT, 
    item_code VARCHAR(10) NOT NULL
);

/* SYNTAX: 
CREATE TABLE table_name ( ); 
within paranthesis we have to give column name,
without giving column name it gives error bcz there isn't a table with no column
inside small brackets 
 (
column_1 data_type constraints,
…
column_n data_type constraints
);
*/