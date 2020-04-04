CREATE TABLE sales
(
	purchase_number INT auto_increment,
    data_of_purchase DATE NOT NULL,
    customer_id INT, 
    item_code VARCHAR(10) NOT NULL,
PRIMARY KEY (purchase_number)
);
/* PRIMARY KEY (column_name) , 
here PRIMARY KEY is a keyword
*/