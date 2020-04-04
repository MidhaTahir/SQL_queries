/* in order to add foreign key while creating table 
we have 3 options.... first is to first drop previous existing sales table then create it again 
with CREATE TABLE sales*/
DROP TABLE sales ;
CREATE TABLE sales
(
	purchase_number INT PRIMARY KEY auto_increment,
    data_of_purchase DATE NOT NULL,
    customer_id INT, 
    item_code VARCHAR(10) NOT NULL,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

/* due to foreign key a relation is resulted, the name of foreign key and primary key in other table 
can be different. 
parent table (referenced table -> the other table which is referenced)
child table (referencing table -> foreign key referencing to other table or in other words
The table containing the foreign key is called the child table, 
and the table containing the candidate key is called the referenced or parent table
in our example sales is child and customer is parent.
ON DELETE CASCADE means that if we remvoe record of parent table it will also be deleted from child table,
because this is logical if we delete customer with id 4 there is no point to have it's other record
*/

