SQL> 
SQL> REM 3 WHEN WE NEED TO COMPARE NESTED SUMMARY ITEM/FUNCTION IN 'HAVING' CLAUSE.
SQL> 
SQL> REM DISPLAY DEPARTMENT_ID WISE HIGHEST SALARY
SQL> 
SQL> SELECT DEPARTMENT_ID,MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID MAX(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
                     7000                                                                                                                                                                               
           90       24000                                                                                                                                                                               
           20       13000                                                                                                                                                                               
          110       12000                                                                                                                                                                               
           50        5800                                                                                                                                                                               
           80       11000                                                                                                                                                                               
           60        9000                                                                                                                                                                               
           10        4400                                                                                                                                                                               

8 rows selected.

SQL> SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

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

SQL> 
SQL> REM DISPLAY DEPARTMENT_ID AND AVERAGE SALARY FOR THE DEPARTMENT ID WHICH HIGHEST AVERAGE SALARY IS PAID.
SQL> 
SQL> SELECT DEPARTMENT_ID,AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID AVG(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
                     7000                                                                                                                                                                               
           90  19333.3333                                                                                                                                                                               
           20        9500                                                                                                                                                                               
          110       10150                                                                                                                                                                               
           50        3500                                                                                                                                                                               
           80  10033.3333                                                                                                                                                                               
           60        6400                                                                                                                                                                               
           10        4400                                                                                                                                                                               

8 rows selected.

SQL> SELECT DEPARTMENT_ID,AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING AVG(SALARY) = (SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);
SELECT DEPARTMENT_ID,AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING AVG(SALARY) = (SELECT MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID)
                                                                                             *
ERROR at line 1:
ORA-01427: single-row subquery returns more than one row 


SQL> SELECT DEPARTMENT_ID,AVG(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING AVG(SALARY) = (SELECT MAX(AVG(SALARY)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID);

DEPARTMENT_ID AVG(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
           90  19333.3333                                                                                                                                                                               

SQL> 
SQL> REM DISPLAY JOB_ID AND COUNT OF EMPLOYEES FOR WHICH LOWEST NO.OF EMPLOYEE WORK
SQL> 
SQL> SELECT JOB_ID,COUNT(*) FROM EMPLOYEES GROUP BY JOB_ID;

JOB_ID       COUNT(*)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
IT_PROG             3                                                                                                                                                                                   
AC_MGR              1                                                                                                                                                                                   
AC_ACCOUNT          1                                                                                                                                                                                   
ST_MAN              1                                                                                                                                                                                   
AD_ASST             1                                                                                                                                                                                   
AD_VP               2                                                                                                                                                                                   
SA_MAN              1                                                                                                                                                                                   
MK_MAN              1                                                                                                                                                                                   
AD_PRES             1                                                                                                                                                                                   
SA_REP              3                                                                                                                                                                                   
MK_REP              1                                                                                                                                                                                   
ST_CLERK            4                                                                                                                                                                                   

12 rows selected.

SQL> SELECT JOB_ID,COUNT(*) FROM EMPLOYEES GROUP BY JOB_ID HAVING COUNT(*)=(SELECT MIN(COUNT(*)) FROM EMPLOYEES GROUP BY JOB_ID);

JOB_ID       COUNT(*)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
AC_MGR              1                                                                                                                                                                                   
AC_ACCOUNT          1                                                                                                                                                                                   
ST_MAN              1                                                                                                                                                                                   
AD_ASST             1                                                                                                                                                                                   
SA_MAN              1                                                                                                                                                                                   
MK_MAN              1                                                                                                                                                                                   
AD_PRES             1                                                                                                                                                                                   
MK_REP              1                                                                                                                                                                                   

8 rows selected.

SQL> 
SQL> SPOOL OFF;
