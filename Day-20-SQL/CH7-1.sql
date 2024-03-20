SQL> 
SQL> CL SCR

SQL> REM TODAT TOPIC IS SUBQUERY
SQL> 
SQL> REM PARENT/CHILD
SQL> 
SQL> REM OUTER/INNER
SQL> 
SQL> REM MAIN/SUB
SQL> 
SQL> 
SQL> REM SUB QUERY : IS NOTHING BUT SELECT STATEMENT WITHIN ANOTHER STATEMENT
SQL> 
SQL> REM OUTER STATEMENT MAY BE CREATE, INSERT , UPDATE, DELETE ,SELECT ..
SQL> 
SQL> REM INNER STATEMENT IS GENRALLY SELECT ONLY.
SQL> 
SQL> REM SUB QUERY IS NEEDED IN 4 CASES:
SQL> 
SQL> REM 1 WHEN WE WANT TO COMPARE SUMMARY ITEM IN WHERE CLAUSE
SQL> 
SQL> REM 2 WHEN OUR QUESTION HAS HIDDEN QUESTION INSIDE IT
SQL> 
SQL> REM 3 WHEN WE WANT TO COMPARE NESTED SUMMARY ITEM IN HAVING CLAUSE
SQL> 
SQL> REM 4 WHEN WE WANT TO USE RESULT OF SUB QUERY AS TABLE FOR MAIN QUERY
SQL> 
SQL> 
SQL> REM SELECT SYSNTACTICAL PRECEDENCE : SELECT .. FROM..WHERE ..GROUP BY/HAING ..ORDER BY ..OFFSET ..FETCH
SQL> 
SQL> REM SELECT EXECUTION PRECEDNCE : FROM ->WHERE -> GROUP BY->COLUMN ALIAS ->ORDER BY ->OFFSET->FETCH->SELECT
SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM 1 WHEN WE WANT TO COMPARE SUMMARY ITEM IN WHERE CLAUSE
SQL> 
SQL> REM SUMMARY ITEMS/FUNCTIONS: MIN MAX COUNT SUM AVG
SQL> 
SQL> REM NON-SUMMARY ITEMS: ALL OTHER THAN ABOVE 5 ITEMS
SQL> 
SQL> 
SQL> REM DIPLY INFO. ABOUT EMPLOYEE WHO GETS HIGHEST SALARY IN COMPANY
SQL> 
SQL> REM SALARY =MAX(SALARY)
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE SALARY=MAX(SALARY);
SELECT * FROM EMPLOYEES WHERE SALARY=MAX(SALARY)
                                     *
ERROR at line 1:
ORA-00934: group function is not allowed here 


SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE SALARY=(SELECT MAX(SALARY) FROM EMPLOYEES);

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     

SQL> 
SQL> 
SQL> REM DISPLAY LAST_NAME AND HIRE_DATE FOR THE EMPLOYEE WHO WERE HIRED FIRST IN COMPANY
SQL> 
SQL> REM HIRE_dATE=MIN(HIRE_DATE)
SQL> 
SQL> SELECT LAST_NAME ,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE =(SELECT MIN(HIRE_DATE) FROM EMPLOYEES);

LAST_NAME       HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
King            17-JUL-87                                                                                                                                                                               

SQL> 
SQL> 
SQL> REM DISPLAY FIRST_NAME,SALARY FOR THE EMPLOYEE WHO GETS LOWEST SALARY IN COMAPNY
SQL> 
SQL> SELECT FIRST_NAME ,SALARY FROM EMPLOYEES WHERE SALARY=(SELECT MIN(SALARY) FROM EMPLOYEES);

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              

SQL> 
SQL> REM DISPLAY THOSE WHO GETS HIGHER SALARY THEN AVG SALRY PAID BY COMAPNY
SQL> 
SQL> SELECT FIRST_NAME ,SALARY FROM EMPLOYEES WHERE SALARY> (SELECT AVG(SALARY) FROM EMPLOYEES);

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              

8 rows selected.

SQL> 
SQL> REM DISPLAY FIRST_NAME  AND COMMISSION_PCT AMOUNT FOR THE EMPLOYEE WHO GETS HIGHEST COMMISSION AMOUNT
SQL> 
SQL> SELECT FIRST_NAME,SALARY*COMMISSION_PCT FROM EMPLOYEES WHERE
  2  SALARY*COMMISSION_PCT =(SELECT MAX(SALARY*COMMISSION_PCT) FROM EMPLOYEES);

FIRST_NAME      SALARY*COMMISSION_PCT                                                                                                                                                                   
--------------- ---------------------                                                                                                                                                                   
Ellen                            3300                                                                                                                                                                   

SQL> 
SQL> REM DISPLAY THOSE WHO GETS HIGHEST SALARY FRO THERIE DEPARTMENTS
SQL> 
SQL> SELECT FIRST_NAME ,DEPARTMENT_ID ,SALARY FROM EMPLOYEES ORDER BY 1,2,DESC
  2  ;
SELECT FIRST_NAME ,DEPARTMENT_ID ,SALARY FROM EMPLOYEES ORDER BY 1,2,DESC
                                                                     *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT FIRST_NAME ,DEPARTMENT_ID ,SALARY FROM EMPLOYEES ORDER BY 1,2 DESC;

FIRST_NAME      DEPARTMENT_ID     SALARY                                                                                                                                                                
--------------- ------------- ----------                                                                                                                                                                
Alexander                  60       9000                                                                                                                                                                
Bruce                      60       6000                                                                                                                                                                
Curtis                     50       3100                                                                                                                                                                
Diana                      60       4200                                                                                                                                                                
Eleni                      80      10500                                                                                                                                                                
Ellen                      80      11000                                                                                                                                                                
Jennifer                   10       4400                                                                                                                                                                
Jonathon                   80       8600                                                                                                                                                                
Kevin                      50       5800                                                                                                                                                                
Kimerely                            7000                                                                                                                                                                
Lex                        90      17000                                                                                                                                                                
Michael                    20      13000                                                                                                                                                                
Neena                      90      17000                                                                                                                                                                
Pat                        20       6000                                                                                                                                                                
Peter                      50       2500                                                                                                                                                                
Randall                    50       2600                                                                                                                                                                
Shelley                   110      12000                                                                                                                                                                
Steven                     90      24000                                                                                                                                                                
Trenna                     50       3500                                                                                                                                                                
William                   110       8300                                                                                                                                                                

20 rows selected.

SQL> 
SQL> SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID
  2  ;

MAX(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
       7000                                                                                                                                                                                             
      24000                                                                                                                                                                                             
      13000                                                                                                                                                                                             
      12000                                                                                                                                                                                             
       5800                                                                                                                                                                                             
      11000                                                                                                                                                                                             
       9000                                                                                                                                                                                             
       4400                                                                                                                                                                                             

8 rows selected.

SQL> SELECT FIRST_NAME ,DEPARTMENT_ID ,SALARY FROM EMPLOYEES
  2  WHERE SALARY IN (SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);

FIRST_NAME      DEPARTMENT_ID     SALARY                                                                                                                                                                
--------------- ------------- ----------                                                                                                                                                                
Steven                     90      24000                                                                                                                                                                
Alexander                  60       9000                                                                                                                                                                
Kevin                      50       5800                                                                                                                                                                
Ellen                      80      11000                                                                                                                                                                
Kimerely                            7000                                                                                                                                                                
Jennifer                   10       4400                                                                                                                                                                
Michael                    20      13000                                                                                                                                                                
Shelley                   110      12000                                                                                                                                                                

8 rows selected.

SQL> 
SQL> REM DISPLAY THOSE WHO GETS LOWEST SALARY FOR THEIR DEPARTMENT
SQL> 
SQL> SELECT FIRST_NAME ,SALARY FROM EMPLOYEES WHERE SALARY IN (SELECT MIN
  2  
SQL> SELECT FIRST_NAME ,SALARY FROM EMPLOYEES WHERE SALARY IN (SELECT MIN(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
William               8300                                                                                                                                                                              

10 rows selected.

SQL> 
SQL> SELECT DEPARTMENT_ID ,MIN(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID
  2  ;

DEPARTMENT_ID MIN(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
                     7000                                                                                                                                                                               
           90       17000                                                                                                                                                                               
           20        6000                                                                                                                                                                               
          110        8300                                                                                                                                                                               
           50        2500                                                                                                                                                                               
           80        8600                                                                                                                                                                               
           60        4200                                                                                                                                                                               
           10        4400                                                                                                                                                                               

8 rows selected.

SQL> SELECT FIRST_NAME ,SALARY FROM EMPLOYEES WHERE SALARY IN (SELECT MIN(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
William               8300                                                                                                                                                                              

10 rows selected.

SQL> SELECT FIRST_NAME ,SALARY FROM EMPLOYEES WHERE (DEPARTMENT_ID,SALARY) IN (SELECT DEPARTMENET_ID, MIN(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);
SELECT FIRST_NAME ,SALARY FROM EMPLOYEES WHERE (DEPARTMENT_ID,SALARY) IN (SELECT DEPARTMENET_ID, MIN(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID)
                                                                                 *
ERROR at line 1:
ORA-00904: "DEPARTMENET_ID": invalid identifier 


SQL> SELECT FIRST_NAME ,SALARY FROM EMPLOYEES WHERE (DEPARTMENT_ID,SALARY) IN (SELECT DEPARTMENT_ID, MIN(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
William               8300                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              

8 rows selected.

SQL> 
SQL> 
SQL> REM DISPLAY FIRST_NAME ,MANAGER_ID ,SALARY FOR THOSE WHO GETS MANAGER WISE HIGHEST SALARY
SQL> 
SQL> SELECT FIRST_NAME ,MANAGER_ID ,SALARY FROM EMPLOYEES
  2  WHERE (MANAGER_ID,SALARY) IN (SELECT MANAGER_ID,MAX(SALARY) FROM EMPLOYEES GROUP BY MANAGER_ID);

FIRST_NAME      MANAGER_ID     SALARY                                                                                                                                                                   
--------------- ---------- ----------                                                                                                                                                                   
Lex                    100      17000                                                                                                                                                                   
Neena                  100      17000                                                                                                                                                                   
Ellen                  149      11000                                                                                                                                                                   
William                205       8300                                                                                                                                                                   
Alexander              102       9000                                                                                                                                                                   
Pat                    201       6000                                                                                                                                                                   
Shelley                101      12000                                                                                                                                                                   
Trenna                 124       3500                                                                                                                                                                   
Bruce                  103       6000                                                                                                                                                                   

9 rows selected.

SQL> SPOOL OFF;
