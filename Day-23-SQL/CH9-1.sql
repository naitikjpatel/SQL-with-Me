SQL> 
SQL> REM CHEPTER 1-8 :SELECT
SQL> 
SQL> REM CHAPTER 9: DML,TCL,DDL
SQL> 
SQL> REM DRL/DQL : DATA RETRIEVAL/QUERY LANGUAGE :SELECT :CHAPTER 1 TO 8
SQL> 
SQL> REM DML :DATA MANIPULATION LANGUAGE
SQL> 
SQL> REM MANIPULATION :ANY TYPE OF CHANGES
SQL> 
SQL> REM DML : DATA MANIPULATION LANGUAGE : INSERT UPDATE DELETE
SQL> 
SQL> REM TCL : TRANSACTION CONTROL LANGUAGE
SQL> 
SQL> 
SQL> 
SQL> REM DML : INSERT UPDATE DELETE
SQL> 
SQL> REM 8AM :CONNECT SCOTT/TIGER :YOU SESSION STARTS AT 8AM
SQL> 
SQL> REM 8.10 :INSERT :X
SQL> REM 8.12 :UPDATE :X
SQL> REM 8.15 :DELETE :Y
SQL> REM 8.20 :UPDATE :Z
SQL> 
SQL> REM ALL ABOVE 4 STATEMENTS IN A GROUP IS CALLED A TRANSACTION
SQL> 
SQL> REM TRANSACTION CAN BE : 1 FULL SAVED :COMMIT
SQL> REM 2 FULLY UNDO :ROLLBACK
SQL> 
SQL> REM 3 PARTIALLY UNDO AND PARTIALLY SAVE :ROLLBACK TO SAVEPOINT; + COMMIT;
SQL> 
SQL> REM DCL : DATA CONTROL LANGUAGE :GRANT ,REVOKE
SQL> REM TCL :TO CONTROL TRANSACTION
SQL> 
SQL> REM COMMIT :SAVE
SQL> 
SQL> REM ROLLBACK : FULLY UNDO ,ROLLBACK TO SAVEPOINT : PARTIALLY UNDO
SQL> 
SQL> REM SAVEPOINT :IT WILL BREAK YOUR TRANSACTION INTO PARTS
SQL> 
SQL> 
SQL> REM TCL:COMMIT,ROLLBACK,SAVEPOINT
SQL> 
SQL> REM DML : INSERT,UPDATE,DELETE
SQL> 
SQL> SELECT * FROM REGIONS;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 Europe                                                                                                                                                                                       
         2 Americas                                                                                                                                                                                     
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

SQL> DROP TABLE R1;

Table dropped.

SQL> CREATE TABLE R1 AS SELECT * FROM REGIONS;

Table created.

SQL> 
SQL> DELETE R1;

4 rows deleted.

SQL> COMMIT;

Commit complete.

SQL> DESC R1;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 REGION_ID                                                                                                         NOT NULL NUMBER
 REGION_NAME                                                                                                                VARCHAR2(25)

SQL> 
SQL> REM INSERT : TO ADD NEW ROWS TO THE TABLE
SQL> 
SQL> REM UPDATE : TO UPDATE/CHANGE/MODIFY/EDIT EXISTING ROW VALUES
SQL> 
SQL> REM DELETE : TO REMOVE/DELETE ROWS OF THE TABLE
SQL> 
SQL> REM TYPES OF INSERT :1 INSERT ..VALUES 3 INSERT ..SUBQUERY
SQL> 
SQL> REM INSERT ... VALUES : IT CAN INSERT SINGLE ROW WITH SINGLE EXECUTION COMMAND
SQL> 
SQL> REM INSERT ...SUB QUERY : IT CAN INSERT ZERO ,ONE,MULTIPLE OR ALL ROWS OF SOURCE TABLE (THE TABLE USED IN SUB QUERY)
SQL> 
SQL> DESC R1;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 REGION_ID                                                                                                         NOT NULL NUMBER
 REGION_NAME                                                                                                                VARCHAR2(25)

SQL> 
SQL> INSERT INTO R1 VALUES(1,'ASIA');

1 row created.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         

SQL> 
SQL> REM MEMORY HAS 1 ROWS ,TABLE HAS 0 ROW
SQL> 
SQL> INSERT INTO R1 VALUES(2,'AMERICA');

1 row created.

SQL> REM MEMORY HAS 2 ROWS ,TABLE HAS 0 ROW
SQL> 
SQL> 
SQL> REM ROLLBACK:COMMAND UNDO THE CHANGES OF CURRENT TRANSACTION FROM MEMORY
SQL> 
SQL> REM TRANSACTION STARTS WHEN WE EXECUTE OUR FIRST DML STATEMENT
SQL> 
SQL> REM TRANSACTION ENDS WHEN WE EXECUTION EITHER COMMIT OR ROLLBACK
SQL> 
SQL> REM IN OUR CURRENT TRANSACTION THERE ARE TOTAL 2 INSERT STATEMENTS
SQL> 
SQL> REM BOTH ROWS ARE ONLY AVAILABLE IN MEMORY THEAY ARE NOT STORED IN TABELE YET.
SQL> 
SQL> ROLLBACK;

Rollback complete.

SQL> REM THE ABOVE COMMAND WILL UNDO THE CHANGES OF RAM.
SQL> 
SQL> REM BOTH ROWS WILL BE REMOVED FROM MEMORY
SQL> 
SQL> SELECT * FROM R1;

no rows selected

SQL> 
SQL> INSERT INTO R1 VALUES (1,'AUSTRALIA
  2  ');

1 row created.

SQL> INSERT INTO R1 VALUES (1,'AMERICA');

1 row created.

SQL> 
SQL> REM MEMORY HAS 2 ROWS ,TABLE HAS 0 ROW
SQL> 
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 AUSTRALIA                                                                                                                                                                                    
         1 AMERICA                                                                                                                                                                                      

SQL> COMMIT;

Commit complete.

SQL> REM THE ABOVE COMMAND WILL SAVE /STORE ALL THE CHANGES OF OUR TRANSACTION (2 INSERTS) INTO TABLE/DATABASE/HARDDISK PERMANETLY.
SQL> 
SQL> REM MEMORY HAS 0 ROW ,TABLE HAS 2 ROWS
SQL> 
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 AUSTRALIA                                                                                                                                                                                    
         1 AMERICA                                                                                                                                                                                      

SQL> ROLLBACK;

Rollback complete.

SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 AUSTRALIA                                                                                                                                                                                    
         1 AMERICA                                                                                                                                                                                      

SQL> 
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 AUSTRALIA                                                                                                                                                                                    
         1 AMERICA                                                                                                                                                                                      

SQL> INSERT INTO R1 VALUES(3,'ASIA');

1 row created.

SQL> 
SQL> REM MEMORY HAS 1 ROWS AND TABLE HAS 2 ROWS
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 AUSTRALIA                                                                                                                                                                                    
         1 AMERICA                                                                                                                                                                                      
         3 ASIA                                                                                                                                                                                         

SQL> 
SQL> SAVEPOINT A;

Savepoint created.

SQL> 
SQL> REM ABOVE COMMAND WILL BREAK OUR TRANSACTION INTO PARTS.
SQL> 
SQL> REM WE CAN USE SAVEPOINT NAME IN ROLLBACK COMMAND TO UNDO THE TRANSACTION PARTIALLY.
SQL> 
SQL> INSERT INTO R1 VALUES (4,'AMERICA');

1 row created.

SQL> 
SQL> REM MEMORY HAS 2 ROWS ,TABLE HAS 2 ROWS.
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 AUSTRALIA                                                                                                                                                                                    
         1 AMERICA                                                                                                                                                                                      
         3 ASIA                                                                                                                                                                                         
         4 AMERICA                                                                                                                                                                                      

SQL> 
SQL> REM AT THIS MOMENT WE HAVE ALL 3 OPTIONS OPEN
SQL> 
SQL> REM 1 COMMIT: WILL SAVE BOTH CHNAGES IN TABLE AND REMOVE SAVEPOINT
SQL> 
SQL> REM 2 ROLLBACK : WILL UNDO BOTH CHANGES FROM MEMORY AND REMOVE SAVEPOINT
SQL> 
SQL> REM 3 ROLLBACK TO A ; +COMMIT : WILL UNDO 2nd INSERT AND SAVE POINT 1st INSERT
SQL> 
SQL> ROLLBACK TO A;

Rollback complete.

SQL> REM MEMORY HAS 1 ROWS ,TABLE HAS 2 ROWS
SQL> 
SQL> REM ABOVE COMMAND HAS UNDO THE 2nd INSERT
SQL> 
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 AUSTRALIA                                                                                                                                                                                    
         1 AMERICA                                                                                                                                                                                      
         3 ASIA                                                                                                                                                                                         

SQL> 
SQL> REM AT THIS MOMENT WE HAVE TWO OPTIONS AVAILABLE
SQL> 
SQL> REM 1 COMMIT : WILL SAVE 1st INSERT IN TABLE
SQL> 
SQL> REM 2 ROLLBACK : WILL UNDO 1st INSERT FROM MEMORY
SQL> 
SQL> COMMIT;

Commit complete.

SQL> REM MEMORY HAS 0 ROW , TABLE HAS 3 ROWS
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 AUSTRALIA                                                                                                                                                                                    
         1 AMERICA                                                                                                                                                                                      
         3 ASIA                                                                                                                                                                                         

SQL> 
SQL> REM COMMIT HAS SINGLE SYNTAX: COMMIT
SQL> 
SQL> REM ROLLBACK HAS TWO SYNTAXES : 1 ROLLBACK 2 ROLLBACK TO SAVEPOINT NAME;
SQL> 
SQL> REM TCL COMMANDS : 1 COMMIT 2 ROLLBACK/ROLLBACK TO SAVEPOINTNAME 3 SAVEPOINT
SQL> 
SQL> DELETE R1;

3 rows deleted.

SQL> COMMIT;

Commit complete.

SQL> SELECT * FROM R1;

no rows selected

SQL> 
SQL> INSERT INTO R1 VALUES (1,'ASIA');

1 row created.

SQL> 
SQL> SAVEPOINT A;

Savepoint created.

SQL> INSERT INTO R1 VALUES (2,'AMERICA');

1 row created.

SQL> SAVEPOINT B;

Savepoint created.

SQL> 
SQL> INSERT INTO R1 VALUES (3,'AUSTRALIA');

1 row created.

SQL> 
SQL> REM MEMORY HAS 3 ROWS ,TABLE 0 ROWS
SQL> 
SQL> REM TOTAL POSSIILITIES:
SQL> 
SQL> REM 1 COMMIT :MEMORY 0 ROWS ,TABLE 3 ROWS
SQL> 
SQL> REM 2 ROLLBACK : MEMORY HAS 0 ROWS ,TABLE 0 ROWS
SQL> 
SQL> REM 3 ROLLBACK TO B :MEMORY 0 ROW ,TABLE 2 ROWS
SQL> 
SQL> REM 4 ROLLBACK TO A :MEMORY 0 ROW ,TABLE 1 ROW
SQL> 
SQL> REM 5 ROLLBACK TO B ;ROLLBACK TO A; COMMIT; : MEMMORY 0 ROWS ,TABLE HAS 1 ROW
SQL> 
SQL> SELECT * FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         
         2 AMERICA                                                                                                                                                                                      
         3 AUSTRALIA                                                                                                                                                                                    

SQL> 
SQL> ROLLBACK TO B;

Rollback complete.

SQL> SELECT *FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         
         2 AMERICA                                                                                                                                                                                      

SQL> ROLLBACK TO A;

Rollback complete.

SQL> SELECT *FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         

SQL> COMMIT;

Commit complete.

SQL> SELECT *FROM R1;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 ASIA                                                                                                                                                                                         

SQL> SPOOL OFF;

