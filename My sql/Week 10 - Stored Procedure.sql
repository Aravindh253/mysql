/*
1. Write query to create procedure getaddress using cursor to fetch address from address table (schema – sakila).  

Query to use - SELECT address FROM  address;

Cursor Name – addressdetail
*/

USE sakila;

DELIMITER $$

CREATE PROCEDURE getaddress
( INOUT addresses TEXT(17000))

BEGIN
	DECLARE finished INT DEFAULT 0;
    DECLARE addresseslist VARCHAR(350) DEFAULT "";
    
    DECLARE addressdetail 
		CURSOR FOR
			SELECT address FROM address;
            
	DECLARE CONTINUE HANDLER
		FOR NOT FOUND SET finished = 1;
        
	OPEN addressdetail;
    
    -- Starting Label Definition
    
		getlastaddress:
        
	-- Loop Statement
    
        LOOP
			FETCH addressdetail INTO addresseslist;
            IF finished = 1 THEN
				LEAVE getlastaddress;
			END IF;
            
			SET addresses = CONCAT(addresseslist," ; ",addresses);
		
        END LOOP getlastaddress;
        
        CLOSE addressdetail;
        
            
END $$

DELIMITER ;

SET @lastaddress ="";
CALL getaddress(@lastaddress);
SELECT @lastaddress Address;
       
       
/*
2.2. Write query to create procedure getactorname using cursor to fetch first_name,last_name from actor table (schema – sakila).  

Query to use - SELECT first_name, last_name FROM  actor;

Cursor Name – actornamedetail

Fetched data from Cursor is given below:

Value for First Name
*/

SELECT first_name,last_name FROM actor;

DELIMITER $$

CREATE PROCEDURE getactorname
( INOUT fname TEXT(17000),INOUT lname TEXT(100000))

BEGIN
	DECLARE finished INT DEFAULT 0;
    DECLARE namelist VARCHAR(350) DEFAULT "";
    DECLARE namelist1 VARCHAR(350) DEFAULT "";
    
    DECLARE actornamedetail 
		CURSOR FOR
			SELECT first_name,last_name FROM actor;
            
	DECLARE CONTINUE HANDLER
		FOR NOT FOUND SET finished = 1;
        
	OPEN actornamedetail;
    
    -- Starting Label Definition
    
		getfname:
        
	-- Loop Statement
    
        LOOP
			FETCH actornamedetail INTO namelist,namelist1;
            IF finished = 1 THEN
				LEAVE getfname;
			END IF;
            
			SET fname = CONCAT(namelist," ; ",fname);
            SET lname = CONCAT(namelist1," ; ",lname);
		
        END LOOP getfname;
        
        CLOSE actornamedetail;
        
            
END $$

DELIMITER ;

SET @namelist ="";
SET @namelist1="";
CALL getactorname(@namelist,@namelist1);
SELECT @namelist AS 'First Name' ,@namelist1 AS 'Last Name';