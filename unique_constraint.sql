CREATE TABLE customer
( 
	customer_id INT auto_increment,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id),
UNIQUE KEY (email_address)
);

-- OR 

ALTER TABLE customer
ADD UNIQUE KEY (email_address);