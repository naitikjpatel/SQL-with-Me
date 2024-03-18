SQL> 
SQL> REM TODAY TOPIC IS EXPANDING KNOWLEDGE IN JOINS
SQL> 
SQL> 
SQL> REM INNER JOIN IS USED IN BELOW 3 SITUATIONS:
SQL> 
SQL> REM 1 WHEN BOTH TABLES HAS MULTIPLE COMMON COLUMN ,BUT FOR SOME REASON WE WANT TO COMPARE SOME OF THEM.
SQL> 
SQL> REM 2 WHEN BOTH TABLE DO NOT HAVE ANY COMMON COLUMN ,BUT HAS SIMILAR DATA STORED.
SQL> 
SQL> REM 3 WHEN BOTH TABLES DO NOT HAVE COMMON COLUMN AS WELL AS SIMILAR DATA BUT HAS RELATED DATA.
SQL> 
SQL> 
SQL> REM 1 WHEN BOTH TABLES HAS MULTIPLE COMMON COLUMN,BUT FOR SOME REASON WE WANT TO COMPARE SOME OF THEM.
SQL> 
SQL> SELECT * FROM EMPLOYEES;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                                     
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

20 rows selected.

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

SQL> 
SQL> REM INNER JOIN SYNTAX 1: FROM TABLE1 INNER JOIN TABLE2 USING (COMMON COLUMN LIST)
SQL> 
SQL> REM INNER JOIN SYNTAX 2: FROM TABLE1 INNER JOIN TABLE2 ON JOIN CONDITION(S)
SQL> 
SQL> 
SQL> REM INNER JOIN SYNTAX 1: FROM TABLE1 INNER JOIN TABLE2 USING (COMMON COLUMN LIST)
SQL> 
SQL> SELECT FITST_NAME,DEPARTMENT_NAME
  2  FROM EMPLOYEES
  3  INNER JOIN DEPARTMENTS;
INNER JOIN DEPARTMENTS
                     *
ERROR at line 3:
ORA-00905: missing keyword 


SQL> SELECT FITST_NAME,DEPARTMENT_NAME
  2    2  FROM EMPLOYEES
  3    3  INNER JOIN DEPARTMENTS USING(DEPARTMENT_ID);
  2  FROM EMPLOYEES
  *
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT FIRST_NAME,DEPARTMENT_NAME
  2  FROM EMPLOYEES
  3  INNER JOIN DEPARTMENTS USING(DEPARTMENT_ID);

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Steven          Executive                                                                                                                                                                               
Neena           Executive                                                                                                                                                                               
Lex             Executive                                                                                                                                                                               
Alexander       IT                                                                                                                                                                                      
Bruce           IT                                                                                                                                                                                      
Diana           IT                                                                                                                                                                                      
Kevin           Shiping                                                                                                                                                                                 
Trenna          Shiping                                                                                                                                                                                 
Curtis          Shiping                                                                                                                                                                                 
Randall         Shiping                                                                                                                                                                                 
Peter           Shiping                                                                                                                                                                                 
Eleni           Sales                                                                                                                                                                                   
Ellen           Sales                                                                                                                                                                                   
Jonathon        Sales                                                                                                                                                                                   
Jennifer        Administration                                                                                                                                                                          
Michael         Marketing                                                                                                                                                                               
Pat             Marketing                                                                                                                                                                               
Shelley         Accounting                                                                                                                                                                              
William         Accounting                                                                                                                                                                              

19 rows selected.

SQL> 
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
  3  INNER JOIN LOCATIONS USING(LOCATION_ID);

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
  3  NATURAL JOIN LOCATIONS ;

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

SQL> 
SQL> 
SQL> 
SQL> REM COMMON COLUMNS CAN BE QUALIFIED IN TWO WAYS :1 TABLENAME.COLUMNNMAE 2 TABLEALIAS.COLUMNNAME
SQL> 
SQL> REM USING TABLENAME.COLUMNNAME STYLE OF QULIFYING THE COMMON COLUMN
SQL> 
SQL> SELECT DEPARTMENT_NAME,CITY
  2  FROM DEPARTMENTS
  3  INNER JOIN LOCATIONS ON DEPARTMENTS.LOCATION_ID=LOCATIONS.LOCATION_ID'
  4  ;;
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> SELECT DEPARTMENT_NAME,CITY
  2  FROM DEPARTMENTS
  3  INNER JOIN LOCATIONS ON DEPARTMENTS.LOCATION_ID=LOCATIONS.LOCATION_ID;

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
  2  FROM DEPARTMENTS D
  3  INNER JOIN LOCATIONS L ON D.LOCATION_ID=L.LOCATION_ID;

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

SQL> 
SQL> 
SQL> REM INNER JOIN ON 3 TABLES
SQL> 
SQL> REM DEPARTMENT_NAME ,CITY ,COUNTRY_NAME ,REGIONS_NAME
SQL> 
SQL> SELECT DEPARTMENT_NAME,CITY,COUNTRY
  2  ;

*
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT DEPARTMENT_NAME,CITY,COUNTRY_NAME,REGION_NAME
  2  FROM EMPLOYEES
  3  INNER JOIN LOCATIONS
  4  INNER JOIN COUNTRIES
  5  INN
  6  
SQL> SELECT DEPARTMENT_NAME,CITY,COUNTRY_NAME,REGION_NAME
  2  FROM EMPLOYEES
  3  NATURAL JOIN LOCATIONS
  4  NATURAL JOIN COUNTRIES
  5  NATURAL JOIN REGIONS;
SELECT DEPARTMENT_NAME,CITY,COUNTRY_NAME,REGION_NAME
       *
ERROR at line 1:
ORA-00904: "DEPARTMENT_NAME": invalid identifier 


SQL> SELECT DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME
  2  FROM DEPARTMENTS
  3  NATURAL JOIN LOCATIONS
  4  NATURAL JOIN COUNTRIES
  5  NATURAL JOIN REGIONS;

DEPARTMENT_NAME                CITY                           COUNTRY_NAME                             REGION_NAME                                                                                      
------------------------------ ------------------------------ ---------------------------------------- -------------------------                                                                        
Administration                 Seattle                        United States of America                 Americas                                                                                         
Marketing                      Toronto                        Canada                                   Americas                                                                                         
Shiping                        South San Francisco            United States of America                 Americas                                                                                         
IT                             Southlake                      United States of America                 Americas                                                                                         
Sales                          Oxford                         United Kingdom                           Europe                                                                                           
Executive                      Seattle                        United States of America                 Americas                                                                                         
Accounting                     Seattle                        United States of America                 Americas                                                                                         
Contracting                    Seattle                        United States of America                 Americas                                                                                         

8 rows selected.

SQL>  SELECT DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME
  2   FROM DEPARTMENTS
  3   JOIN LOCATIONS    USING (LOCATION_ID)
  4   JOIN COUNTRIES    USING (COUNTRY_ID)
  5   JOIN REGIONS      USING (REGION_ID);

DEPARTMENT_NAME                CITY                           COUNTRY_NAME                             REGION_NAME                                                                                      
------------------------------ ------------------------------ ---------------------------------------- -------------------------                                                                        
Administration                 Seattle                        United States of America                 Americas                                                                                         
Marketing                      Toronto                        Canada                                   Americas                                                                                         
Shiping                        South San Francisco            United States of America                 Americas                                                                                         
IT                             Southlake                      United States of America                 Americas                                                                                         
Sales                          Oxford                         United Kingdom                           Europe                                                                                           
Executive                      Seattle                        United States of America                 Americas                                                                                         
Accounting                     Seattle                        United States of America                 Americas                                                                                         
Contracting                    Seattle                        United States of America                 Americas                                                                                         

8 rows selected.

SQL> SELECT DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME
  2  FROM DEPARTMENTS D
  3  JOIN LOCATIONS   L ON D.LOCATION_ID = L.LOCATION_ID
  4  JOIN COUNTRIES   C ON L.COUNTRY_ID  = C.COUNTRY_ID
  5  JOIN REGIONS     R ON C.REGION_ID   = R.REGION_ID;

DEPARTMENT_NAME                CITY                           COUNTRY_NAME                             REGION_NAME                                                                                      
------------------------------ ------------------------------ ---------------------------------------- -------------------------                                                                        
Administration                 Seattle                        United States of America                 Americas                                                                                         
Marketing                      Toronto                        Canada                                   Americas                                                                                         
Shiping                        South San Francisco            United States of America                 Americas                                                                                         
IT                             Southlake                      United States of America                 Americas                                                                                         
Sales                          Oxford                         United Kingdom                           Europe                                                                                           
Executive                      Seattle                        United States of America                 Americas                                                                                         
Accounting                     Seattle                        United States of America                 Americas                                                                                         
Contracting                    Seattle                        United States of America                 Americas                                                                                         

8 rows selected.

SQL> 
SQL> 
SQL> 
SQL> REM 2 WHEN BOTH TABLES DO NOT HAVE ANY COMMON COLUMN ,BUT HAS SIMILAR DATA STORED.
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
SQL> ALTER TABLE LOCATIONS RENAME COLUMN LOCATION_ID TO L_ID;

Table altered.

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

      L_ID STREET_ADRESS                            POSTAL_CODE  CITY                           STATE_PROVINCE            CO                                                                            
---------- ---------------------------------------- ------------ ------------------------------ ------------------------- --                                                                            
      1400 2014 Jabberwocky Rd                      26192        Southlake                      Texas                     US                                                                            
      1500 2011 Interiors Blvd                      99236        South San Francisco            California                US                                                                            
      1700 2004 Charade Rd                          98199        Seattle                        Washington                US                                                                            
      1800 460 Bloor St. W.                         ON M5S 1X8   Toronto                        Ontario                   CA                                                                            
      2500 Magdalen Centre, The Oxford Science Park OX9 9ZB      Oxford                         Oxford                    UK                                                                            

SQL> 
SQL> REM 2 WHEN BOTH TABLES DO NOT HAVE ANY COMMON COLUMN ,BUT HAS SIMILAR DATA STORED.
SQL> 
SQL> SELECT DEPARTMENT_NAME,CITY
  2  FROM DEPARTMENTS
  3  JOIN LOCATIONS ON L_ID=LOCATION_ID;

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

SQL> 
SQL> SELECT *FROM COUNTRIES;

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

SQL> ALTER TABLE COUNTRIES RENAME COLUMN REGION_ID TO RID
  2  ;

Table altered.

SQL> SELECT * FROM COUNTRIES;

CO COUNTRY_NAME                                    RID                                                                                                                                                  
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
SQL> REM COUNTRY_NAME,REGION_NAME
SQL> 
SQL> SELECT COUNTRY_NAME ,REGION_NAME
  2  FROM COUNTRIES
  3  INNER JOIN REGIONS ON RID=REGION_ID;

COUNTRY_NAME                             REGION_NAME                                                                                                                                                    
---------------------------------------- -------------------------                                                                                                                                      
United Kingdom                           Europe                                                                                                                                                         
Germany                                  Europe                                                                                                                                                         
United States of America                 Americas                                                                                                                                                       
Canada                                   Americas                                                                                                                                                       

SQL> 
SQL> REM NOW WE SEE THE IN ONE UERY WE USE MULTPLE DIFF-DIFF JOIN
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

      L_ID STREET_ADRESS                            POSTAL_CODE  CITY                           STATE_PROVINCE            CO                                                                            
---------- ---------------------------------------- ------------ ------------------------------ ------------------------- --                                                                            
      1400 2014 Jabberwocky Rd                      26192        Southlake                      Texas                     US                                                                            
      1500 2011 Interiors Blvd                      99236        South San Francisco            California                US                                                                            
      1700 2004 Charade Rd                          98199        Seattle                        Washington                US                                                                            
      1800 460 Bloor St. W.                         ON M5S 1X8   Toronto                        Ontario                   CA                                                                            
      2500 Magdalen Centre, The Oxford Science Park OX9 9ZB      Oxford                         Oxford                    UK                                                                            

SQL> SELECT * FROM COUNTRIES;

CO COUNTRY_NAME                                    RID                                                                                                                                                  
-- ---------------------------------------- ----------                                                                                                                                                  
CA Canada                                            2                                                                                                                                                  
DE Germany                                           1                                                                                                                                                  
UK United Kingdom                                    1                                                                                                                                                  
US United States of America                          2                                                                                                                                                  

SQL> REM A DEPARTMENT_NAME,CITY :1 NATURAL JOIN 2 INNER USING 3 INNER ON
SQL> 
SQL> REM B CITY,COUNTRY_NAME  : 1NATURAL 2 INNER USING 3 INNER ON
SQL> 
SQL> REM A NO YES YES
SQL> 
SQL> REM B YES YES YES
SQL> 
SQL> ALTER TABLE COUNTRIES RENAME  COLUMN RID TO REGION_ID;

Table altered.

SQL> SELECT * FROM EMPLOYEES NATURAL JOIN DEPARTMENTS;

MANAGER_ID DEPARTMENT_ID EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT DEPARTMENT_NAME                LOCATION_ID          
---------- ------------- ----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ------------------------------ -----------          
       100            90         101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                Executive                             1700          
       100            90         102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                Executive                             1700          
       103            60         104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                IT                                    1400          
       103            60         107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                IT                                    1400          
       124            50         141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                Shiping                               1500          
       124            50         142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                Shiping                               1500          
       124            50         143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                Shiping                               1500          
       124            50         144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                Shiping                               1500          
       149            80         174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3 Sales                                 2500          
       149            80         176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3 Sales                                 2500          
       201            20         202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                Marketing                             1800          
       205           110         206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                Accounting                            1700          

12 rows selected.

SQL> SELECT * FROM EMPLOYEES NATURAL JOIN DEPARTMENTS;

MANAGER_ID DEPARTMENT_ID EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT DEPARTMENT_NAME                LOCATION_ID          
---------- ------------- ----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ------------------------------ -----------          
       100            90         101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                Executive                             1700          
       100            90         102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                Executive                             1700          
       103            60         104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                IT                                    1400          
       103            60         107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                IT                                    1400          
       124            50         141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                Shiping                               1500          
       124            50         142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                Shiping                               1500          
       124            50         143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                Shiping                               1500          
       124            50         144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                Shiping                               1500          
       149            80         174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3 Sales                                 2500          
       149            80         176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3 Sales                                 2500          
       201            20         202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                Marketing                             1800          
       205           110         206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                Accounting                            1700          

12 rows selected.

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> SET LINES 300;
SQL> 
SQL> SELECT * FROM EMPLOYEES NATURAL JOIN DEPARTMENTS;

MANAGER_ID DEPARTMENT_ID EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT DEPARTMENT_NAME                LOCATION_ID                                                                                                              
---------- ------------- ----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ------------------------------ -----------                                                                                                              
       100            90         101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                Executive                             1700                                                                                                              
       100            90         102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                Executive                             1700                                                                                                              
       103            60         104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                IT                                    1400                                                                                                              
       103            60         107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                IT                                    1400                                                                                                              
       124            50         141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                Shiping                               1500                                                                                                              
       124            50         142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                Shiping                               1500                                                                                                              
       124            50         143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                Shiping                               1500                                                                                                              
       124            50         144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                Shiping                               1500                                                                                                              
       149            80         174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3 Sales                                 2500                                                                                                              
       149            80         176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3 Sales                                 2500                                                                                                              
       201            20         202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                Marketing                             1800                                                                                                              
       205           110         206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                Accounting                            1700                                                                                                              

12 rows selected.

SQL> 
SQL> 
SQL> REM NATURAL JOIN  REMOVES DUPLICATION OF ALL COMMON COLUMNS ,SO WE CAN'T QUALIFY ANY COLUMN
SQL> 
SQL> SELECT * FROM EMPLOYEES
  2  JOIN DEPARTMENS USING(DEPARTMENT_ID);
JOIN DEPARTMENS USING(DEPARTMENT_ID)
     *
ERROR at line 2:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM EMPLOYEES
  2  JOIN DEPARTMENTS USING(DEPARTMENT_ID);

DEPARTMENT_ID EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID                                                                                                   
------------- ----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- ------------------------------ ---------- -----------                                                                                                   
           90         100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                           Executive                             100        1700                                                                                                   
           90         101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100 Executive                             100        1700                                                                                                   
           90         102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100 Executive                             100        1700                                                                                                   
           60         103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102 IT                                    103        1400                                                                                                   
           60         104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103 IT                                    103        1400                                                                                                   
           60         107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103 IT                                    103        1400                                                                                                   
           50         124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100 Shiping                               124        1500                                                                                                   
           50         141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124 Shiping                               124        1500                                                                                                   
           50         142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124 Shiping                               124        1500                                                                                                   
           50         143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124 Shiping                               124        1500                                                                                                   
           50         144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124 Shiping                               124        1500                                                                                                   
           80         149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100 Sales                                 149        2500                                                                                                   
           80         174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149 Sales                                 149        2500                                                                                                   
           80         176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149 Sales                                 149        2500                                                                                                   
           10         200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101 Administration                        200        1700                                                                                                   
           20         201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100 Marketing                             201        1800                                                                                                   
           20         202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201 Marketing                             201        1800                                                                                                   
          110         205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101 Accounting                            205        1700                                                                                                   
          110         206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205 Accounting                            205        1700                                                                                                   

19 rows selected.

SQL> REM IN INNER JOIN WITH USING ,DUPLICATION OF USING COLUMNS ARE REMOVED,SO WE CAN'T QUALIFY THEM,BUT DUPLICATION OF OTHER COMMON COLUMNS ARE KEPT,SO WE MUST QUALIFY THEM.
SQL> REM IN OUR EXAMPLE WE CAN'T QUALIFY DEPARTMENT_ID,BUT WE MUST HAVE TO QUALIFY MANAGER_ID
SQL> 
SQL> 
SQL> 
SQL> REM WHILE USING 'ON' WITH INNER JOIN ,WE MUST HAVE TO QUALIFY ALL COMMON COLUMNS.
SQL> 
SQL> REM FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,MANAER_ID(DEPARTMENTS TABLE)
SQL> 
SQL> REM 1 NATURAL JOIN 2 INNER USING 3 INNER ON
SQL> 
SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,MANAGER_ID
  2  FROM EMPLOYEES
  3  NATURAL JOIN DEPARTMENTS;

FIRST_NAME      DEPARTMENT_NAME                DEPARTMENT_ID MANAGER_ID                                                                                                                                                                                                                                     
--------------- ------------------------------ ------------- ----------                                                                                                                                                                                                                                     
Neena           Executive                                 90        100                                                                                                                                                                                                                                     
Lex             Executive                                 90        100                                                                                                                                                                                                                                     
Bruce           IT                                        60        103                                                                                                                                                                                                                                     
Diana           IT                                        60        103                                                                                                                                                                                                                                     
Trenna          Shiping                                   50        124                                                                                                                                                                                                                                     
Curtis          Shiping                                   50        124                                                                                                                                                                                                                                     
Randall         Shiping                                   50        124                                                                                                                                                                                                                                     
Peter           Shiping                                   50        124                                                                                                                                                                                                                                     
Ellen           Sales                                     80        149                                                                                                                                                                                                                                     
Jonathon        Sales                                     80        149                                                                                                                                                                                                                                     
Pat             Marketing                                 20        201                                                                                                                                                                                                                                     
William         Accounting                               110        205                                                                                                                                                                                                                                     

12 rows selected.

SQL> 
SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,MANAGER_ID
  2  FROM EMPLOYEES
  3  NATURAL JOIN DEPARTMENTS;

FIRST_NAME      DEPARTMENT_NAME                DEPARTMENT_ID MANAGER_ID                                                                                                                                                                                                                                     
--------------- ------------------------------ ------------- ----------                                                                                                                                                                                                                                     
Neena           Executive                                 90        100                                                                                                                                                                                                                                     
Lex             Executive                                 90        100                                                                                                                                                                                                                                     
Bruce           IT                                        60        103                                                                                                                                                                                                                                     
Diana           IT                                        60        103                                                                                                                                                                                                                                     
Trenna          Shiping                                   50        124                                                                                                                                                                                                                                     
Curtis          Shiping                                   50        124                                                                                                                                                                                                                                     
Randall         Shiping                                   50        124                                                                                                                                                                                                                                     
Peter           Shiping                                   50        124                                                                                                                                                                                                                                     
Ellen           Sales                                     80        149                                                                                                                                                                                                                                     
Jonathon        Sales                                     80        149                                                                                                                                                                                                                                     
Pat             Marketing                                 20        201                                                                                                                                                                                                                                     
William         Accounting                               110        205                                                                                                                                                                                                                                     

12 rows selected.

SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,D.MANAGER_ID
  2  FROM EMPLOYEES
  3  NATURAL JOIN DEPARTMENTS D;
SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,D.MANAGER_ID
                                                 *
ERROR at line 1:
ORA-25155: column used in NATURAL join cannot have qualifier 


SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,MANAGER_ID
  2  FROM EMPLOYEES
  3  INNER JOIN DEPARTMENTS USING(DEPARTMENT_ID) ;
SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,MANAGER_ID
                                                 *
ERROR at line 1:
ORA-00918: column ambiguously defined 


SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,MANAGER_ID
  2  FROM EMPLOYEES
  3  INNER JOIN DEPARTMENTS USING (DEPARTMENT_ID) ;
SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,MANAGER_ID
                                                 *
ERROR at line 1:
ORA-00918: column ambiguously defined 


SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,MANAGER_ID
  2  FROM EMPLOYEES E
  3  INNER JOIN DEPARTMENTS D USING (DEPARTMENT_ID) ;
SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,MANAGER_ID
                                                 *
ERROR at line 1:
ORA-00918: column ambiguously defined 


SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,DEPARTMENT_ID,D.MANAGER_ID
  2  FROM EMPLOYEES E
  3  INNER JOIN DEPARTMENTS D USING (DEPARTMENT_ID) ;

FIRST_NAME      DEPARTMENT_NAME                DEPARTMENT_ID MANAGER_ID                                                                                                                                                                                                                                     
--------------- ------------------------------ ------------- ----------                                                                                                                                                                                                                                     
Steven          Executive                                 90        100                                                                                                                                                                                                                                     
Neena           Executive                                 90        100                                                                                                                                                                                                                                     
Lex             Executive                                 90        100                                                                                                                                                                                                                                     
Alexander       IT                                        60        103                                                                                                                                                                                                                                     
Bruce           IT                                        60        103                                                                                                                                                                                                                                     
Diana           IT                                        60        103                                                                                                                                                                                                                                     
Kevin           Shiping                                   50        124                                                                                                                                                                                                                                     
Trenna          Shiping                                   50        124                                                                                                                                                                                                                                     
Curtis          Shiping                                   50        124                                                                                                                                                                                                                                     
Randall         Shiping                                   50        124                                                                                                                                                                                                                                     
Peter           Shiping                                   50        124                                                                                                                                                                                                                                     
Eleni           Sales                                     80        149                                                                                                                                                                                                                                     
Ellen           Sales                                     80        149                                                                                                                                                                                                                                     
Jonathon        Sales                                     80        149                                                                                                                                                                                                                                     
Jennifer        Administration                            10        200                                                                                                                                                                                                                                     
Michael         Marketing                                 20        201                                                                                                                                                                                                                                     
Pat             Marketing                                 20        201                                                                                                                                                                                                                                     
Shelley         Accounting                               110        205                                                                                                                                                                                                                                     
William         Accounting                               110        205                                                                                                                                                                                                                                     

19 rows selected.

SQL> 
SQL> 
SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,D.DEPARTMENT_ID ,D.MANAGER_ID
  2  FROM EMPLOYEES E
  3  INNER JOIN DEPARTMENTS ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;
INNER JOIN DEPARTMENTS ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
                                          *
ERROR at line 3:
ORA-00904: "D"."DEPARTMENT_ID": invalid identifier 


SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,D.DEPARTMENT_ID ,D.MANAGER_ID
  2  FROM EMPLOYEES E
  3  INNER JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

FIRST_NAME      DEPARTMENT_NAME                DEPARTMENT_ID MANAGER_ID                                                                                                                                                                                                                                     
--------------- ------------------------------ ------------- ----------                                                                                                                                                                                                                                     
Steven          Executive                                 90        100                                                                                                                                                                                                                                     
Neena           Executive                                 90        100                                                                                                                                                                                                                                     
Lex             Executive                                 90        100                                                                                                                                                                                                                                     
Alexander       IT                                        60        103                                                                                                                                                                                                                                     
Bruce           IT                                        60        103                                                                                                                                                                                                                                     
Diana           IT                                        60        103                                                                                                                                                                                                                                     
Kevin           Shiping                                   50        124                                                                                                                                                                                                                                     
Trenna          Shiping                                   50        124                                                                                                                                                                                                                                     
Curtis          Shiping                                   50        124                                                                                                                                                                                                                                     
Randall         Shiping                                   50        124                                                                                                                                                                                                                                     
Peter           Shiping                                   50        124                                                                                                                                                                                                                                     
Eleni           Sales                                     80        149                                                                                                                                                                                                                                     
Ellen           Sales                                     80        149                                                                                                                                                                                                                                     
Jonathon        Sales                                     80        149                                                                                                                                                                                                                                     
Jennifer        Administration                            10        200                                                                                                                                                                                                                                     
Michael         Marketing                                 20        201                                                                                                                                                                                                                                     
Pat             Marketing                                 20        201                                                                                                                                                                                                                                     
Shelley         Accounting                               110        205                                                                                                                                                                                                                                     
William         Accounting                               110        205                                                                                                                                                                                                                                     

19 rows selected.

SQL> 
SQL> SPOOL OFF;
