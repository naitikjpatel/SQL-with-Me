SQL> 
SQL> REM TODAY TOPIC IS : WE COVERD MORE ABOUT THE GROUP BY AND SUMMARY FUNCTION
SQL> 
SQL> 
SQL> REM LIST OF SUMMARY FUNCTIONS: MIN ,MAX ,SUM ,AVG ,COUNT
SQL> 
SQL> SELECT SUM(SALARY) FROM EMPLOYEES;

SUM(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
     175500                                                                                                                                                                                             

SQL> 
SQL> SELECT SUM(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID = 50;

SUM(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      17500                                                                                                                                                                                             

SQL> SELECT SUM(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID = 60;

SUM(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      19200                                                                                                                                                                                             

SQL> SELECT SUM(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID = 80;

SUM(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      30100                                                                                                                                                                                             

SQL> 
SQL> 
SQL> SELECT DEPARTMENT_ID ,SALARY FROM EMPLOYEES ORDER BY 1,2;

DEPARTMENT_ID     SALARY                                                                                                                                                                                
------------- ----------                                                                                                                                                                                
           10       4400                                                                                                                                                                                
           20       6000                                                                                                                                                                                
           20      13000                                                                                                                                                                                
           50       2500                                                                                                                                                                                
           50       2600                                                                                                                                                                                
           50       3100                                                                                                                                                                                
           50       3500                                                                                                                                                                                
           50       5800                                                                                                                                                                                
           60       4200                                                                                                                                                                                
           60       6000                                                                                                                                                                                
           60       9000                                                                                                                                                                                
           80       8600                                                                                                                                                                                
           80      10500                                                                                                                                                                                
           80      11000                                                                                                                                                                                
           90      17000                                                                                                                                                                                
           90      17000                                                                                                                                                                                
           90      24000                                                                                                                                                                                
          110       8300                                                                                                                                                                                
          110      12000                                                                                                                                                                                
                    7000                                                                                                                                                                                

20 rows selected.

SQL> 
SQL> SELECT DEPARTMENT_ID ,MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID ORDER BY 1,2;

DEPARTMENT_ID MAX(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
           10        4400                                                                                                                                                                               
           20       13000                                                                                                                                                                               
           50        5800                                                                                                                                                                               
           60        9000                                                                                                                                                                               
           80       11000                                                                                                                                                                               
           90       24000                                                                                                                                                                               
          110       12000                                                                                                                                                                               
                     7000                                                                                                                                                                               

8 rows selected.

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

SQL> 
SQL> SELECT JOB_ID ,MAX(SALARY) FROM EMPLOYEES GROUP BY JOB_ID ORDER BY 1,2;

JOB_ID     MAX(SALARY)                                                                                                                                                                                  
---------- -----------                                                                                                                                                                                  
AC_ACCOUNT        8300                                                                                                                                                                                  
AC_MGR           12000                                                                                                                                                                                  
AD_ASST           4400                                                                                                                                                                                  
AD_PRES          24000                                                                                                                                                                                  
AD_VP            17000                                                                                                                                                                                  
IT_PROG           9000                                                                                                                                                                                  
MK_MAN           13000                                                                                                                                                                                  
MK_REP            6000                                                                                                                                                                                  
SA_MAN           10500                                                                                                                                                                                  
SA_REP           11000                                                                                                                                                                                  
ST_CLERK          3500                                                                                                                                                                                  
ST_MAN            5800                                                                                                                                                                                  

12 rows selected.

SQL> 
SQL> REM GROUP WITH DEPARTMENT_ID AND JOB_ID
SQL> 
SQL> SELECT DEPARTMENT_ID ,JOB_ID ,SUM(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID ,JOB_ID;

DEPARTMENT_ID JOB_ID     SUM(SALARY)                                                                                                                                                                    
------------- ---------- -----------                                                                                                                                                                    
          110 AC_ACCOUNT        8300                                                                                                                                                                    
           90 AD_VP            34000                                                                                                                                                                    
           50 ST_CLERK         11700                                                                                                                                                                    
           80 SA_REP           19600                                                                                                                                                                    
           50 ST_MAN            5800                                                                                                                                                                    
           80 SA_MAN           10500                                                                                                                                                                    
          110 AC_MGR           12000                                                                                                                                                                    
           90 AD_PRES          24000                                                                                                                                                                    
           60 IT_PROG          19200                                                                                                                                                                    
           20 MK_MAN           13000                                                                                                                                                                    
              SA_REP            7000                                                                                                                                                                    
           10 AD_ASST           4400                                                                                                                                                                    
           20 MK_REP            6000                                                                                                                                                                    

13 rows selected.

SQL> 
SQL> REM HIRE YEAR WISE COUNT OF THE EMPLOYEES
SQL> 
SQL> SELECT TO_CHAR(HIRE_DATE,'RRRR') ,COUNT(*) COUNT FROM EMPLOYEES GROUP BY TO_CHAR(HIRE_DATE,'RRRR') ORDER BY 2;

TO_C      COUNT                                                                                                                                                                                         
---- ----------                                                                                                                                                                                         
1995          1                                                                                                                                                                                         
1993          1                                                                                                                                                                                         
1989          1                                                                                                                                                                                         
1990          1                                                                                                                                                                                         
1991          1                                                                                                                                                                                         
2000          1                                                                                                                                                                                         
1994          2                                                                                                                                                                                         
1996          2                                                                                                                                                                                         
1997          2                                                                                                                                                                                         
1987          2                                                                                                                                                                                         
1998          3                                                                                                                                                                                         
1999          3                                                                                                                                                                                         

12 rows selected.

SQL> 
SQL> REM DISPLAY DEPARTMENT_ID ,HIGHEST SALARY FRO THE DEPARTMENTS WHICH GETS HIGHEST SALARY HIGHER THAN 11000
SQL> 
SQL> REM WHERE : FILTERS ORIGINAL ROWS
SQL> 
SQL> REM HAVING : FILTER SUMMARY ROWS
SQL> 
SQL> SELECT DEPARTMENT_ID ,MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVINNG MAX(SALARY)>11000 ORDER BY 2;
SELECT DEPARTMENT_ID ,MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVINNG MAX(SALARY)>11000 ORDER BY 2
                                                                        *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT DEPARTMENT_ID ,MAX(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING MAX(SALARY)>11000 ORDER BY 2;

DEPARTMENT_ID MAX(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
          110       12000                                                                                                                                                                               
           20       13000                                                                                                                                                                               
           90       24000                                                                                                                                                                               

SQL> 
SQL> REM WHERE CLAUSE DOESN'T SUPPORT SUMMARY FUNCTIONS
SQL> 
SQL> REM HAVING CLAUSE SUPPORTS SUMMARY FUNCTIONS + THOSE NON-SUMMARY ITEMS WHICH ARE PART OF GROUP BY CLAUSE.
SQL> 
SQL> REM DISPLAY DEPARTMENT_ID AND HIGHEST SALARY FOR DEPARTMENTS : 20 50 60 90
SQL> 
SQL> SELECT DEPARTMENT_ID ,MAX(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID IN (20,50,60,90) GROUP BY DEPARTMENT_ID ORDER BY 2;

DEPARTMENT_ID MAX(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
           50        5800                                                                                                                                                                               
           60        9000                                                                                                                                                                               
           20       13000                                                                                                                                                                               
           90       24000                                                                                                                                                                               

SQL> SELECT DEPARTMENT_ID ,MAX(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID IN (20,50,60,90) GROUP BY DEPARTMENT_ID ORDER BY 1,2;

DEPARTMENT_ID MAX(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
           20       13000                                                                                                                                                                               
           50        5800                                                                                                                                                                               
           60        9000                                                                                                                                                                               
           90       24000                                                                                                                                                                               

SQL> 
SQL> REM DISPLAY DEPARTMENT_ID AND HIGHEST SALARY FOR THOSE DEPARTMENT WHOSE AVERAGE SALARY IS IN THE RANGE OF 8000 TO 12000
SQL> 
SQL> SELECT DEPARTMENT_ID ,MAX(SALARY)
  2  FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING AVG(SALARY) BETWEEN 8000 AND 12000;

DEPARTMENT_ID MAX(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
           20       13000                                                                                                                                                                               
          110       12000                                                                                                                                                                               
           80       11000                                                                                                                                                                               

SQL> 
SQL> SPOOL OFF;
