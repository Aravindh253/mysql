/*
1. Write query to make summary of table payment (calculate Total amount, average amount, minimum amount, maximum amount, variance of amount). 
Result set should give output as shown in figure 1 (schema - sakila). 
*/

USE sakila;

SELECT * FROM payment;

SELECT 'Parameter' ,'Value' UNION
SELECT 'Total Amount',SUM(amount) FROM payment UNION
SELECT 'Average Amount',AVG(amount) FROM payment UNION
SELECT 'Minimum Amount',MIN(amount)  FROM payment UNION
SELECT 'Maximum Amount',MAX(amount) FROM payment UNION
SELECT 'Variance of Amount',VARIANCE(amount) FROM payment;

/*
2. Write query to calculate Total amount, average amount, minimum amount of amount from table payment 
for customer group using window function. (schema - sakila). Output for result set is shown in figure 2.
*/

SELECT * FROM payment;

SELECT payment_id, customer_id,staff_id,
SUM(amount)  OVER(PARTITION BY customer_id) as TotalSum,
AVG(amount) OVER(PARTITION BY customer_id) as Average,
MIN(amount) OVER(PARTITION BY customer_id) as Minimum
FROM payment;

/*
3. Write column name/s for below written tables in which null values are allowed (schema – sakila). 
(Hint: use DESC command)
*/

DESC film_category; -- No Columns allowed NULL values

DESC city; -- No Columns allowed NULL values

DESC address; -- address2 and postal_code column accepts the NULL Values

DESC store; -- No Columns allowed NULL values

DESC film_actor; -- No Columns allowed NULL values


-- (ANSWER :- In the Address Table, the address2 and potal_code fieldname only accept the null values.);


/*
4. Write query to calculate the incline/decline for number of payments made on each date. 
(schema – sakila, table – payment). Output for result set is shown in figure 3.
*/

SELECT * FROM payment;

SELECT payment_date,COUNT(payment_id) as CurrentCount,LAG(COUNT(payment_id),1) OVER (ORDER BY payment_date) as PreviousCount, 
(LAG(COUNT(payment_id),0) OVER(ORDER BY payment_date) - LAG(COUNT(payment_id),1) OVER(ORDER BY payment_date))  as CountDifference
FROM payment GROUP BY DATE(payment_date) ORDER BY payment_date;


