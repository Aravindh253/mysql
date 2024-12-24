-- 1. Write query to select all record from table customer (schema - sakila).

USE sakila;

SELECT * FROM customer;

/* 
2.Write query to select record from table customer for fields customer_id (Alias - ID), 
first_name (FName), last_name (LName), email (EmailID) (schema - sakila).
*/

SELECT customer_id ID,first_name FName,last_name LName, email EmailID FROM customer;

/* 
3. Write query to display film title starting with alphabet ‘A’ and 
ending with alphabet ‘r’ from table film (schema - sakila).
*/

SELECT title FROM film
WHERE title LIKE 'A%r';
    
/* 
4. Write query to display first 100 records 
from table customer (schema - sakila).
*/

SELECT 
    *
FROM
    customer
WHERE
    customer_id
LIMIT 100;

/* 
5. Write query to display payment_id, amount, rounded off value of amount 
and square root of amount from table payment (schema - sakila) in single statement.
*/

SELECT 
    payment_id,
    ROUND(amount) RoundOffValue,
    SQRT(amount) SquareRoot
FROM
    payment;

/*
6. Create backup for schema – sakila.
*/
CREATE DATABASE sakilabackup;

USE sakilabackup;

SELECT * FROM customer;