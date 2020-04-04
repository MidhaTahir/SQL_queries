ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE;

/*
second option and the most usable is to alter table sales 
and add FOREIGN KEY
*/