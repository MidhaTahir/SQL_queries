CREATE TABLE customers
( 
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT DEFAULT 0,
PRIMARY KEY (customer_id)
);

/*
DEFAULT 0 means when a customer is initialized ,
his/her no. of complaints will be 0 by default
0 , '0' , "0" -> same
*/ 

-- OR 

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;
/*
here first coming number_of_complaints is name , second is same if we don't want to change the name,
if we want to change column name too change the second name argument here
*/