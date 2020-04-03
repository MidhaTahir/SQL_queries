CREATE TABLE customer
( 
	customer_id INT NOT NULL PRIMARY KEY auto_increment,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT
);