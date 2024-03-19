SQL> 
SQL> REM USING : 6 TABLES JOIN
SQL> 
SQL> REM E D L C R + JOBS
SQL> 
SQL> SELECT * FROM JOBS;

JOB_ID     JOB_TITLE                           MIN_SALARY MAX_SALARY                                                                                                                                    
---------- ----------------------------------- ---------- ----------                                                                                                                                    
AD_PRES    President                                20000      40000                                                                                                                                    
AD_VP      Administration Vice President            15000      30000                                                                                                                                    
AD_ASST    Administration Assistant                  3000       6000                                                                                                                                    
AC_MGR     Accounting Manager                        8200      16000                                                                                                                                    
AC_ACCOUNT Public Accountant                         4200       9000                                                                                                                                    
SA_MAN     Sales Manager                            10000      20000                                                                                                                                    
SA_REP     Sales Representative                      6000      12000                                                                                                                                    
ST_MAN     Stock Manager                             5500       8500                                                                                                                                    
ST_CLERK   Stock Clerk                               2000       5000                                                                                                                                    
IT_PROG    Programmer                                4000      10000                                                                                                                                    
MK_MAN     Marketing Manager                         9000      15000                                                                                                                                    
MK_REP     Marketing Representative                  4000       9000                                                                                                                                    

12 rows selected.

SQL> 
SQL> REM FIRST_NAME,DEPARTMENT_NAME
SQL> 
SQL> REM EMPLOYEES  DEPARTMENTS
SQL> 
SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME
  2  FROM EMPLOYEES
  3  JOIN DEPARTMENT USING (DEPARTMENT_ID);
JOIN DEPARTMENT USING (DEPARTMENT_ID)
     *
ERROR at line 3:
ORA-00942: table or view does not exist 


SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME
  2  FROM EMPLOYEES
  3  JOIN DEPARTMENTS USING (DEPARTMENT_ID);

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
SQL> REM FIRST_NAME ,DEPARTMENT_NAME,CITY
SQL> REM EMPLOYEES    DEPARTMENTS   LOCATIONS
SQL> 
SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,CITY
  2  FROM EMPLOYEES
  3  JOIN DEPARTMENT USING (DEPARTMENT_ID)
  4  JOIN LOCATIONS USING (LOCATION_ID);
JOIN DEPARTMENT USING (DEPARTMENT_ID)
     *
ERROR at line 3:
ORA-00942: table or view does not exist 


SQL> FROM EMPLOYEES
SP2-0734: unknown command beginning "FROM EMPLO..." - rest of line ignored.
SQL> 
SQL> 
SQL> SELECT FIRST_NAME ,DEPARTMENT_NAME,CITY
  2  FROM EMPLOYEES
  3  JOIN DEPARTMENTS USING (DEPARTMENT_ID)
  4  JOIN LOCATIONS USING (LOCATION_ID);
JOIN LOCATIONS USING (LOCATION_ID)
                      *
ERROR at line 4:
ORA-00904: "LOCATIONS"."LOCATION_ID": invalid identifier 


SQL> SELECT FIRST_NAME , DEPARTMENT_NAME , CITY
  2  FROM EMPLOYEES
  3  JOIN DEPARTMENTS USING (DEPARTMENT_ID)
  4  JOIN LOCATIONS   USING (LOCATION_ID);
JOIN LOCATIONS   USING (LOCATION_ID)
                        *
ERROR at line 4:
ORA-00904: "LOCATIONS"."LOCATION_ID": invalid identifier 


SQL> SELECT * FROM LOCATIONS;

      L_ID STREET_ADRESS                            POSTAL_CODE  CITY                           STATE_PROVINCE            CO                                                                            
---------- ---------------------------------------- ------------ ------------------------------ ------------------------- --                                                                            
      1400 2014 Jabberwocky Rd                      26192        Southlake                      Texas                     US                                                                            
      1500 2011 Interiors Blvd                      99236        South San Francisco            California                US                                                                            
      1700 2004 Charade Rd                          98199        Seattle                        Washington                US                                                                            
      1800 460 Bloor St. W.                         ON M5S 1X8   Toronto                        Ontario                   CA                                                                            
      2500 Magdalen Centre, The Oxford Science Park OX9 9ZB      Oxford                         Oxford                    UK                                                                            

SQL> ALTER TABLE LOCATIONS RENAME COLUMN L_ID TO LOCATION_ID;

Table altered.

SQL> 
SQL> SELECT FIRST_NAME , DEPARTMENT_NAME , CITY
  2  FROM EMPLOYEES
  3  JOIN DEPARTMENTS USING (DEPARTMENT_ID)
  4  JOIN LOCATIONS   USING (LOCATION_ID);

FIRST_NAME      DEPARTMENT_NAME                CITY                                                                                                                                                     
--------------- ------------------------------ ------------------------------                                                                                                                           
Steven          Executive                      Seattle                                                                                                                                                  
Neena           Executive                      Seattle                                                                                                                                                  
Lex             Executive                      Seattle                                                                                                                                                  
Alexander       IT                             Southlake                                                                                                                                                
Bruce           IT                             Southlake                                                                                                                                                
Diana           IT                             Southlake                                                                                                                                                
Kevin           Shiping                        South San Francisco                                                                                                                                      
Trenna          Shiping                        South San Francisco                                                                                                                                      
Curtis          Shiping                        South San Francisco                                                                                                                                      
Randall         Shiping                        South San Francisco                                                                                                                                      
Peter           Shiping                        South San Francisco                                                                                                                                      
Eleni           Sales                          Oxford                                                                                                                                                   
Ellen           Sales                          Oxford                                                                                                                                                   
Jonathon        Sales                          Oxford                                                                                                                                                   
Jennifer        Administration                 Seattle                                                                                                                                                  
Michael         Marketing                      Toronto                                                                                                                                                  
Pat             Marketing                      Toronto                                                                                                                                                  
Shelley         Accounting                     Seattle                                                                                                                                                  
William         Accounting                     Seattle                                                                                                                                                  

19 rows selected.

SQL> SELECT FIRST_NAME , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME , TOB_TITLE
  2  FROM EMPLOYEES
  3  JOIN DEPARTMENTS USING (DEPARTMENT_ID)
  4  JOIN LOCATIONS   USING (LOCATION_ID)
  5  JOIN COUNTRIES   USING (COUNTRY_ID)
  6  JOIN REGIONS     USING (REGION_ID)
  7  JOIN JOBS        USING (JOB_ID)
  8  ;
SELECT FIRST_NAME , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME , TOB_TITLE
                                                                          *
ERROR at line 1:
ORA-00904: "TOB_TITLE": invalid identifier 


SQL> SELECT FIRST_NAME , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME , JOB_TITLE
  2  FROM EMPLOYEES
  3  JOIN DEPARTMENTS USING (DEPARTMENT_ID)
  4  JOIN LOCATIONS   USING (LOCATION_ID)
  5  JOIN COUNTRIES   USING (COUNTRY_ID)
  6  JOIN REGIONS     USING (REGION_ID)
  7  JOIN JOBS        USING (JOB_ID)
  8  
SQL> 
SQL> SELECT FIRST_NAME , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME , JOB_TITLE
  2  FROM EMPLOYEES
  3  JOIN DEPARTMENTS USING (DEPARTMENT_ID)
  4  JOIN LOCATIONS   USING (LOCATION_ID)
  5  JOIN COUNTRIES   USING (COUNTRY_ID)
  6  JOIN REGIONS     USING (REGION_ID)
  7  JOIN JOBS        USING (JOB_ID)
  8  ;

FIRST_NAME      DEPARTMENT_NAME                CITY                           COUNTRY_NAME                             REGION_NAME               JOB_TITLE                                              
--------------- ------------------------------ ------------------------------ ---------------------------------------- ------------------------- -----------------------------------                    
Steven          Executive                      Seattle                        United States of America                 Americas                  President                                              
Lex             Executive                      Seattle                        United States of America                 Americas                  Administration Vice President                          
Neena           Executive                      Seattle                        United States of America                 Americas                  Administration Vice President                          
Jennifer        Administration                 Seattle                        United States of America                 Americas                  Administration Assistant                               
Shelley         Accounting                     Seattle                        United States of America                 Americas                  Accounting Manager                                     
William         Accounting                     Seattle                        United States of America                 Americas                  Public Accountant                                      
Eleni           Sales                          Oxford                         United Kingdom                           Europe                    Sales Manager                                          
Jonathon        Sales                          Oxford                         United Kingdom                           Europe                    Sales Representative                                   
Ellen           Sales                          Oxford                         United Kingdom                           Europe                    Sales Representative                                   
Kevin           Shiping                        South San Francisco            United States of America                 Americas                  Stock Manager                                          
Peter           Shiping                        South San Francisco            United States of America                 Americas                  Stock Clerk                                            
Randall         Shiping                        South San Francisco            United States of America                 Americas                  Stock Clerk                                            
Curtis          Shiping                        South San Francisco            United States of America                 Americas                  Stock Clerk                                            
Trenna          Shiping                        South San Francisco            United States of America                 Americas                  Stock Clerk                                            
Diana           IT                             Southlake                      United States of America                 Americas                  Programmer                                             
Bruce           IT                             Southlake                      United States of America                 Americas                  Programmer                                             
Alexander       IT                             Southlake                      United States of America                 Americas                  Programmer                                             
Michael         Marketing                      Toronto                        Canada                                   Americas                  Marketing Manager                                      
Pat             Marketing                      Toronto                        Canada                                   Americas                  Marketing Representative                               

19 rows selected.

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
SQL> REM NOW JOIN USING ON
SQL> 
SQL> REM FIRST_NAME ,DEPARTMENT_NAME
SQL> 
SQL> SELECT FIRST_NAME,DEPARTMENT_NAME
  2  FROM EMPLOYEES E
  3  JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=E.DEPARTMENT_ID;

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Steven          Administration                                                                                                                                                                          
Neena           Administration                                                                                                                                                                          
Lex             Administration                                                                                                                                                                          
Alexander       Administration                                                                                                                                                                          
Bruce           Administration                                                                                                                                                                          
Diana           Administration                                                                                                                                                                          
Kevin           Administration                                                                                                                                                                          
Trenna          Administration                                                                                                                                                                          
Curtis          Administration                                                                                                                                                                          
Randall         Administration                                                                                                                                                                          
Peter           Administration                                                                                                                                                                          
Eleni           Administration                                                                                                                                                                          
Ellen           Administration                                                                                                                                                                          
Jonathon        Administration                                                                                                                                                                          
Jennifer        Administration                                                                                                                                                                          
Michael         Administration                                                                                                                                                                          
Pat             Administration                                                                                                                                                                          
Shelley         Administration                                                                                                                                                                          
William         Administration                                                                                                                                                                          
Steven          Marketing                                                                                                                                                                               
Neena           Marketing                                                                                                                                                                               

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Lex             Marketing                                                                                                                                                                               
Alexander       Marketing                                                                                                                                                                               
Bruce           Marketing                                                                                                                                                                               
Diana           Marketing                                                                                                                                                                               
Kevin           Marketing                                                                                                                                                                               
Trenna          Marketing                                                                                                                                                                               
Curtis          Marketing                                                                                                                                                                               
Randall         Marketing                                                                                                                                                                               
Peter           Marketing                                                                                                                                                                               
Eleni           Marketing                                                                                                                                                                               
Ellen           Marketing                                                                                                                                                                               
Jonathon        Marketing                                                                                                                                                                               
Jennifer        Marketing                                                                                                                                                                               
Michael         Marketing                                                                                                                                                                               
Pat             Marketing                                                                                                                                                                               
Shelley         Marketing                                                                                                                                                                               
William         Marketing                                                                                                                                                                               
Steven          Shiping                                                                                                                                                                                 
Neena           Shiping                                                                                                                                                                                 
Lex             Shiping                                                                                                                                                                                 
Alexander       Shiping                                                                                                                                                                                 

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Bruce           Shiping                                                                                                                                                                                 
Diana           Shiping                                                                                                                                                                                 
Kevin           Shiping                                                                                                                                                                                 
Trenna          Shiping                                                                                                                                                                                 
Curtis          Shiping                                                                                                                                                                                 
Randall         Shiping                                                                                                                                                                                 
Peter           Shiping                                                                                                                                                                                 
Eleni           Shiping                                                                                                                                                                                 
Ellen           Shiping                                                                                                                                                                                 
Jonathon        Shiping                                                                                                                                                                                 
Jennifer        Shiping                                                                                                                                                                                 
Michael         Shiping                                                                                                                                                                                 
Pat             Shiping                                                                                                                                                                                 
Shelley         Shiping                                                                                                                                                                                 
William         Shiping                                                                                                                                                                                 
Steven          IT                                                                                                                                                                                      
Neena           IT                                                                                                                                                                                      
Lex             IT                                                                                                                                                                                      
Alexander       IT                                                                                                                                                                                      
Bruce           IT                                                                                                                                                                                      
Diana           IT                                                                                                                                                                                      

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Kevin           IT                                                                                                                                                                                      
Trenna          IT                                                                                                                                                                                      
Curtis          IT                                                                                                                                                                                      
Randall         IT                                                                                                                                                                                      
Peter           IT                                                                                                                                                                                      
Eleni           IT                                                                                                                                                                                      
Ellen           IT                                                                                                                                                                                      
Jonathon        IT                                                                                                                                                                                      
Jennifer        IT                                                                                                                                                                                      
Michael         IT                                                                                                                                                                                      
Pat             IT                                                                                                                                                                                      
Shelley         IT                                                                                                                                                                                      
William         IT                                                                                                                                                                                      
Steven          Sales                                                                                                                                                                                   
Neena           Sales                                                                                                                                                                                   
Lex             Sales                                                                                                                                                                                   
Alexander       Sales                                                                                                                                                                                   
Bruce           Sales                                                                                                                                                                                   
Diana           Sales                                                                                                                                                                                   
Kevin           Sales                                                                                                                                                                                   
Trenna          Sales                                                                                                                                                                                   

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Curtis          Sales                                                                                                                                                                                   
Randall         Sales                                                                                                                                                                                   
Peter           Sales                                                                                                                                                                                   
Eleni           Sales                                                                                                                                                                                   
Ellen           Sales                                                                                                                                                                                   
Jonathon        Sales                                                                                                                                                                                   
Jennifer        Sales                                                                                                                                                                                   
Michael         Sales                                                                                                                                                                                   
Pat             Sales                                                                                                                                                                                   
Shelley         Sales                                                                                                                                                                                   
William         Sales                                                                                                                                                                                   
Steven          Executive                                                                                                                                                                               
Neena           Executive                                                                                                                                                                               
Lex             Executive                                                                                                                                                                               
Alexander       Executive                                                                                                                                                                               
Bruce           Executive                                                                                                                                                                               
Diana           Executive                                                                                                                                                                               
Kevin           Executive                                                                                                                                                                               
Trenna          Executive                                                                                                                                                                               
Curtis          Executive                                                                                                                                                                               
Randall         Executive                                                                                                                                                                               

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Peter           Executive                                                                                                                                                                               
Eleni           Executive                                                                                                                                                                               
Ellen           Executive                                                                                                                                                                               
Jonathon        Executive                                                                                                                                                                               
Jennifer        Executive                                                                                                                                                                               
Michael         Executive                                                                                                                                                                               
Pat             Executive                                                                                                                                                                               
Shelley         Executive                                                                                                                                                                               
William         Executive                                                                                                                                                                               
Steven          Accounting                                                                                                                                                                              
Neena           Accounting                                                                                                                                                                              
Lex             Accounting                                                                                                                                                                              
Alexander       Accounting                                                                                                                                                                              
Bruce           Accounting                                                                                                                                                                              
Diana           Accounting                                                                                                                                                                              
Kevin           Accounting                                                                                                                                                                              
Trenna          Accounting                                                                                                                                                                              
Curtis          Accounting                                                                                                                                                                              
Randall         Accounting                                                                                                                                                                              
Peter           Accounting                                                                                                                                                                              
Eleni           Accounting                                                                                                                                                                              

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Ellen           Accounting                                                                                                                                                                              
Jonathon        Accounting                                                                                                                                                                              
Jennifer        Accounting                                                                                                                                                                              
Michael         Accounting                                                                                                                                                                              
Pat             Accounting                                                                                                                                                                              
Shelley         Accounting                                                                                                                                                                              
William         Accounting                                                                                                                                                                              
Steven          Contracting                                                                                                                                                                             
Neena           Contracting                                                                                                                                                                             
Lex             Contracting                                                                                                                                                                             
Alexander       Contracting                                                                                                                                                                             
Bruce           Contracting                                                                                                                                                                             
Diana           Contracting                                                                                                                                                                             
Kevin           Contracting                                                                                                                                                                             
Trenna          Contracting                                                                                                                                                                             
Curtis          Contracting                                                                                                                                                                             
Randall         Contracting                                                                                                                                                                             
Peter           Contracting                                                                                                                                                                             
Eleni           Contracting                                                                                                                                                                             
Ellen           Contracting                                                                                                                                                                             
Jonathon        Contracting                                                                                                                                                                             

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Jennifer        Contracting                                                                                                                                                                             
Michael         Contracting                                                                                                                                                                             
Pat             Contracting                                                                                                                                                                             
Shelley         Contracting                                                                                                                                                                             
William         Contracting                                                                                                                                                                             

152 rows selected.

SQL> 
SQL> 
SQL> 
SQL> SELECT FIRST_NAME,DEPARTMENT_NAME
  2  FROM EMPLOYEES E
  3  JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;

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

SQL> REM FIRST_NAME , DEPARTMENT_NAME , CITY , COUNTRY_NAME
SQL> SELECT FIRST_NAME , DEPARTMENT_NAME , CITY , COUNTRY_NAME
  2  FROM EMPLOYEES E
  3  JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
  4  JOIN LOCATIONS   L ON D.LOCATION_ID   = L.LOCATION_ID
  5  JOIN COUNTRIES   C ON L.COUNTRY_ID    = C.COUNTRY_ID;

FIRST_NAME      DEPARTMENT_NAME                CITY                           COUNTRY_NAME                                                                                                              
--------------- ------------------------------ ------------------------------ ----------------------------------------                                                                                  
Steven          Executive                      Seattle                        United States of America                                                                                                  
Neena           Executive                      Seattle                        United States of America                                                                                                  
Lex             Executive                      Seattle                        United States of America                                                                                                  
Alexander       IT                             Southlake                      United States of America                                                                                                  
Bruce           IT                             Southlake                      United States of America                                                                                                  
Diana           IT                             Southlake                      United States of America                                                                                                  
Kevin           Shiping                        South San Francisco            United States of America                                                                                                  
Trenna          Shiping                        South San Francisco            United States of America                                                                                                  
Curtis          Shiping                        South San Francisco            United States of America                                                                                                  
Randall         Shiping                        South San Francisco            United States of America                                                                                                  
Peter           Shiping                        South San Francisco            United States of America                                                                                                  
Eleni           Sales                          Oxford                         United Kingdom                                                                                                            
Ellen           Sales                          Oxford                         United Kingdom                                                                                                            
Jonathon        Sales                          Oxford                         United Kingdom                                                                                                            
Jennifer        Administration                 Seattle                        United States of America                                                                                                  
Michael         Marketing                      Toronto                        Canada                                                                                                                    
Pat             Marketing                      Toronto                        Canada                                                                                                                    
Shelley         Accounting                     Seattle                        United States of America                                                                                                  
William         Accounting                     Seattle                        United States of America                                                                                                  

19 rows selected.

SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM SYNTAX 1 OF OUTER JOIN : FROM TABLE1 LEFT/RIGHT/FULL OUTER JOIN TABLE2 USING (COMMON COLUMN LIST)
SQL> 
SQL> REM SYNTAX 2 OF OUTER JOIN : FROM TABLE1 LEFT/RIGHT/FULL OUTER JOIN TABLE2 ON JOIN CONDTION
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

SQL> SELECT FIRST_NAME,DEPARTMENT_NAME
  2  FROM EMPLOYEES
  3  JOIN DEPARTMENTS USING (DEPARTMENT_ID);

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

SQL> SELECT FIRST_NAME,DEPARTMENT_NAME
  2  FROM EMPLOYEES
  3  LEFT OUTER JOIN DEPARTMENTS USING (DEPARTMENT_ID);

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Jennifer        Administration                                                                                                                                                                          
Pat             Marketing                                                                                                                                                                               
Michael         Marketing                                                                                                                                                                               
Peter           Shiping                                                                                                                                                                                 
Randall         Shiping                                                                                                                                                                                 
Curtis          Shiping                                                                                                                                                                                 
Trenna          Shiping                                                                                                                                                                                 
Kevin           Shiping                                                                                                                                                                                 
Diana           IT                                                                                                                                                                                      
Bruce           IT                                                                                                                                                                                      
Alexander       IT                                                                                                                                                                                      
Jonathon        Sales                                                                                                                                                                                   
Ellen           Sales                                                                                                                                                                                   
Eleni           Sales                                                                                                                                                                                   
Lex             Executive                                                                                                                                                                               
Neena           Executive                                                                                                                                                                               
Steven          Executive                                                                                                                                                                               
William         Accounting                                                                                                                                                                              
Shelley         Accounting                                                                                                                                                                              
Kimerely                                                                                                                                                                                                

20 rows selected.

SQL> SELECT FIRST_NAME,DEPARTMENT_NAME
  2  FROM EMPLOYEES
  3  LEFT JOIN DEPARTMENTS USING (DEPARTMENT_ID);

FIRST_NAME      DEPARTMENT_NAME                                                                                                                                                                         
--------------- ------------------------------                                                                                                                                                          
Jennifer        Administration                                                                                                                                                                          
Pat             Marketing                                                                                                                                                                               
Michael         Marketing                                                                                                                                                                               
Peter           Shiping                                                                                                                                                                                 
Randall         Shiping                                                                                                                                                                                 
Curtis          Shiping                                                                                                                                                                                 
Trenna          Shiping                                                                                                                                                                                 
Kevin           Shiping                                                                                                                                                                                 
Diana           IT                                                                                                                                                                                      
Bruce           IT                                                                                                                                                                                      
Alexander       IT                                                                                                                                                                                      
Jonathon        Sales                                                                                                                                                                                   
Ellen           Sales                                                                                                                                                                                   
Eleni           Sales                                                                                                                                                                                   
Lex             Executive                                                                                                                                                                               
Neena           Executive                                                                                                                                                                               
Steven          Executive                                                                                                                                                                               
William         Accounting                                                                                                                                                                              
Shelley         Accounting                                                                                                                                                                              
Kimerely                                                                                                                                                                                                

20 rows selected.

SQL> SELECT FIRST_NAME,DEPARTMENT_NAME
  2  FROM EMPLOYEES
  3  RIGHT OUTER JOIN DEPARTMENTS USING (DEPARTMENT_ID);

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
                Contracting                                                                                                                                                                             

20 rows selected.

SQL> SELECT FIRST_NAME,DEPARTMENT_NAME
  2  FROM EMPLOYEES
  3  RIGHT  JOIN DEPARTMENTS USING (DEPARTMENT_ID);

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
                Contracting                                                                                                                                                                             

20 rows selected.

SQL> SELECT FIRST_NAME,DEPARTMENT_NAME
  2  FROM EMPLOYEES
  3  FULL JOIN DEPARTMENTS USING (DEPARTMENT_ID);

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
Kimerely                                                                                                                                                                                                
Jennifer        Administration                                                                                                                                                                          
Michael         Marketing                                                                                                                                                                               
Pat             Marketing                                                                                                                                                                               
Shelley         Accounting                                                                                                                                                                              
William         Accounting                                                                                                                                                                              
                Contracting                                                                                                                                                                             

21 rows selected.

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

SQL> REM COUNTRY_NAME,REGION_NAME
SQL> 
SQL> SELECT COUNTRY_NAME,REGION_NAME
  2  FROM COUNTRIES
  3  LEFT OUTER JOIN REGIONS USING REGION_ID;
LEFT OUTER JOIN REGIONS USING REGION_ID
                              *
ERROR at line 3:
ORA-00905: missing keyword 


SQL> SELECT COUNTRY_NAME,REGION_NAME
  2  FROM COUNTRIES
  3  LEFT OUTER JOIN REGIONS USING (REGION_ID);

COUNTRY_NAME                             REGION_NAME                                                                                                                                                    
---------------------------------------- -------------------------                                                                                                                                      
United Kingdom                           Europe                                                                                                                                                         
Germany                                  Europe                                                                                                                                                         
United States of America                 Americas                                                                                                                                                       
Canada                                   Americas                                                                                                                                                       

SQL> 
SQL> SELECT COUNTRY_NAME,REGION_NAME
  2  FROM COUNTRIES
  3  RIGHT OUTER JOIN REGIONS USING (REGION_ID);

COUNTRY_NAME                             REGION_NAME                                                                                                                                                    
---------------------------------------- -------------------------                                                                                                                                      
Canada                                   Americas                                                                                                                                                       
Germany                                  Europe                                                                                                                                                         
United Kingdom                           Europe                                                                                                                                                         
United States of America                 Americas                                                                                                                                                       
                                         Middle East and Africa                                                                                                                                         
                                         Asia                                                                                                                                                           

6 rows selected.

SQL> SELECT COUNTRY_NAME,REGION_NAME
  2  FROM COUNTRIES
  3  FULL OUTER JOIN REGIONS USING (REGION_ID);

COUNTRY_NAME                             REGION_NAME                                                                                                                                                    
---------------------------------------- -------------------------                                                                                                                                      
United Kingdom                           Europe                                                                                                                                                         
Germany                                  Europe                                                                                                                                                         
United States of America                 Americas                                                                                                                                                       
Canada                                   Americas                                                                                                                                                       
                                         Asia                                                                                                                                                           
                                         Middle East and Africa                                                                                                                                         

6 rows selected.

SQL> SELECT COUNTRY_NAME,REGION_NAME
  2  FROM COUNTRIES C
  3  LEFT OUTER JOIN REGIONS R ON C.REGION_ID=R.REGION_ID;

COUNTRY_NAME                             REGION_NAME                                                                                                                                                    
---------------------------------------- -------------------------                                                                                                                                      
United Kingdom                           Europe                                                                                                                                                         
Germany                                  Europe                                                                                                                                                         
United States of America                 Americas                                                                                                                                                       
Canada                                   Americas                                                                                                                                                       

SQL> 
SQL> SPOOL OFF;
