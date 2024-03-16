SQL> 
SQL> 
SQL> REM TODAY TOPIC IS : NESTED SUMMARY FUNCTIONS :
SQL> 
SQL> SELECT AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

AVG(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
       7000                                                                                                                                                                                             
 19333.3333                                                                                                                                                                                             
       9500                                                                                                                                                                                             
      10150                                                                                                                                                                                             
       3500                                                                                                                                                                                             
 10033.3333                                                                                                                                                                                             
       6400                                                                                                                                                                                             
       4400                                                                                                                                                                                             

8 rows selected.

SQL> 
SQL> REM DISPLAY DEPARTMENT WISE HIGHEST AVERAGE SALARY
SQL> 
SQL> SELECT DEPARTMENT_ID,MAX(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
SELECT DEPARTMENT_ID,MAX(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> SELECT MAX(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

MAX(AVG(SALARY))                                                                                                                                                                                        
----------------                                                                                                                                                                                        
      19333.3333                                                                                                                                                                                        

SQL> SELECT MIN(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

MIN(AVG(SALARY))                                                                                                                                                                                        
----------------                                                                                                                                                                                        
            3500                                                                                                                                                                                        

SQL> SELECT AVG(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

AVG(AVG(SALARY))                                                                                                                                                                                        
----------------                                                                                                                                                                                        
      8789.58333                                                                                                                                                                                        

SQL> 
SQL> 
SQL> REM WHEN WE DISPLAY NESTED SUMMARY ITEMS,WE CAN'T DISPLAY ANYTHING ELSE WITH IT. EXCEPTION : COUNT(*) ,COUNT(GROUP BY COLUMN)
SQL> 
SQL> SELECT MAX(AVG(SALARY)) ,MIN(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

MAX(AVG(SALARY)) MIN(AVG(SALARY))                                                                                                                                                                       
---------------- ----------------                                                                                                                                                                       
      19333.3333             3500                                                                                                                                                                       

SQL> 
SQL> SELECT AVG(SALARY) ,MIN(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;
SELECT AVG(SALARY) ,MIN(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID
           *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> REM WHEN WE USE NESTED SUMMARY FUNCTION WITH THE SINGLE SUMMARY FUNCTION IT RAISE THE ERROR: BECAUSE OF THE NESTED SUMMARY FUNCTION RETURNS A SINGLE ROWS AND SINGLE SUMMARY FUNCTION IT RETURNS MULTIPLE/SINGLE ROW THAT'S MAIN REASON TO RAISE THE ERROR
SQL> 
SQL> SELECT COUNT(*),COUNT(DEPARTMENT_ID),COUNT(DISTINCT DEPARTMENT_ID) ,MIN(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

  COUNT(*) COUNT(DEPARTMENT_ID) COUNT(DISTINCTDEPARTMENT_ID) MIN(AVG(SALARY))                                                                                                                           
---------- -------------------- ---------------------------- ----------------                                                                                                                           
         8                    7                            7             3500                                                                                                                           

SQL> 
SQL> REM GROUP BY CLAUSE IS MANADATORY WHEN WE USE NESTED SUMMARY ITEM.
SQL> 
SQL> 
SQL> SELECTMIN(AVG(SALARY)) FROM EMPLOYEES;
SP2-0734: unknown command beginning "SELECTMIN(..." - rest of line ignored.
SQL> SELECT MIN(AVG(SALARY)) FROM EMPLOYEES;
SELECT MIN(AVG(SALARY)) FROM EMPLOYEES
           *
ERROR at line 1:
ORA-00978: nested group function without GROUP BY 


SQL> 
SQL> 
SQL> REM WE CAN NEST SUMMARY FUNCTIONS UPTO TWO LEVELS
SQL> 
SQL> 
SQL> 
SQL> REM PCM : PIVOTE REPORT/CROSS TAB REPORT /MATRIX REPORT
SQL> 
SQL> SELECT DEPARTMENT_ID ,SUM(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID ORDER BY 1;

DEPARTMENT_ID SUM(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
           10        4400                                                                                                                                                                               
           20       19000                                                                                                                                                                               
           50       17500                                                                                                                                                                               
           60       19200                                                                                                                                                                               
           80       30100                                                                                                                                                                               
           90       58000                                                                                                                                                                               
          110       20300                                                                                                                                                                               
                     7000                                                                                                                                                                               

8 rows selected.

SQL> 
SQL> REM DEPT_50_SUM_SAL	DEPT_80_SUM_SAL 	DEPT_90_SUM_SAL
SQL> REM 	17000			30100			58000
SQL> 
SQL> 
SQL> SELECT SUM(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID=50;

SUM(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      17500                                                                                                                                                                                             

SQL> SELECT SUM(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID=80;

SUM(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      30100                                                                                                                                                                                             

SQL> SELECT SUM(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID=90;

SUM(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      58000                                                                                                                                                                                             

SQL> 
SQL> 
SQL> SELECT SUM(DECODE(DEPARTMENT_ID,50,SALARY)) DEPT_50_SUM_SAL,
  2  	    SUM(DECODE(DEPARTMENT_ID,80,SALARY)) DEPT_80_SUM_SAL,
  3  	    SUM(DECODE(DEPARTMENT_ID,90,SALARY)) DEPT_90_SUM_SAL,
  4  FROM EMPLOYEES;
FROM EMPLOYEES
*
ERROR at line 4:
ORA-00936: missing expression 


SQL> SELECT SUM(DECODE(DEPARTMENT_ID,50,SALARY)) DEPT_50_SUM_SAL,
  2  	    SUM(DECODE(DEPARTMENT_ID,80,SALARY)) DEPT_80_SUM_SAL,
  3  	    SUM(DECODE(DEPARTMENT_ID,90,SALARY)) DEPT_90_SUM_SAL
  4  FROM EMPLOYEES;

DEPT_50_SUM_SAL DEPT_80_SUM_SAL DEPT_90_SUM_SAL                                                                                                                                                         
--------------- --------------- ---------------                                                                                                                                                         
          17500           30100           58000                                                                                                                                                         

SQL> 
SQL> REM DISPLAY JOB_ID WISE HIGHEST SALARY
SQL> 
SQL> SELECT JOB_ID,MAX(SALARY) FROM EMPLOYEES GROUP BY JOB_ID ORDER BY 2
  2  ;

JOB_ID     MAX(SALARY)                                                                                                                                                                                  
---------- -----------                                                                                                                                                                                  
ST_CLERK          3500                                                                                                                                                                                  
AD_ASST           4400                                                                                                                                                                                  
ST_MAN            5800                                                                                                                                                                                  
MK_REP            6000                                                                                                                                                                                  
AC_ACCOUNT        8300                                                                                                                                                                                  
IT_PROG           9000                                                                                                                                                                                  
SA_MAN           10500                                                                                                                                                                                  
SA_REP           11000                                                                                                                                                                                  
AC_MGR           12000                                                                                                                                                                                  
MK_MAN           13000                                                                                                                                                                                  
AD_VP            17000                                                                                                                                                                                  
AD_PRES          24000                                                                                                                                                                                  

12 rows selected.

SQL> 
SQL> REM DISPLAY MANAGER_WISE ,COUNT OF EMPLOYEES FOR THE MANAGER TO WHOM 2 OR MORE EMPLOYEES REPORT
SQL> 
SQL> 
SQL> SELECT MANAGER_ID ,COUNT(*) FROM EMPLOYEES GROUP BY MANAGER_ID HAVING COUNT(*)>=2;

MANAGER_ID   COUNT(*)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
       100          5                                                                                                                                                                                   
       149          3                                                                                                                                                                                   
       101          2                                                                                                                                                                                   
       124          4                                                                                                                                                                                   
       103          2                                                                                                                                                                                   

SQL> SELECT MANAGER_ID ,COUNT(*) FROM EMPLOYEES GROUP BY MANAGER_ID HAVING COUNT(*)>=2 ORDER BY 1;

MANAGER_ID   COUNT(*)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
       100          5                                                                                                                                                                                   
       101          2                                                                                                                                                                                   
       103          2                                                                                                                                                                                   
       124          4                                                                                                                                                                                   
       149          3                                                                                                                                                                                   

SQL> SELECT MANAGER_ID ,COUNT(*) FROM EMPLOYEES HAVING COUNT(*)>=2 GROUP BY MANAGER_ID ORDER BY 1;

MANAGER_ID   COUNT(*)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
       100          5                                                                                                                                                                                   
       101          2                                                                                                                                                                                   
       103          2                                                                                                                                                                                   
       124          4                                                                                                                                                                                   
       149          3                                                                                                                                                                                   

SQL> 
SQL> 
SQL> 
SQL> REM NESTED SUMMARY FUNCTIONS EXAMPLE
SQL> 
SQL> REM DISPLAY JOB WISE HIGHEST AVG SAL AND LOWEST AVG SAL
SQL> 
SQL> SELECT MAX(AVG(SALARY)),MIN(AVG(SALARY)) FROM EMPLOYEES GROUP BY JOB_ID;

MAX(AVG(SALARY)) MIN(AVG(SALARY))                                                                                                                                                                       
---------------- ----------------                                                                                                                                                                       
           24000             2925                                                                                                                                                                       

SQL> 
SQL> 
SQL> SPOOL OFF;
