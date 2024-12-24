/* 1. Write query to create table actor. 

Column Name      Data Type            Constraint
actor_id    SMALLINT UNSIGNED         PRIMARY KEY  
first_name     VARCHAR(45)             NOT NULL
last_name      VARCHAR(45)             NOT NULL
*/

CREATE DATABASE sqlweek2;

USE sqlweek2;

CREATE TABLE IF NOT EXISTS actor(
actor_id SMALLINT UNSIGNED,
first_name VARCHAR(45) NOT NULL,
last_name VARCHAR(45) NOT NULL,
PRIMARY KEY(actor_id)
);

-- SELECT * FROM actor;

/* 2. Write query to create table country.

Column Name            Data Type                         Constraint
country_id         SMALLINT UNSIGNED                     PRIMARY KEY  
country              VARCHAR(50)                          NOT NULL
last_update           TIMESTAMP                  NOT NULL, DEFAULT CURRENT_TIMESTAMP 
*/

CREATE TABLE country(
country_id SMALLINT UNSIGNED PRIMARY KEY,
country VARCHAR(50) NOT NULL,
last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

/* 3. Write query to create table city.

Column Name               Data Type                       Constraint
city_id               SMALLINT UNSIGNED                   PRIMARY KEY  
city                    VARCHAR(50)                        NOT NULL
country_id            SMALLINT UNSIGNED     FOREIGN KEY (fk_city_country), country (country_id) 
last_update               TIMESTAMP             NOT NULL, DEFAULT CURRENT_TIMESTAMP 
*/

CREATE TABLE city(
city_id SMALLINT UNSIGNED PRIMARY KEY,
city VARCHAR(50) NOT NULL,
country_id SMALLINT UNSIGNED,
last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT fk_city_country 
FOREIGN KEY(country_id) 
REFERENCES country(country_id)
);

/* 4. Write query to create table address.

Column Name                     Data Type                            Constraint
address_id                  SMALLINT UNSIGNED                        PRIMARY KEY  
address                        VARCHAR(50)                            NOT NULL
address2                       VARCHAR(50)                          DEFAULT NULL
district                       VARCHAR(20)                            NOT NULL
city_id                     SMALLINT UNSIGNED           FOREIGN KEY (fk_address_city), city (city_id) 
postal_code                   VARCHAR(10)                           DEFAULT NULL
phone                         VARCHAR(20)                             NOT NULL
last_update                    TIMESTAMP                  NOT NULL, DEFAULT CURRENT_TIMESTAMP 
*/

CREATE TABLE address(
address_id SMALLINT UNSIGNED,
address VARCHAR(50) NOT NULL,
address2 VARCHAR(50) DEFAULT NULL,
district VARCHAR(20) NOT NULL,
city_id SMALLINT UNSIGNED,
postal_code VARCHAR(10) DEFAULT NULL,
phone VARCHAR(20) NOT NULL,
last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(address_id),
CONSTRAINT fk_address_city 
FOREIGN KEY(city_id)
REFERENCES city(city_id)
);


--  5. Write a query to insert values in table customer. (schema - sakila)

USE sakila;

SELECT * FROM customer;

INSERT INTO customer 
VALUES(600,2,'Aravindh','C','aravindh253@gmail.com',606,1,'2022-09-10','2022-09-20');

-- OUTPUT 
DESC customer;

-- 6. Write a query to insert values in table rental. (schema - sakila)
select*from rental;

insert into rental values(100000, '2005-05-24 ', 367, 130, '2005-05-26', 1, '2006-02-16');
DESC rental;


