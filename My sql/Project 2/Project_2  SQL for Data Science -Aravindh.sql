/*
1. Create new schema as alumni
*/

CREATE SCHEMA alumni;

/*
2. Import all .csv files into MySQL
*/

-- All cvs files are imported to the database name as aluminiCollege_A_HS ~ Higher Studies Record of College A
-- College_A_SE ~ Self Employed Record of College A
-- College_A_SJ ~ Service/Job Record of College A
-- College_B_HS ~ Higher Studies Record of College B
-- College_B_SE ~ Higher Studies Record of College B
-- College_B_SJ ~ Higher Studies Record of College B

/*
3. Run SQL command to see the structure of six tables
*/

USE alumni;

DESC college_a_hs;
DESC college_a_se;
DESC college_a_sj;
DESC college_b_hs;
DESC college_b_se;
DESC college_b_sj;

/*
4. Display first 1000 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) with Python.
*/

-- cur_obj.execute('select * from college_a_hs limit 1000')
-- cur_obj.fetchall()
-- cur_obj.execute('select * from college_a_se limit 1000')
-- cur_obj.fetchall()
-- cur_obj.execute('select * from college_a_sj limit 1000')
-- cur_obj.fetchall()
-- cur_obj.execute('select * from college_b_hs limit 1000')
-- cur_obj.fetchall()
-- cur_obj.execute('select * from college_b_se limit 1000')
-- cur_obj.fetchall()
-- cur_obj.execute('select * from college_b_sj limit 1000')
-- cur_obj.fetchall()

-- attach the excel sheet

/*
5.Import first 1500 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) into MS Excel.
*/

-- college_a_hs:
-- open ms excel and click on data 
-- 1.click on mysql for excel
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_a_hs
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- college_a_se:
-- open ms excel and click on data 
-- 1.click on mysql for excel.
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_a_se.
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- college_a_sj:
-- open ms excel and click on data. 
-- 1.click on mysql for excel.
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_a_sj.
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- college_b_hs:
-- open ms excel and click on data.
-- 1.click on mysql for excel.
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_b_hs.
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- college_b_se:
-- open ms excel and click on data.
-- 1.click on mysql for excel.
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_b_se.
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

-- college_b_sj:
-- open ms excel and click on data.
-- 1.click on mysql for excel.
-- 2.click on local instance mysql80 in that select the schema and click on next and choose college_b_sj.
-- 3.click on import mysql data and then window will appear in that select advanced options and set the limit to 1500 and click on accept and then click on import.
-- 4.it will display the raw data.

SELECT COUNT(*) FROM college_a_hs;
SELECT COUNT(*) FROM college_a_se;
SELECT COUNT(*) FROM college_a_sj;
SELECT COUNT(*) FROM college_b_hs;
SELECT COUNT(*) FROM college_b_se;
SELECT COUNT(*) FROM college_b_sj;

/*
6. Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values. 
*/

SELECT count(*) FROM college_a_hs;

CREATE OR REPLACE VIEW college_a_hs_v AS
    SELECT 
        *
    FROM
        college_a_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND HSDegree IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;

SELECT * FROM college_a_hs_v;
/*
7.Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values.
*/

SELECT * FROM college_a_se;

SELECT COUNT(*) FROM college_a_se;

CREATE OR REPLACE VIEW college_a_se_v AS
    SELECT 
        *
    FROM
        college_a_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL;
            
	SELECT * FROM college_a_se_v;

/*
8. Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.
*/

SELECT * FROM college_a_sj;

CREATE OR REPLACE VIEW college_a_sj_v AS
    SELECT 
        *
    FROM
        college_a_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Designation IS NOT NULL
            AND Location IS NOT NULL;
            
	SELECT * FROM college_a_sj_v;
    
/*
9. Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.
*/

SELECT * FROM college_b_hs;

SELECT COUNT(*) FROM college_b_hs;

CREATE OR REPLACE VIEW college_b_hs_v AS
    SELECT 
        *
    FROM
        college_b_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
             AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND HSDegree IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL;
            
SELECT * FROM college_b_hs_v;

/*
10. Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.
*/

SELECT COUNT(*) FROM college_b_se;

SELECT * FROM college_b_se;

CREATE OR REPLACE VIEW college_b_se_v AS
    SELECT 
        *
    FROM
        college_b_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
             AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL;
            
SELECT * FROM college_b_se_v;

/*
11. Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V, Remove null values.
*/

SELECT COUNT(*) FROM college_b_sj;

SELECT * FROM college_b_sj;

CREATE OR REPLACE VIEW college_b_sj_v AS
    SELECT 
        *
    FROM
        college_b_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND NAME IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
             AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
             AND Organization IS NOT NULL
            AND Designation IS NOT NULL
            AND Location IS NOT NULL;
            
SELECT * FROM college_b_sj_v;

/*
12. Make procedure to use string function/s for converting record of Name, 
FatherName, MotherName into lower case for views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, 
College_B_SE_V, College_B_SJ_V) 
*/

-- College_A_HS_V

DELIMITER |
CREATE PROCEDURE hs()
BEGIN 
SELECT LOWER(Name) Name, LOWER(FatherName) FatherName, LOWER(MotherName) MotherName FROM college_a_hs_v;
END |
DELIMITER ;

CALL hs();

DROP PROCEDURE hs;


-- College_A_SE_V:

DELIMITER |
CREATE PROCEDURE se()
BEGIN 
SELECT LOWER(Name) Name, LOWER(FatherName) FatherName, LOWER(MotherName) MotherName FROM college_a_se_v;
END |
DELIMITER ;

CALL se();

DROP PROCEDURE se;


-- College_A_SJ_V:

DELIMITER |
CREATE PROCEDURE sj()
BEGIN 
SELECT LOWER(Name) Name, LOWER(FatherName) FatherName, LOWER(MotherName) MotherName FROM college_a_sj_v;
END |
DELIMITER ;

CALL sj();

DROP PROCEDURE sj;

-- College_B_HS_V:

DELIMITER |
CREATE PROCEDURE hsb()
BEGIN 
SELECT LOWER(Name) Name, LOWER(FatherName) FatherName, LOWER(MotherName) MotherName FROM college_b_hs_v;
END |
DELIMITER ;

CALL hsb();

DROP PROCEDURE hsb;

CALL hs_b();

DROP PROCEDURE hs_b;

-- College_B_SE_V:

DELIMITER |
CREATE PROCEDURE seb()
BEGIN 
SELECT LOWER(Name) Name, LOWER(FatherName) FatherName, LOWER(MotherName) MotherName FROM college_b_se_v;
END |
DELIMITER ;

CALL seb();

DROP PROCEDURE seb;

-- College_B_SJ_V:

DELIMITER |
CREATE PROCEDURE sjb()
BEGIN 
SELECT LOWER(Name) Name, LOWER(FatherName) FatherName, LOWER(MotherName) MotherName FROM college_b_sj_v;
END |
DELIMITER ;

CALL sjb();

DROP PROCEDURE sjb;

/*
13. Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 
into MS Excel and make pivot chart for location of Alumni. 
*/

-- Attach the excel sheet

/*
14. Write a query to create procedure get_name_collegeA using the cursor to 
fetch names of all students from college A.
*/

SELECT * FROM college_a_hs;

DELIMITER |
CREATE PROCEDURE get_name_collegeA(INOUT student_name LONGTEXT)
BEGIN
DECLARE finished INTEGER DEFAULT 0;
DECLARE student_info TEXT;
DECLARE studentdetail 
CURSOR FOR 
SELECT Name FROM college_a_hs
UNION ALL
SELECT Name FROM college_a_se
UNION ALL
SELECT Name FROM college_a_sj;
DECLARE CONTINUE 
	HANDLER FOR NOT FOUND SET finished = 1;
OPEN studentdetail;
firstname:
LOOP
FETCH studentdetail INTO student_info;
IF finished=1 THEN LEAVE firstname;
END IF;
SET student_name=CONCAT(student_info,' , ',student_name);
END LOOP;
SELECT student_name;
CLOSE studentdetail;
END |
DELIMITER ;

SET @student_college_a ='';
CALL get_name_collegeA(@student_college_a);

SELECT @student_college_a;

DROP PROCEDURE get_name_collegeA;


SELECT COUNT(Name) FROM college_a_hs;
SELECT COUNT(Name) FROM college_a_se;
SELECT COUNT(Name) FROM college_a_sj;


/*
15. Write a query to create procedure get_name_collegeB 
using the cursor to fetch names of all students from college B.
*/


DELIMITER |
CREATE PROCEDURE get_name_collegeB(INOUT student_name1 LONGTEXT)
BEGIN
DECLARE finished INTEGER DEFAULT 0;
DECLARE student_info TEXT;
DECLARE studentdetail 
CURSOR FOR 
SELECT Name FROM college_b_hs
UNION ALL
SELECT Name FROM college_b_se
UNION ALL
SELECT Name FROM college_b_sj;
DECLARE CONTINUE 
	HANDLER FOR NOT FOUND SET finished = 1;
OPEN studentdetail;
firstname:
LOOP
FETCH studentdetail INTO student_info;
IF finished=1 THEN LEAVE firstname;
END IF;
SET student_name1=CONCAT(student_info,' , ',student_name1);
END LOOP;
SELECT student_name1;
CLOSE studentdetail;
END |
DELIMITER ;

SET @student_college_b ='';
CALL get_name_collegeB(@student_college_b);

SELECT @student_college_b;

DROP PROCEDURE get_name_collegeB;


SELECT COUNT(Name) FROM college_b_hs;
SELECT COUNT(Name) FROM college_b_se;
SELECT COUNT(Name) FROM college_b_sj;

/*
16. Calculate the percentage of career choice of College A and College B Alumni
-- (w.r.t Higher Studies, Self Employed and Service/Job)
Note: Approximate percentages are considered for career choices.
*/
SELECT COUNT(*) FROM college_a_hs;
SELECT COUNT(*) FROM college_a_se;
SELECT COUNT(*) FROM college_a_sj;

SELECT((SELECT COUNT(*) FROM college_a_hs)+(SELECT COUNT(*) FROM college_a_se)+(SELECT COUNT(*) FROM college_a_sj)) TOTALA;
-- 5887

SELECT COUNT(*) FROM college_b_hs;
SELECT COUNT(*) FROM college_b_se;
SELECT COUNT(*) FROM college_b_sj;

SELECT((SELECT COUNT(*) FROM college_b_hs)+(SELECT COUNT(*) FROM college_b_se)+(SELECT COUNT(*) FROM college_b_sj)) TOTALB;
-- 2259

SELECT 'Higher Studies',(SELECT COUNT(*) / 5887 * 100 FROM college_a_hs)'College A Percentage',
(SELECT COUNT(*) / 2259 * 100 FROM college_b_hs) 'College B Percentage'
UNION
SELECT 'Self Employed',(SELECT COUNT(*) / 5887 * 100 FROM college_a_se)'College A Percentage',
(SELECT COUNT(*) / 2259 * 100 FROM college_b_se) 'College B Percentage'
UNION
SELECT 'Service Job',(SELECT COUNT(*) / 5887 * 100 FROM college_a_sj)'College A Percentage',
(SELECT COUNT(*) / 2259 * 100 FROM college_b_sj) 'College B Percentage';


