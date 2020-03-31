CREATE DATABASE IF NOT EXISTS sales;

/*
[IF NOT EXISTS]:
verifies if a database with the same name exists already
- the brackets around mean the statement is optional (you could either
type or omit the statement).

database_name: 
give a name that is short but at the same time as related to the content
of the data as possible.

the SQL code is not case sensitive
; (the semicolon character):
it functions as a statement terminator
- when your code contains more than a single statement, ; is indispensable
- will help you avoid errors sometimes
- will improve the readability of your code. 

instead of above query we can also use this one
CREATE SCHEMA IF NOT EXISTS Sales;
DATABASE and SCHEMA are synonyms
*/