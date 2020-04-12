COMMIT;

UPDATE employees
SET
first_name = "Stella",
last_name= "Park",
birth_date = "1990-04-11",
gender = "F"; 
/* here if i didnot provide where clause , it will update my whole data and the data will lost
so here i first ran commit 
*/

ROLLBACK; # rollback over last commit