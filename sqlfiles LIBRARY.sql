CREATE DATABASE LIBRARY;
USE LIBRARY;
DROP TABLE BRANCH;

CREATE TABLE BRANCH(BRANCH_NO INT PRIMARY KEY,
MANAGER_ID VARCHAR(30),
BRANCH_ADDRESS VARCHAR(60),CONTACT_NO VARCHAR(30));

INSERT INTO BRANCH VALUES(IN BRANCH_NO VARCHAR(30),IN MANAGER_ID INT,
BRANCH ADDRESS VARCHAR(60),IN CONTACT_NO VARCHAR(30);
INSERT INTO BRANCH(BRANCH_ADDRESS,CONTACT_NO)VALUES(BRANCH_ADDRESS,CONTACT_NO);
SELECT * FROM BRANCH;
CALL INSERT_BRANCH('MALAPPURAM','877654387');
CALL INSERT_BRANCH('KOZHIKODE','8709542654');
CALL INSERT_BRANCH('PALAKKAD','7654985432');
CALL INSERT_ BRANCH('KOLLAM','6890654890');
CALL INSERT_BRANCH('KOTTAYAM','9087563412');

CREATE TABLE EMPLOYEE(EMP_ID INT PRIMARY KEY ,EMP_NAME VARCHAR(30),
               POSITION VARCHAR(30),SALARY FLOAT,BRANCH_ID INT,
               FOREIGN KEY(BRANCH_NO),REFERENCES(BRANCH_ID);
CREATE INDEX ON (MANAGER_ID);


CREATE PRODUCER INSERT_EMPLOYEE(IN EMP_NAME VARCHAR(30),IN EMP_ID VARCHAR(60),IN SALSRY FLOAT,BRANCH_ID INT;
INSERT INTO EMPLOYEE(EMP_NAME,EMP_ID,EMP_ADDRESS,BRANCH_NO);
SELECT * FROM EMPLOYEE;

CALL INSERT_EMPLOYEE('RAJU','EMP1','5000');
CALL INSERT_EMPLOYEE('ROJA','EMP2','8000') ;
CALL INSERT_EMPLOYEE('SOHA','EMP3','7000');
CALL INSERT_EMPLOYEE('NIKHIL','EMP4','9000');
CALL INSERT_EMPLOYEE('NEEL','EMP5','6000');


CREATE TABLE CUSTOMER(CUSTOMER_ID INT PRIMARY KEY ,CUSTOMER_NAME VARCHAR(30),
                       CUSTOMER_ADDRESS VARCHAR(60),REG_DATE NOT NULL;
INSERT INTO CUSTOEMER VALUES(CUSTOMER_NAME,CUSTOMER_ADDRESS,REG_DATE);
CALL INSERT_CUSTOMER('A','ANI','20-06-10');
CALL INSERT_CUSTOMER('B','SAM','3_03_10');
CALL INSERT_CUSTOMER('C','MANU','11_05_11');
CALL INSERT_CUSTOMER('D','RAJU','15_05_11');
CALL INSERT_CUSTOMER('E','RAMA','20_11-11');
 
CREATE TABLE ISSUE_STATUS(ISSUE_ID INT PRIMARY KEY,ISSUE_CUST INT,
                           ISSUE_BOOKNAME VARCHAR(60),ISSUE_DATE DATE,ISBN_BOOK INT,
                           FOREIGN KEY (ISSUE_CUST),REFERENCES CUST(CUST_ID);
INSERT INTO BOOKS VALUES
                     (20,101,'AAAA','22-10-10','2456656');
                     (45,114,'BBBB','10-09-11','56567788');
                     (30,210,'CCCC','13-06-11','8764097854');
                     (46,215,'DDDD','17-12-12','5439870654');
                     (50,350,'EEEE','24-10-12','4567890321');
SELECT * FROM ISSUE_STATUS;

CREATE TABLE RETURN_STATUS(RETURN_ID INT PRIMARY KEY,RETURN_CUST INT,RETURN_BOOKNAME VARCHAR(60),
                          RETURN_DATE DATE,ISBN_BOOK2 VARCHAR(30);
 FOREIGN KEY (RETURN_CRUST)REFERENCE CUSTOMER(CUSTOMER_ID);
 FOREIGN KEY(ISBN_BOOK2)REFERANCE BOOK(ISBN);
 INSERT INTO RETURN_STATUS VALUES(20,101,'AAAA','6-11-10');
 INSERT INTO RETURN_STATUS VALUES(50,350,'EEEE','10-01-13');
 INSERT INTO RETURN_STATUS VALUES(46,215,'DDDD','17-01-13');
 SELECT * FROM THE RETURN_STATUS;
 
 CREATE TABLE BOOKS(ISBN PRIMARY KEY,BOOK_TITTLE VARCHAR(30),CATEGORY VARCHAR(30),
                    RENTAL_PRICE FLOAT,STATUS('YES','NO')AUTHOR VARCHAR(20),
                    PUBLISHER VARCHAR(60);
INSERT INTO B00KVALUES('45667','AAAA','aaaa','20','YES','SDFFGFD','FGHGHBH');
INSERT INTO BOOKVALUES('45674','BBBB','bbbb','50','YES','FDGHFH','TFGFGFG');
INSERT INTO BOOKVALUES('65788','CCCC','cccc','60','YES','gfdfg','gfcvbhj');
INSERT INTO BOOKVALUES('67435','DDDD','dddd','50','YES','DFBCC','GFDFGH');
SELECT * FROM BOOKS;

TRUNCATE TABLE BRANCH;
TRUNCATE TABLE EMPLOYEE;
TRUNCATE TABLE CUSTOMRT;
TRUNCATE TABLE ISSUE_STATUS;
TRUNCATE TABLE RETURN_STATUS;
TRUNCATE TABLE BOOK;

-- TASK1                     
SELECT BOOK_TITTLE,CATEGORY,RENTAL_PRICE FROM BOOKS
WHERE STATUS='YES';
-- TASK2
SELECT EMP_NAME,SALARY FROM EMPLOYEE ORDER BY SALARY DESC;
-- TASK3
SELECT ISSUED_BOOK,ISSUED_CUSTOMER FROM ISSUE_STATUS ORDER BY ISBN_BOOK;
-- TASK4
SELECT CATEGORY,COUNTBOOKS FROM CATOGERY;
-- TASK5
SELECT EMP_NAME,POSITION FROM EMPLOYEE WHERE SALARY >50000;
-- TASK6
SELECT CUSTOMER_NAME FROM CUSTOMER WHERE RED_DATE<'2022-01-01';
-- TASK7
SELECT BRANCH_ID,COUNT(EMP_ID) AS NO_OF_EMPLOYEES FROM EMPLOYEE GROUP BY BRANCH_ID;
-- TASK8
SELECT DISTINCT(CUSTOMER_NAME)FROM CUSTOMER INNER JOIN ISSUE_STATUS ON CUSTOMER.CUSTOMER_ID=ISSUESTATUS.ISSUED_CUST
                              WHERE MONTHNAME(ISSUESTATUS.ISSUE_DATE)='JUNE' AND YEAR(ISSUE_STATUS.ISSUED_DATE)='2023';
-- TASK9
SELECT BOOK_TITLE FROM BOOKS WHERE CATEGORY='HISTORY';
-- TASK10
SELECT BRANCH_ID,COUNT(EMP_ID)AS COUNT_OF_EMPLOYEES FROM EMPLOYEE GROUP BY BRANCH_ID HAVING COUNT(EMP_ID);
DROP PROCEDURE INSERT_BRANCH_DETAILS;
DROP PROCEDURE INSERT_ENPLOYEE_DETAILS;
DROP PROCEDURE INSERT_CUSTOMER_DETAILS;

DROP TRIGGER BEFORE_INSERT_ISSUESTATUS;
DROP TRIGGER AFTER_INSERT_ISSUESTATUS;
DROP TRIGGER AFTER_INSERT_RETUYNSTATUS;

DROP TABLE BRANCH;
DROP TABLE EMPLOYEE;
DROP TABLE CUSTOMER;
DROP TABLE ISSUE_STATUS;
DROP TABLE RETURN_STATUS;
DROP TABLE BOOKS;


                              
                              










                            
                       






