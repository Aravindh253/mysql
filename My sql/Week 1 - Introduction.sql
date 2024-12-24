1 . Write type of attributes.

    Attributes are the properties of entity Entity is an object(like).

Types: 
    1. Key Attribute - Unique identify entity
    2. Simple Attribute - No furthur division is possible
    3. Composite Attribute - more than one simple attribute (composite)
    4. Derived Attribute - Its values are achieved by other attributes
    5. Single Value Attribute - Single value only
    6. Multi Value Attribute - Multipl;e values for same attributes.
    
2. ACID stands for?

    ACID - Atomicity,Consistency,Isolation,Durability
    
    1.Atomicity - In the transcation either the value takes place or none of them all.
    2. Consistency - Initial state of database is consistent.
    3. Isolation - Smulataneous transaction should be executed as independent, that should                        unaffected by other transaction.
    4. Durability - Changes of query occured by commit, it should unaffected with the hardware                     or software failure.
    

3. Write three examples of data definition language commands.

    1. Create - Table creation
    2. Alter - Modify the table structure
    3. Drop - Drop the table
    
    
4. Write examples of transaction control language commands.

    1. Commit - Saving all transaction after the last commit
    2. Rollback - Undoing transaction that are not committed
    3. Savepoint - Used to rollback the transaction to a particular point.
    
5. Write name of default tables of sakila schema of MySQL.

     Default tables in sakila database are 16 tables , list is as below,
         ===> actor,address,category,city,country,customer,film,film_actor,
              film_category,film_text,inventory,language,payment,rental,staff and
              store.
              
    
6. Explore EER diagram of schema sakila

     EER - Enhanced-Entity Relational diagram
     
     * It helps to create and manipulate the database as a high level models with tools.
     * It is a visula outlook for a particular database.
     
     
7. Look for foreign keys used in the table category (Navigator).

    ===> Foreign key is a key that used to identify each row in another table
    
    In sakila table , the foreign keys as below,
    
    In table address  --> fk_address_city
    In table city ---> fk_city_count
    In table customer ---> fk_customer_address, fk_customer_store
    In table film ---> fk_film_language, fk_film_language_origbal
    In table film_actor ---> fk_film_actor_actor, fk_film_actor_film
    In table film_category ---> fk_film_category_category, fk_film_category_film
    In table inventory ---> fk_inventory_film, fk_inventory_store
    In table payment ---> fk_payment_customer, fk_payment_rental, fk_payment_staff
    In table rental ---> fk_rental_customer, fk_rental_inventory, fk_rental_staff
    In table staff ---> fk_staff_address, fk_staff_store
    In table store ---> fk_store_address, fk_store_staff
    
    
    
8. Look for indexes used in table film_actor (Navigator).

    In the table film_actor, the indexes used are,
        --->idx_fk_film_id, fk_film_actor_actor_idx
        
        
9. Look for stored procedures used in the sakila database (Navigator).
    
    In sakila database the stored procedures are 
    1. film_in_stock
    2. film_not_in_stock
    3. rewards_report
    
    
10. Look for views used in the sakila database (Navigator).

    In views there are actor_info,customer_list, film_list, nicer_but_slower_flim_list, 
    sale_by_film_category, sales_by_store and staff_list
    
    
11. Write keyboard shortcut for executing all statements in MySQL.

     Executing all statements - Ctrl+Shift+Enter
     
12. Write keyboard shortcut for opening new tab in MySQL.

    Opening New Tab - Ctrl + T
    
13. Explore all the schemas through navigator in MySQL.

    In navigator tab there are two tabs available as Administrartion and Schemas.
    
    In the Schemas tab , U just view the all schemas list in MYSQL.
    
14. Create new schema in connected server in MySQL.

    Right click to the Navigatore in schema tab, click create schema as your name/wish and 
    click Apply.

    Use CREATE command used to load a new schema/Databse
    
    
15. Create new SQL tab in MySQL for running queries and save the file.

    Create new SQL tab in MySQL for running queries --- > Ctrl + T
    Save a File ---> Ctrl + S