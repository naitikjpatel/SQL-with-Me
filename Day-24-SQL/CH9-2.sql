SQL> 
SQL> REM DML : INSERT UPDATE DELETE
SQL> 
SQL> REM TCL :COMMIT ROLLBACK SAVEPOINT
SQL> 
SQL> REM DDL :TRUNCATE DROP FLASHBACK
SQL> 
SQL> REM TRANSACTION : BUNCH/GROUP OF DML STATEMENTS WITHIN SINGLE SESSION
SQL> 
SQL> REM SESSION : TIME BETWEEN LOGIN AND LOGOUT
SQL> 
SQL> REM TWO TYPES OF INSERT : 1 INSERT .. VALUES 2 INSERT WITH SUB QUERY
SQL> 
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         

SQL> 
SQL> INSERT INTO R1 VALUES(2,'AMERICAS');

1 row created.

SQL> INSERT INTO R1 VALUES(3,'ASIA');

1 row created.

SQL> INSERT INTO R1 VALUES(4,'MIDDLE EAST AND AFRICA');

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.

SQL> 
SQL> DELETE FROM R1 WHERE REGION_ID IN (2,4);

2 rows deleted.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         
         3 ASIA                                                                                                                                                                                         

SQL> SELECT * FROM REGIONS;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 Europe                                                                                                                                                                                       
         2 Americas                                                                                                                                                                                     
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

SQL> DESC R1;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 REGION_ID                                                                                                         NOT NULL NUMBER
 REGION_NAME                                                                                                                VARCHAR2(25)

SQL> DESC REGIONS;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 REGION_ID                                                                                                         NOT NULL NUMBER
 REGION_NAME                                                                                                                VARCHAR2(25)

SQL> INSERT INTO R1 SELECT * FROM REGIONS WHERE REGION_ID IN (3,4);

2 rows created.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         
         3 ASIA                                                                                                                                                                                         
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

SQL> ROLL;
Rollback complete.
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         
         3 ASIA                                                                                                                                                                                         

SQL> INSERT INTO R1 SELECT * FROM REGIONS WHERE REGION_ID IN (3,4);

2 rows created.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         
         3 ASIA                                                                                                                                                                                         
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

SQL> ROLLBACK
  2  ;

Rollback complete.

SQL> 
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         
         3 ASIA                                                                                                                                                                                         
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

SQL> 
SQL> REM UPDATE : TO EDIT/CHANGE/MODIFY/UPDATE EXISTING VALUES OF EXISTING ROWS
SQL> 
SQL> UPDATE R1 SET REGION_NAME=UPPER(REGION_NAME);

4 rows updated.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         
         3 ASIA                                                                                                                                                                                         
         3 ASIA                                                                                                                                                                                         
         4 MIDDLE EAST AND AFRICA                                                                                                                                                                       

SQL> ROLLBACK;

Rollback complete.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         
         3 ASIA                                                                                                                                                                                         
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

SQL> UPDATE R1 SET REGION_NAME=UPPER(REGION_NAME) WHERE REGION_ID=4;

1 row updated.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         
         3 ASIA                                                                                                                                                                                         
         3 Asia                                                                                                                                                                                         
         4 MIDDLE EAST AND AFRICA                                                                                                                                                                       

SQL> UPDATE R1 SET REGION_NAME=LOWER(REGION_NAME) WHERE REGION_ID=1;

1 row updated.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 asia                                                                                                                                                                                         
         3 ASIA                                                                                                                                                                                         
         3 Asia                                                                                                                                                                                         
         4 MIDDLE EAST AND AFRICA                                                                                                                                                                       

SQL> UPDATE R1 SET REGION_ID=REGION_ID+10, REGION_NAME=UPPER(REGION_NAME) WHERE REGION_ID=3;

2 rows updated.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 asia                                                                                                                                                                                         
        13 ASIA                                                                                                                                                                                         
        13 ASIA                                                                                                                                                                                         
         4 MIDDLE EAST AND AFRICA                                                                                                                                                                       

SQL> 
SQL> 
SQL> UPDATE R1 SET REGION_NAME =(SELECT REGION_NAME FROM REGIONS WHERE REGION_ID =1) WHERE REGION_ID =4;

1 row updated.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 asia                                                                                                                                                                                         
        13 ASIA                                                                                                                                                                                         
        13 ASIA                                                                                                                                                                                         
         4 Europe                                                                                                                                                                                       

SQL> 
SQL> 
SQL> 
SQL> REM DELETE : IT CA N DELETE SINGLE ,MULTIPLE OR ALL ROWS OF TABLE ,WE CAN UNDO/ROLLBACK THE CHANGES BEFORE COMMIT
SQL> 
SQL> REM TRUNCATE : IT WILL DELETE ALL ROWS OF TABLE PERMENTALLY ,WE CAN'T GET IS BACK ANY WAY.IT WILL KEEP DEFINITION OF TABLE INTACT.
SQL> 
SQL> REM DELETE : IT CA N DELETE SINGLE ,MULTIPLE OR ALL ROWS OF TABLE ,WE CAN UNDO/ROLLBACK THE CHANGES BEFORE COMMIT.IT WILL KEEP DEFINITION OF TABLE INTACT.
SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM DROP : DROP WILL ACTUALLY NOT DROP THE TABLE,UT WILL RENAME AND KEEP INSIDE ORACLE'S RECYCLEBIN.
SQL> 
SQL> SELECT * FROM E1;
SELECT * FROM E1
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> 
SQL> CREATE TABLE E1 (ID INT);

Table created.

SQL> SELECT * FROM E1;

no rows selected

SQL> COMMIT;

Commit complete.

SQL> DROP TABLE E1;

Table dropped.

SQL> 
SQL> SELECT * FROM E1;
SELECT * FROM E1
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SHOW RECYCLEBIN
SQL> 
SQL> 
SQL> SHOW RECYCLEBIN;
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM INSERT UPDATE DELETE COMMIT ROLLBACK SAVEPOINT TRUNCATE DROP FLASHBACK
SQL> 
SQL> SPOOL OFF;
