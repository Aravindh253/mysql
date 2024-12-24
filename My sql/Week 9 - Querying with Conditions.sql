/*
1. Write a query to create a view active_customer with all details of 
customer belonging to store id 1 and with active status = 1. (schema – sakila, table - customer ).
*/

USE sakila;

SELECT * FROM customer;

CREATE VIEW active_customer AS
    SELECT 
        *
    FROM
        customer
    WHERE
        store_id = 1 AND active = 1;
        
SELECT * FROM active_customer;

SELECT COUNT(*) FROM active_customer;

/*
2. Write query to create view customer_detail that list the customer detail including city name and address also. (schema – sakila)

(Hint: Result set stored in view customer_detail is shown in below picture)
*/

SELECT * FROM customer;
DESC customer;
SELECT * FROM city;
DESC city;
SELECT * FROM address;
DESC address;
CREATE VIEW customer_detail AS
    (SELECT 
        cus.customer_id,
        cus.first_name,
        cus.last_name,
        cus.email,
        a.address,
        c.city
    FROM
        customer cus
            LEFT JOIN
        address a ON cus.address_id = a.address_id
            LEFT JOIN
        city c ON a.city_id = c.city_id
    ORDER BY c.city_id
);

SElECT * FROM customer_detail;

/*
3.3. Create three users Alpha, Beta and Gama in MySQL Wokbench and assign below mentioned 
roles\privileges to these users.
*/


I ATTACHED THE ANSWER AS  PDF AND EXCEL FORMAT 





