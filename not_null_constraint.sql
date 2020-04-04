CREATE TABLE companies
(
	company_id INT auto_increment,
    company_name VARCHAR(255)  NOT NULL,
    headquarters_phone_number VARCHAR(255),
PRIMARY KEY (company_id)
);

ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL; -- modifying not null to null

ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL; -- converting again to not null

/* 
INSERT INTO companies(headquarters_phone_number)
VALUES ('+1-1839-134') -- It will be error as company_name is set to not null,
-- it should have either default value ,,, company_id will be auto incremented
*/

INSERT INTO companies(headquarters_phone_number,company_name)
VALUES ('+1-1839-134','Company A'); -- this query will run 

