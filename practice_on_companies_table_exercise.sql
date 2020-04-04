CREATE TABLE companies
(
	company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INT(12),
UNIQUE KEY (headquarters_phone_number)
);
ALTER TABLE companies 
CHANGE COLUMN company_name company_names INT DEFAULT 0;

/*
Exercise:
Recreate the “companies” table
(company_id – VARCHAR of 255,
company_name – VARCHAR of 255,
headquarters_phone_number – integer of 12),
This time setting the “headquarters phone number” to be the unique key, and default value of the company's name to be “X”.
After you execute the code properly, drop the “companies” table.
*/
