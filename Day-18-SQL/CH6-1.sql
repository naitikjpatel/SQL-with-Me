SQL> 
SQL> REM TODAY TOPIC IS EXAPANDING KNOWLEDGE IN THE JOINS
SQL> 
SQL> REM JOINS : TO DISPLAY DATA FROM MULTIPLE TABLES IN SINGLE RESULT
SQL> 
SQL> SELECT * FROM DEPARTMENTS;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID                                                                                                                                     
------------- ------------------------------ ---------- -----------                                                                                                                                     
           10 Administration                        200        1700                                                                                                                                     
           20 Marketing                             201        1800                                                                                                                                     
           50 Shiping                               124        1500                                                                                                                                     
           60 IT                                    103        1400                                                                                                                                     
           80 Sales                                 149        2500                                                                                                                                     
           90 Executive                             100        1700                                                                                                                                     
          110 Accounting                            205        1700                                                                                                                                     
          190 Contracting                                      1700                                                                                                                                     

8 rows selected.

SQL> SELECT * FROM LOCATIONS;

LOCATION_ID STREET_ADRESS                            POSTAL_CODE  CITY                           STATE_PROVINCE            CO                                                                           
----------- ---------------------------------------- ------------ ------------------------------ ------------------------- --                                                                           
       1400 2014 Jabberwocky Rd                      26192        Southlake                      Texas                     US                                                                           
       1500 2011 Interiors Blvd                      99236        South San Francisco            California                US                                                                           
       1700 2004 Charade Rd                          98199        Seattle                        Washington                US                                                                           
       1800 460 Bloor St. W.                         ON M5S 1X8   Toronto                        Ontario                   CA                                                                           
       2500 Magdalen Centre, The Oxford Science Park OX9 9ZB      Oxford                         Oxford                    UK                                                                           

SQL> 
SQL> REM DEPARTMENT_NAME ,CITY
SQL> 
SQL> REM SELECT SYNTAX: SELECT ... FROM ... WHERE ..GROUP BY/HAVING ... ORDER BY ...OFFSET ...FETCH
SQL> 
SQL> REM FROM : TABLE1 JOIN TYPE TABLE2
SQL> 
SQL> REM SUPPORTED JOIN TYPS IN ORACLE:
SQL> 
SQL> REM 1 NATURAL 2 CROSS 3 INNER(DEFAULT) 4 OUTER
SQL> 
SQL> REM PRE-REQUISITES FOR USING NATURAL JOIN
SQL> 
SQL> 
SQL> 
SQL> 
SQL> ===========================REM PRE-REQUISITES FOR USING NATURAL JOIN=================
SP2-0734: unknown command beginning "==========..." - rest of line ignored.
SQL> 
SQL> REM 1 BOTH TABLES MUST HAVE ATLEASRT SINGLE COMMON COLUMN
SQL> 
SQL> REM 2 THEIR CORRESPONDING DATA TYPE MUST MATCH
SQL> 
SQL> REM 3 THEIR VALUE SHOULD BE SIMILAR
SQL> 
SQL> REM 4 THEIR MEANINGS MUST BE SAME
SQL> 
SQL> 
SQL> REM E D L C R
SQL> 
SQL> REM EMPLOYEES DEPARTMENTS LOCATIONS COUNTRIES REGIONS
SQL> 
SQL> REM    DEPARTMENT_ID  LOCATION_ID COUNTRY_ID REGION_ID
SQL> 
SQL> 
SQL> REM DISPLAY DEPARTMENT_NAME ,CITY
SQL> 
SQL> SELECT DEPARTMENT_NAME ,CITY
  2  FROM DEPARTMENTS NATURAL JOIN LOCATIONS;

DEPARTMENT_NAME                CITY                                                                                                                                                                     
------------------------------ ------------------------------                                                                                                                                           
Administration                 Seattle                                                                                                                                                                  
Marketing                      Toronto                                                                                                                                                                  
Shiping                        South San Francisco                                                                                                                                                      
IT                             Southlake                                                                                                                                                                
Sales                          Oxford                                                                                                                                                                   
Executive                      Seattle                                                                                                                                                                  
Accounting                     Seattle                                                                                                                                                                  
Contracting                    Seattle                                                                                                                                                                  

8 rows selected.

SQL> SELECT * FROM DEPARTMENTS;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID                                                                                                                                     
------------- ------------------------------ ---------- -----------                                                                                                                                     
           10 Administration                        200        1700                                                                                                                                     
           20 Marketing                             201        1800                                                                                                                                     
           50 Shiping                               124        1500                                                                                                                                     
           60 IT                                    103        1400                                                                                                                                     
           80 Sales                                 149        2500                                                                                                                                     
           90 Executive                             100        1700                                                                                                                                     
          110 Accounting                            205        1700                                                                                                                                     
          190 Contracting                                      1700                                                                                                                                     

8 rows selected.

SQL> SELECT * FROM LOCATIONS;

LOCATION_ID STREET_ADRESS                            POSTAL_CODE  CITY                           STATE_PROVINCE            CO                                                                           
----------- ---------------------------------------- ------------ ------------------------------ ------------------------- --                                                                           
       1400 2014 Jabberwocky Rd                      26192        Southlake                      Texas                     US                                                                           
       1500 2011 Interiors Blvd                      99236        South San Francisco            California                US                                                                           
       1700 2004 Charade Rd                          98199        Seattle                        Washington                US                                                                           
       1800 460 Bloor St. W.                         ON M5S 1X8   Toronto                        Ontario                   CA                                                                           
       2500 Magdalen Centre, The Oxford Science Park OX9 9ZB      Oxford                         Oxford                    UK                                                                           

SQL> 
SQL> SELECT * FROM COUNTRIES;

CO COUNTRY_NAME                              REGION_ID                                                                                                                                                  
-- ---------------------------------------- ----------                                                                                                                                                  
CA Canada                                            2                                                                                                                                                  
DE Germany                                           1                                                                                                                                                  
UK United Kingdom                                    1                                                                                                                                                  
US United States of America                          2                                                                                                                                                  

SQL> REM DISPLAY CIOTY,STATE_PROVINCE ,COUNTRY_NAME
SQL> 
SQL> REM 	LOCATIONS LOCATIONS 	COUNTRIES
SQL> 
SQL> SELECT CITY,STATE_PROVINCE,COUNTRY_NAME FROM LOCATIONS NATURAL JOIN COUNTRIES;

CITY                           STATE_PROVINCE            COUNTRY_NAME                                                                                                                                   
------------------------------ ------------------------- ----------------------------------------                                                                                                       
Southlake                      Texas                     United States of America                                                                                                                       
South San Francisco            California                United States of America                                                                                                                       
Seattle                        Washington                United States of America                                                                                                                       
Toronto                        Ontario                   Canada                                                                                                                                         
Oxford                         Oxford                    United Kingdom                                                                                                                                 

SQL> 
SQL> 
SQL> SELECT * FROM COUNTRIES;

CO COUNTRY_NAME                              REGION_ID                                                                                                                                                  
-- ---------------------------------------- ----------                                                                                                                                                  
CA Canada                                            2                                                                                                                                                  
DE Germany                                           1                                                                                                                                                  
UK United Kingdom                                    1                                                                                                                                                  
US United States of America                          2                                                                                                                                                  

SQL> SELECT * FROM REGIONS;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 Europe                                                                                                                                                                                       
         2 Americas                                                                                                                                                                                     
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

SQL> 
SQL> REM DISPLAY COUNTRY
SQL> 
SQL> 
SQL> REM DISPLAY COUNTRY_NAME ,REGION_NAME
SQL> 
SQL> SELECT COUNTRY_NAME,REGION_NAME FROM COUNTRIES NATURAL JOIN REGIONS;

COUNTRY_NAME                             REGION_NAME                                                                                                                                                    
---------------------------------------- -------------------------                                                                                                                                      
United Kingdom                           Europe                                                                                                                                                         
Germany                                  Europe                                                                                                                                                         
United States of America                 Americas                                                                                                                                                       
Canada                                   Americas                                                                                                                                                       

SQL> 
SQL> 
SQL> REM NOW WE JOIN 3 TABLES
SQL> 
SQL> SELECT * FROM DEPARTMENTS;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID                                                                                                                                     
------------- ------------------------------ ---------- -----------                                                                                                                                     
           10 Administration                        200        1700                                                                                                                                     
           20 Marketing                             201        1800                                                                                                                                     
           50 Shiping                               124        1500                                                                                                                                     
           60 IT                                    103        1400                                                                                                                                     
           80 Sales                                 149        2500                                                                                                                                     
           90 Executive                             100        1700                                                                                                                                     
          110 Accounting                            205        1700                                                                                                                                     
          190 Contracting                                      1700                                                                                                                                     

8 rows selected.

SQL> SELECT * FROM LOCATIONS;

LOCATION_ID STREET_ADRESS                            POSTAL_CODE  CITY                           STATE_PROVINCE            CO                                                                           
----------- ---------------------------------------- ------------ ------------------------------ ------------------------- --                                                                           
       1400 2014 Jabberwocky Rd                      26192        Southlake                      Texas                     US                                                                           
       1500 2011 Interiors Blvd                      99236        South San Francisco            California                US                                                                           
       1700 2004 Charade Rd                          98199        Seattle                        Washington                US                                                                           
       1800 460 Bloor St. W.                         ON M5S 1X8   Toronto                        Ontario                   CA                                                                           
       2500 Magdalen Centre, The Oxford Science Park OX9 9ZB      Oxford                         Oxford                    UK                                                                           

SQL> SELECT * FROM COUNTRIES;

CO COUNTRY_NAME                              REGION_ID                                                                                                                                                  
-- ---------------------------------------- ----------                                                                                                                                                  
CA Canada                                            2                                                                                                                                                  
DE Germany                                           1                                                                                                                                                  
UK United Kingdom                                    1                                                                                                                                                  
US United States of America                          2                                                                                                                                                  

SQL> 
SQL> REM DEPARTMENT_NAME,	CITY,		STATE_PROVINCE,		COUNTRY_NAME
SQL> REM DEPARTMENTS		LOCATIONS 	LOCATIONS 		COUNTRIES
SQL> 
SQL> REM  D L C
SQL> 
SQL> SELECT DEPARTMENT_NAME,CITY,STATE_PROVINCE,COUNTRY_NAME
  2  FROM DEPARTMENTS
  3  NATURAL JOIN LOCATIONS
  4  NATURAL JOIN COUNTRIES;

DEPARTMENT_NAME                CITY                           STATE_PROVINCE            COUNTRY_NAME                                                                                                    
------------------------------ ------------------------------ ------------------------- ----------------------------------------                                                                        
Administration                 Seattle                        Washington                United States of America                                                                                        
Marketing                      Toronto                        Ontario                   Canada                                                                                                          
Shiping                        South San Francisco            California                United States of America                                                                                        
IT                             Southlake                      Texas                     United States of America                                                                                        
Sales                          Oxford                         Oxford                    United Kingdom                                                                                                  
Executive                      Seattle                        Washington                United States of America                                                                                        
Accounting                     Seattle                        Washington                United States of America                                                                                        
Contracting                    Seattle                        Washington                United States of America                                                                                        

8 rows selected.

SQL> 
SQL> 
SQL> REM NOW JOIN ON L C R
SQL> REM LOCATIONS COUNTRIES REGIONS TABLES
SQL> 
SQL> SELECT * FROM LOCATIONS;

LOCATION_ID STREET_ADRESS                            POSTAL_CODE  CITY                           STATE_PROVINCE            CO                                                                           
----------- ---------------------------------------- ------------ ------------------------------ ------------------------- --                                                                           
       1400 2014 Jabberwocky Rd                      26192        Southlake                      Texas                     US                                                                           
       1500 2011 Interiors Blvd                      99236        South San Francisco            California                US                                                                           
       1700 2004 Charade Rd                          98199        Seattle                        Washington                US                                                                           
       1800 460 Bloor St. W.                         ON M5S 1X8   Toronto                        Ontario                   CA                                                                           
       2500 Magdalen Centre, The Oxford Science Park OX9 9ZB      Oxford                         Oxford                    UK                                                                           

SQL> SELECT * FROM COUNTRIES;

CO COUNTRY_NAME                              REGION_ID                                                                                                                                                  
-- ---------------------------------------- ----------                                                                                                                                                  
CA Canada                                            2                                                                                                                                                  
DE Germany                                           1                                                                                                                                                  
UK United Kingdom                                    1                                                                                                                                                  
US United States of America                          2                                                                                                                                                  

SQL> SELECT * FROM REGIONS;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 Europe                                                                                                                                                                                       
         2 Americas                                                                                                                                                                                     
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

SQL> REM CITY , COUNTRY_NAME,REGION_NAME
SQL> 
SQL> SELECT CITY,COUNTRY_NAME,REGION_NAME
  2  FROM LOCATIONS
  3  NATURAL JOIN COUNTRIES
  4  NATURAL JOIN REGIONS;

CITY                           COUNTRY_NAME                             REGION_NAME                                                                                                                     
------------------------------ ---------------------------------------- -------------------------                                                                                                       
Southlake                      United States of America                 Americas                                                                                                                        
South San Francisco            United States of America                 Americas                                                                                                                        
Seattle                        United States of America                 Americas                                                                                                                        
Toronto                        Canada                                   Americas                                                                                                                        
Oxford                         United Kingdom                           Europe                                                                                                                          

SQL> 
SQL> 
SQL> REM NOW WE APPLY NTURAL JOIN ON 4 TABLES
SQL> 
SQL> SELECT * FROM DEPARTMENS;
SELECT * FROM DEPARTMENS
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM DEPARTMENTS;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID                                                                                                                                     
------------- ------------------------------ ---------- -----------                                                                                                                                     
           10 Administration                        200        1700                                                                                                                                     
           20 Marketing                             201        1800                                                                                                                                     
           50 Shiping                               124        1500                                                                                                                                     
           60 IT                                    103        1400                                                                                                                                     
           80 Sales                                 149        2500                                                                                                                                     
           90 Executive                             100        1700                                                                                                                                     
          110 Accounting                            205        1700                                                                                                                                     
          190 Contracting                                      1700                                                                                                                                     

8 rows selected.

SQL> SELECT * FROM LOCATIONS;

LOCATION_ID STREET_ADRESS                            POSTAL_CODE  CITY                           STATE_PROVINCE            CO                                                                           
----------- ---------------------------------------- ------------ ------------------------------ ------------------------- --                                                                           
       1400 2014 Jabberwocky Rd                      26192        Southlake                      Texas                     US                                                                           
       1500 2011 Interiors Blvd                      99236        South San Francisco            California                US                                                                           
       1700 2004 Charade Rd                          98199        Seattle                        Washington                US                                                                           
       1800 460 Bloor St. W.                         ON M5S 1X8   Toronto                        Ontario                   CA                                                                           
       2500 Magdalen Centre, The Oxford Science Park OX9 9ZB      Oxford                         Oxford                    UK                                                                           

SQL> SELECT * FROM COUNTRIES;

CO COUNTRY_NAME                              REGION_ID                                                                                                                                                  
-- ---------------------------------------- ----------                                                                                                                                                  
CA Canada                                            2                                                                                                                                                  
DE Germany                                           1                                                                                                                                                  
UK United Kingdom                                    1                                                                                                                                                  
US United States of America                          2                                                                                                                                                  

SQL> SELECT * FROM REGIONS;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 Europe                                                                                                                                                                                       
         2 Americas                                                                                                                                                                                     
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

SQL> 
SQL> REM DEPARTMENT_NAME ,CITY,STATE_PROVINCE ,COUNTRY_NAME ,REGION_NAME
SQL> 
SQL> SELECT DEPARTMENT_NAME,CITY,STATE_PROVINCE ,COUNTRY_NAME ,REGION_NAME
  2  FROM DEPARTMENTS
  3  NATURAL JOIN LOCATIONS
  4  NATURAL JOIN COUNTRIES
  5  NATURAL JOIN REGIONS;

DEPARTMENT_NAME                CITY                           STATE_PROVINCE            COUNTRY_NAME                             REGION_NAME                                                            
------------------------------ ------------------------------ ------------------------- ---------------------------------------- -------------------------                                              
Administration                 Seattle                        Washington                United States of America                 Americas                                                               
Marketing                      Toronto                        Ontario                   Canada                                   Americas                                                               
Shiping                        South San Francisco            California                United States of America                 Americas                                                               
IT                             Southlake                      Texas                     United States of America                 Americas                                                               
Sales                          Oxford                         Oxford                    United Kingdom                           Europe                                                                 
Executive                      Seattle                        Washington                United States of America                 Americas                                                               
Accounting                     Seattle                        Washington                United States of America                 Americas                                                               
Contracting                    Seattle                        Washington                United States of America                 Americas                                                               

8 rows selected.

SQL> 
SQL> 
SQL> SELECT DEPARTMENT_NAME,COUNTRY_NAME
  2  FROM DEPARTMENTS
  3  NATURAL JOIN COUNTRIES
  4  ;

DEPARTMENT_NAME                COUNTRY_NAME                                                                                                                                                             
------------------------------ ----------------------------------------                                                                                                                                 
Administration                 Canada                                                                                                                                                                   
Marketing                      Canada                                                                                                                                                                   
Shiping                        Canada                                                                                                                                                                   
IT                             Canada                                                                                                                                                                   
Sales                          Canada                                                                                                                                                                   
Executive                      Canada                                                                                                                                                                   
Accounting                     Canada                                                                                                                                                                   
Contracting                    Canada                                                                                                                                                                   
Administration                 Germany                                                                                                                                                                  
Marketing                      Germany                                                                                                                                                                  
Shiping                        Germany                                                                                                                                                                  
IT                             Germany                                                                                                                                                                  
Sales                          Germany                                                                                                                                                                  
Executive                      Germany                                                                                                                                                                  
Accounting                     Germany                                                                                                                                                                  
Contracting                    Germany                                                                                                                                                                  
Administration                 United Kingdom                                                                                                                                                           
Marketing                      United Kingdom                                                                                                                                                           
Shiping                        United Kingdom                                                                                                                                                           
IT                             United Kingdom                                                                                                                                                           
Sales                          United Kingdom                                                                                                                                                           

DEPARTMENT_NAME                COUNTRY_NAME                                                                                                                                                             
------------------------------ ----------------------------------------                                                                                                                                 
Executive                      United Kingdom                                                                                                                                                           
Accounting                     United Kingdom                                                                                                                                                           
Contracting                    United Kingdom                                                                                                                                                           
Administration                 United States of America                                                                                                                                                 
Marketing                      United States of America                                                                                                                                                 
Shiping                        United States of America                                                                                                                                                 
IT                             United States of America                                                                                                                                                 
Sales                          United States of America                                                                                                                                                 
Executive                      United States of America                                                                                                                                                 
Accounting                     United States of America                                                                                                                                                 
Contracting                    United States of America                                                                                                                                                 

32 rows selected.

SQL> REM IN NATURAL JOIN AND CROSS JOIN TABLE SEQUENCE DOES'NT MATTER.
SQL> 
SQL> REM WHEN WE TRY TO USE NATURAL JOIN BETWEEN TWO TABLES ,WHICH DOEN'T HAVE ANY COMMON COLUMN .IT WILL DEVELOP CARTESION PRODUCT
SQL> 
SQL> REM CARTESION PRODUCT IS NOTHING BUT RESULT OF CROSS JOIN.
SQL> 
SQL> SELECT * FROM DEPARTMENTS;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID                                                                                                                                     
------------- ------------------------------ ---------- -----------                                                                                                                                     
           10 Administration                        200        1700                                                                                                                                     
           20 Marketing                             201        1800                                                                                                                                     
           50 Shiping                               124        1500                                                                                                                                     
           60 IT                                    103        1400                                                                                                                                     
           80 Sales                                 149        2500                                                                                                                                     
           90 Executive                             100        1700                                                                                                                                     
          110 Accounting                            205        1700                                                                                                                                     
          190 Contracting                                      1700                                                                                                                                     

8 rows selected.

SQL> SELECT * FROM LOCATIONS;

LOCATION_ID STREET_ADRESS                            POSTAL_CODE  CITY                           STATE_PROVINCE            CO                                                                           
----------- ---------------------------------------- ------------ ------------------------------ ------------------------- --                                                                           
       1400 2014 Jabberwocky Rd                      26192        Southlake                      Texas                     US                                                                           
       1500 2011 Interiors Blvd                      99236        South San Francisco            California                US                                                                           
       1700 2004 Charade Rd                          98199        Seattle                        Washington                US                                                                           
       1800 460 Bloor St. W.                         ON M5S 1X8   Toronto                        Ontario                   CA                                                                           
       2500 Magdalen Centre, The Oxford Science Park OX9 9ZB      Oxford                         Oxford                    UK                                                                           

SQL> SELECT DEPARTMENT_NAME,CITY
  2  FROM DEPARTMENTS
  3  NATURAL JOIN LOCATIONS;

DEPARTMENT_NAME                CITY                                                                                                                                                                     
------------------------------ ------------------------------                                                                                                                                           
Administration                 Seattle                                                                                                                                                                  
Marketing                      Toronto                                                                                                                                                                  
Shiping                        South San Francisco                                                                                                                                                      
IT                             Southlake                                                                                                                                                                
Sales                          Oxford                                                                                                                                                                   
Executive                      Seattle                                                                                                                                                                  
Accounting                     Seattle                                                                                                                                                                  
Contracting                    Seattle                                                                                                                                                                  

8 rows selected.

SQL> SELECT DEPARTMENT_NAME,CITY
  2  FROM DEPARTMENTS
  3  CROSS JOIN LOCATIONS;

DEPARTMENT_NAME                CITY                                                                                                                                                                     
------------------------------ ------------------------------                                                                                                                                           
Administration                 Southlake                                                                                                                                                                
Marketing                      Southlake                                                                                                                                                                
Shiping                        Southlake                                                                                                                                                                
IT                             Southlake                                                                                                                                                                
Sales                          Southlake                                                                                                                                                                
Executive                      Southlake                                                                                                                                                                
Accounting                     Southlake                                                                                                                                                                
Contracting                    Southlake                                                                                                                                                                
Administration                 South San Francisco                                                                                                                                                      
Marketing                      South San Francisco                                                                                                                                                      
Shiping                        South San Francisco                                                                                                                                                      
IT                             South San Francisco                                                                                                                                                      
Sales                          South San Francisco                                                                                                                                                      
Executive                      South San Francisco                                                                                                                                                      
Accounting                     South San Francisco                                                                                                                                                      
Contracting                    South San Francisco                                                                                                                                                      
Administration                 Seattle                                                                                                                                                                  
Marketing                      Seattle                                                                                                                                                                  
Shiping                        Seattle                                                                                                                                                                  
IT                             Seattle                                                                                                                                                                  
Sales                          Seattle                                                                                                                                                                  

DEPARTMENT_NAME                CITY                                                                                                                                                                     
------------------------------ ------------------------------                                                                                                                                           
Executive                      Seattle                                                                                                                                                                  
Accounting                     Seattle                                                                                                                                                                  
Contracting                    Seattle                                                                                                                                                                  
Administration                 Toronto                                                                                                                                                                  
Marketing                      Toronto                                                                                                                                                                  
Shiping                        Toronto                                                                                                                                                                  
IT                             Toronto                                                                                                                                                                  
Sales                          Toronto                                                                                                                                                                  
Executive                      Toronto                                                                                                                                                                  
Accounting                     Toronto                                                                                                                                                                  
Contracting                    Toronto                                                                                                                                                                  
Administration                 Oxford                                                                                                                                                                   
Marketing                      Oxford                                                                                                                                                                   
Shiping                        Oxford                                                                                                                                                                   
IT                             Oxford                                                                                                                                                                   
Sales                          Oxford                                                                                                                                                                   
Executive                      Oxford                                                                                                                                                                   
Accounting                     Oxford                                                                                                                                                                   
Contracting                    Oxford                                                                                                                                                                   

40 rows selected.

SQL> 
SQL> 
SQL> 
SQL> REM NATURL JOIN ,CROSS JOIN
SQL> 
SQL> SPOOL OFF;
