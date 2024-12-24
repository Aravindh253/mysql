/*
1. Write a single query to select payment_id, customer_id, staff_id, rental_id, amount from table payment (schema - sakila) which satisfies both below mentioned conditions.

a. Range for customer_id 10,20,30,40,50,60,70,80,90,100
b. staff_id is 2
*/
USE sakila;

SELECT * FROM payment;

SELECT 
    payment_id, customer_id, staff_id, rental_id, amount
FROM
    payment
WHERE
    customer_id IN (10 , 20, 30, 40, 50, 60, 70, 80, 90, 100)
        AND staff_id = 2;
        
/*
2. Write query to display record of table film (schema - sakila) 
ordered by rating in descending order.
*/

SELECT * FROM film;

SELECT 
    *
FROM
    film
ORDER BY rating DESC;


/*
3. Write a single query to display payment_id, amount and updated_amount from table payment (schema - sakila) which supports the result set with below mentioned criteria.

a. amount is greater than 5.0
b. updated_amount is double of amount and rounded off
*/

SELECT * FROM payment;

SELECT payment_id,amount, (payment.amount > 5.0 AND ROUND(payment.amount )) updated_amount FROM payment;

SELECT payment_id,amount,ROUND(payment.amount*2) updated_amount FROM payment WHERE (payment.amount > 5.0);

/*
4. Write a single query to display below mentioned values from table payment for each customer (customer_id) (schema - sakila)

a. customer_id 
b. Total sum of the payment
c. Average of the payment
d. Standard deviation of the payment
e. Variance of the payment
*/

SELECT * FROM payment;

SELECT customer_id FROM payment;

SELECT customer_id,SUM(amount) TotalSum FROM payment;

SELECT customer_id,AVG(amount) Avgerage FROM payment;

SELECT customer_id,STD(amount) StandardDeviation FROM payment;

SELECT customer_id, VARIANCE(amount) variance FROM payment;

SELECT customer_id,SUM(amount) TotalSum,AVG(amount) Avgerage,STD(amount) StandardDeviation ,VARIANCE(amount) variance FROM payment;

/*
5. Write a query to display city_id, city, country_id from table city 
for country name starting with A and B (schema - sakila) (Hint: Use subquery)
*/

SELECT city_id,country_id,city FROM city ;

SELECT * FROM country;

SELECT * FROM city;

SELECT country_id ,country FROM country WHERE country LIKE 'A%' OR country LIKE 'B%';

SELECT city_id,city,country_id FROM city WHERE country_id = ANY (SELECT country_id FROM country WHERE country LIKE 'A%' OR country LIKE 'B%');

/*
6. What is the difference between ANY and ALL keywords with respect to subquery in SQL? (MCQ)

a. ALL – Comparison with every value ANY – Comparison with atleast one value
b. ALL – Comparison with atleast one value ANY – Comparison with every value
c. ALL – Comparison with every value ANY – Comparison with atleast two value
d. ALL – Comparison with atleast two value ANY – Comparison with atleast one value
*/

 -- ANSWER : a.  ALL – Comparison with every value ANY – Comparison with atleast one value


USE employees;

SELECT * FROM employees;

SELECT * FROM dept_manager;

SELECT COUNT(*) FROM employees WHERE emp_no = ANY ( SELECT emp_no FROM dept_manager WHERE employees.emp_no = dept_manager.emp_no);

SELECT COUNT(*) FROM employees WHERE emp_no = ALL ( SELECT emp_no FROM dept_manager WHERE employees.emp_no = dept_manager.emp_no);

