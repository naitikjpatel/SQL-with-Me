SQL> 
SQL> 
SQL> REM DISPLAY HIGHEST SALARY
SQL> 
SQL> SELECT MAX(SALARY) FROM EMPLOYEES;

MAX(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      24000                                                                                                                                                                                             

SQL> 
SQL> REM DISPLAY HIGHEST SALARY FOR THOSE WHO WORKS IN DEPARTMENT 80
SQL> 
SQL> SELECT MAX(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID=80;

MAX(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      11000                                                                                                                                                                                             

SQL> 
SQL> REM DISPLAY LOWEST SALARY PAID TO IT_PROG
SQL> 
SQL> SELECT MIN(SALARY) FROM EMPLOYEES WHERE JOB_ID='IT_PROG';

MIN(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
       4200                                                                                                                                                                                             

SQL> 
SQL> REM SYNTACTICAL PRECEDENCE : SELECT .. FROM .. WHERE .. GROUP BY/HAVING ..ORDER BY..OFFSET ..FETCH;
SQL> 
SQL> REM EXECUTION PRECEDENCE : FROM -> WHERE ->GROUP BY->HAVING ->COLUMN ALIAS->ORDER BY ->OFFSET->FETCH->SELECT;
SQL> 
SQL> 
SQL> REM FROM : TO READ ALL ROWS FROM HARD DISK AND PUT IT INTO RAM.MEORY
SQL> 
SQL> REM WHERE :TO FILTER OUT UNWANTED ORIGINAL ROWS
SQL> 
SQL> REM GROUP BY : TO GROUP ROWS BASED ON UNIQUE VALUES OF GROUP BY COLUMN ,TO GENERATE SUMMARY ROW FOR EACH GROUP
SQL> 
SQL> REM HAVING : TO FILTER OUT UNWANTED SUMMARY ROWS
SQL> 
SQL> REM COLUMN ALIAS : IT WILL ATTACH NEW COLUMN HAEDING TO COLUMN
SQL> 
SQL> REM ORDER BY : TO SORT ROWS IN ASCENDING/DESCENDING ORDER ON SINGLE /MULTIPLE COLUMNS KEEPING NULLS FIRST OR LAST
SQL> 
SQL> REM OFFSET : TO FIX FIRST ROW OF RESULT SET
SQL> 
SQL> REM FETCH : TO FIX NO.OF ROWS OF RESULT SET
SQL> 
SQL> REM SELECT : TO DISPLAY ROWS ON SCREEN
SQL> 
SQL> REM DISPLAY COUNT OF THOSE WHO HIRED BEFORE YEAR 1995
SQL> 
SQL> SELECT COUNT(*) FROM EMPLOYEES WHERE HIRE_DATE <'01-JAN-95';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         8                                                                                                                                                                                              

SQL> SELECT COUNT(*) FROM EMPLOYEES WHERE HIRE_DATE <'01-JANUARY-95';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         8                                                                                                                                                                                              

SQL> SELECT COUNT(*) FROM EMPLOYEES WHERE HIRE_DATE <'01-JANUARY/95';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         8                                                                                                                                                                                              

SQL> SELECT COUNT(*) FROM EMPLOYEES WHERE HIRE_DATE <'01JANUARY95';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         8                                                                                                                                                                                              

SQL> SELECT COUNT(*) FROM EMPLOYEES WHERE HIRE_DATE <'1JANUARY95';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         8                                                                                                                                                                                              

SQL> 
SQL> 
SQL> REM DISPLAY LOWEST ,AVERAGE AND HIGHEST SALARY FOR THOSE WHO REPORTS TO MANAGER 100
SQL> 
SQL> SELECT MIN(SALARY),AVG(SALARY),MAX(SALARY) FROM EMPLOYEES WHERE MANAGER_ID=100;

MIN(SALARY) AVG(SALARY) MAX(SALARY)                                                                                                                                                                     
----------- ----------- -----------                                                                                                                                                                     
       5800       12660       17000                                                                                                                                                                     

SQL> SELECT MIN(SALARY),AVG(SALARY),MAX(SALARY) FROM EMPLOYEES WHERE MANAGER_ID='100';

MIN(SALARY) AVG(SALARY) MAX(SALARY)                                                                                                                                                                     
----------- ----------- -----------                                                                                                                                                                     
       5800       12660       17000                                                                                                                                                                     

SQL> 
SQL> 
SQL> REM DISPLAY COUNT OF EMPLOYEES WHOSE FIRST_NAME CONTAINS e ALPHABET
SQL> 
SQL> SELECT COUNT(*) FROM EMPLOYEES WHERE FIRST_NAME LIKE '%e%';

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
        14                                                                                                                                                                                              

SQL> SELECT COUNT(*) FROM EMPLOYEES WHERE INSTR(FIRST_NAME,'e')>0;

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
        14                                                                                                                                                                                              

SQL> 
SQL> 
SQL> REM GROUP BY : TO GROUP ROWS BASED ON GROUP BY COLUMN AND GENERATE SUMMARY FOR EACH GROUP
SQL> 
SQL> SELECT DEPARTMENT_ID,SALARY FROM EMPLOYEES ORDER BY 1,2;

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

SQL> SELECT DEPARTMENT_ID,MIN(SALARY) FROM EMPLOYEES;
SELECT DEPARTMENT_ID,MIN(SALARY) FROM EMPLOYEES
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> SELECT DEPARTMENT_ID FROM EMPLOYEES;

DEPARTMENT_ID                                                                                                                                                                                           
-------------                                                                                                                                                                                           
           90                                                                                                                                                                                           
           90                                                                                                                                                                                           
           90                                                                                                                                                                                           
           60                                                                                                                                                                                           
           60                                                                                                                                                                                           
           60                                                                                                                                                                                           
           50                                                                                                                                                                                           
           50                                                                                                                                                                                           
           50                                                                                                                                                                                           
           50                                                                                                                                                                                           
           50                                                                                                                                                                                           
           80                                                                                                                                                                                           
           80                                                                                                                                                                                           
           80                                                                                                                                                                                           
                                                                                                                                                                                                        
           10                                                                                                                                                                                           
           20                                                                                                                                                                                           
           20                                                                                                                                                                                           
          110                                                                                                                                                                                           
          110                                                                                                                                                                                           

20 rows selected.

SQL> SELECT MIN(SALARY) FROM EMPLOYEES;

MIN(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
       2500                                                                                                                                                                                             

SQL> 
SQL> SELECT DEPARTMENT_ID,MIN(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID ORDER BY 1,2;

DEPARTMENT_ID MIN(SALARY)                                                                                                                                                                               
------------- -----------                                                                                                                                                                               
           10        4400                                                                                                                                                                               
           20        6000                                                                                                                                                                               
           50        2500                                                                                                                                                                               
           60        4200                                                                                                                                                                               
           80        8600                                                                                                                                                                               
           90       17000                                                                                                                                                                               
          110        8300                                                                                                                                                                               
                     7000                                                                                                                                                                               

8 rows selected.

SQL> 
SQL> REM DISPLAY JOB WISE AVERAGE SALARY
SQL> 
SQL> SELECT JOB_ID ,AVG(SALARY) FROM EMPLOYEES GROUP BY JOB_ID ORDER BY 1,2;

JOB_ID     AVG(SALARY)                                                                                                                                                                                  
---------- -----------                                                                                                                                                                                  
AC_ACCOUNT        8300                                                                                                                                                                                  
AC_MGR           12000                                                                                                                                                                                  
AD_ASST           4400                                                                                                                                                                                  
AD_PRES          24000                                                                                                                                                                                  
AD_VP            17000                                                                                                                                                                                  
IT_PROG           6400                                                                                                                                                                                  
MK_MAN           13000                                                                                                                                                                                  
MK_REP            6000                                                                                                                                                                                  
SA_MAN           10500                                                                                                                                                                                  
SA_REP      8866.66667                                                                                                                                                                                  
ST_CLERK          2925                                                                                                                                                                                  
ST_MAN            5800                                                                                                                                                                                  

12 rows selected.

SQL> 
SQL> 
SQL> REM MANAGER WISE COUNT OF EMPLOYEES
SQL> 
SQL> SELECT MANAGER_ID ,COUNT(*) FROM EMPLOYEES;
SELECT MANAGER_ID ,COUNT(*) FROM EMPLOYEES
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> SELECT MANAGER_ID ,COUNT(*) FROM EMPLOYEES GROUP BY MANAGER_ID ORDER BY COUNT(*);

MANAGER_ID   COUNT(*)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
                    1                                                                                                                                                                                   
       102          1                                                                                                                                                                                   
       201          1                                                                                                                                                                                   
       205          1                                                                                                                                                                                   
       103          2                                                                                                                                                                                   
       101          2                                                                                                                                                                                   
       149          3                                                                                                                                                                                   
       124          4                                                                                                                                                                                   
       100          5                                                                                                                                                                                   

9 rows selected.

SQL> 
SQL> REM HIRE YEAR WISE HIGHEST SALARY
SQL> 
SQL> SELECT TO_CHAR(HIRE_DATE,'RRRR') YEAR ,MAX(SALARY) GROUP BY YEAR;
SELECT TO_CHAR(HIRE_DATE,'RRRR') YEAR ,MAX(SALARY) GROUP BY YEAR
                                                   *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT TO_CHAR(HIRE_DATE,'RRRR') YEAR ,MAX(SALARY) FROM EMPLOYEES GROUP BY YEAR;
SELECT TO_CHAR(HIRE_DATE,'RRRR') YEAR ,MAX(SALARY) FROM EMPLOYEES GROUP BY YEAR
                                                                           *
ERROR at line 1:
ORA-00904: "YEAR": invalid identifier 


SQL> SELECT TO_CHAR(HIRE_DATE,'RRRR') YEAR ,MAX(SALARY) FROM EMPLOYEES GROUP BY TO_CHAR(HIRE_DATE,'RRRR');

YEAR MAX(SALARY)                                                                                                                                                                                        
---- -----------                                                                                                                                                                                        
1987       24000                                                                                                                                                                                        
1997        6000                                                                                                                                                                                        
2000       10500                                                                                                                                                                                        
1994       12000                                                                                                                                                                                        
1991        6000                                                                                                                                                                                        
1995        3500                                                                                                                                                                                        
1990        9000                                                                                                                                                                                        
1989       17000                                                                                                                                                                                        
1993       17000                                                                                                                                                                                        
1999        7000                                                                                                                                                                                        
1996       13000                                                                                                                                                                                        
1998        8600                                                                                                                                                                                        

12 rows selected.

SQL> SELECT TO_CHAR(HIRE_DATE,'RRRR') YEAR ,MAX(SALARY),COUNT(*) FROM EMPLOYEES GROUP BY TO_CHAR(HIRE_DATE,'RRRR');

YEAR MAX(SALARY)   COUNT(*)                                                                                                                                                                             
---- ----------- ----------                                                                                                                                                                             
1987       24000          2                                                                                                                                                                             
1997        6000          2                                                                                                                                                                             
2000       10500          1                                                                                                                                                                             
1994       12000          2                                                                                                                                                                             
1991        6000          1                                                                                                                                                                             
1995        3500          1                                                                                                                                                                             
1990        9000          1                                                                                                                                                                             
1989       17000          1                                                                                                                                                                             
1993       17000          1                                                                                                                                                                             
1999        7000          3                                                                                                                                                                             
1996       13000          2                                                                                                                                                                             
1998        8600          3                                                                                                                                                                             

12 rows selected.

SQL> 
SQL> 
SQL> REM HIRE QUARTER WISE ,LOWEST SALARY ,HIGHEST SALARY ,DIFFERENCE
SQL> 
SQL> SELECT TO_CHAR(HIRE_DATE,'Q') ,MIN(SALARY),MAX(SALARY) ,MAX(SALARY)-MIN(SALARY) FROM EMPLOYEES GROUP BY TO_CHAR(HIRE_DATE,'Q');

T MIN(SALARY) MAX(SALARY) MAX(SALARY)-MIN(SALARY)                                                                                                                                                       
- ----------- ----------- -----------------------                                                                                                                                                       
1        2600       17000                   14400                                                                                                                                                       
3        2500       24000                   21500                                                                                                                                                       
2        6000       12000                    6000                                                                                                                                                       
4        3500        5800                    2300                                                                                                                                                       

SQL> 
SQL> 
SQL> REM DEPARTMENT WISE ,JOB WISE ,COUNT OF EMPLOYEES;
SQL> 
SQL> 
SQL> SELECT DEPARTMENT_ID ,JOB_ID ,COUNT(*) NOOFEMP FROM EMPLOYEES GROUP BY DEPARTMENT_ID ,JOB_ID;

DEPARTMENT_ID JOB_ID        NOOFEMP                                                                                                                                                                     
------------- ---------- ----------                                                                                                                                                                     
          110 AC_ACCOUNT          1                                                                                                                                                                     
           90 AD_VP               2                                                                                                                                                                     
           50 ST_CLERK            4                                                                                                                                                                     
           80 SA_REP              2                                                                                                                                                                     
           50 ST_MAN              1                                                                                                                                                                     
           80 SA_MAN              1                                                                                                                                                                     
          110 AC_MGR              1                                                                                                                                                                     
           90 AD_PRES             1                                                                                                                                                                     
           60 IT_PROG             3                                                                                                                                                                     
           20 MK_MAN              1                                                                                                                                                                     
              SA_REP              1                                                                                                                                                                     
           10 AD_ASST             1                                                                                                                                                                     
           20 MK_REP              1                                                                                                                                                                     

13 rows selected.

SQL> SELECT DEPARTMENT_ID ,JOB_ID ,COUNT(*) NOOFEMP FROM EMPLOYEES GROUP BY DEPARTMENT_ID ,JOB_ID ORDER BY 1,2;

DEPARTMENT_ID JOB_ID        NOOFEMP                                                                                                                                                                     
------------- ---------- ----------                                                                                                                                                                     
           10 AD_ASST             1                                                                                                                                                                     
           20 MK_MAN              1                                                                                                                                                                     
           20 MK_REP              1                                                                                                                                                                     
           50 ST_CLERK            4                                                                                                                                                                     
           50 ST_MAN              1                                                                                                                                                                     
           60 IT_PROG             3                                                                                                                                                                     
           80 SA_MAN              1                                                                                                                                                                     
           80 SA_REP              2                                                                                                                                                                     
           90 AD_PRES             1                                                                                                                                                                     
           90 AD_VP               2                                                                                                                                                                     
          110 AC_ACCOUNT          1                                                                                                                                                                     
          110 AC_MGR              1                                                                                                                                                                     
              SA_REP              1                                                                                                                                                                     

13 rows selected.

SQL> SELECT DEPARTMENT_ID ,JOB_ID ,COUNT(*) NOOFEMP FROM EMPLOYEES GROUP BY DEPARTMENT_ID ORDER BY 1,2;
SELECT DEPARTMENT_ID ,JOB_ID ,COUNT(*) NOOFEMP FROM EMPLOYEES GROUP BY DEPARTMENT_ID ORDER BY 1,2
                      *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


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
SQL> 
SQL> SELECT MANAGER_ID ,SUM(SALARY) SUMSAL
  2  FROM EMPLOYEES
  3  WHERE DEPARTMENT_ID NOT IN(90,110,20)
  4  GROUP BY MANAGER_ID
  5  HAVING COUNT(*) >=2
  6  ORDER BY SUMSAL;

MANAGER_ID     SUMSAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
       103      10200                                                                                                                                                                                   
       124      11700                                                                                                                                                                                   
       100      16300                                                                                                                                                                                   
       149      19600                                                                                                                                                                                   

SQL> SELECT MANAGER_ID ,SUM(SALARY) SUMSAL
  2  FROM EMPLOYEES
  3  WHERE DEPARTMENT_ID NOT IN(90,110,20)
  4  GROUP BY MANAGER_ID
  5  HAVING COUNT(*) >=2
  6  ORDER BY 2;

MANAGER_ID     SUMSAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
       103      10200                                                                                                                                                                                   
       124      11700                                                                                                                                                                                   
       100      16300                                                                                                                                                                                   
       149      19600                                                                                                                                                                                   

SQL> 
SQL> 
SQL> 
SQL> SELECT JOB_ID ,AVG(SALARY) FROM EMPLOYEES GROUP BY JOB_ID ORDER BY 2;

JOB_ID     AVG(SALARY)                                                                                                                                                                                  
---------- -----------                                                                                                                                                                                  
ST_CLERK          2925                                                                                                                                                                                  
AD_ASST           4400                                                                                                                                                                                  
ST_MAN            5800                                                                                                                                                                                  
MK_REP            6000                                                                                                                                                                                  
IT_PROG           6400                                                                                                                                                                                  
AC_ACCOUNT        8300                                                                                                                                                                                  
SA_REP      8866.66667                                                                                                                                                                                  
SA_MAN           10500                                                                                                                                                                                  
AC_MGR           12000                                                                                                                                                                                  
MK_MAN           13000                                                                                                                                                                                  
AD_VP            17000                                                                                                                                                                                  
AD_PRES          24000                                                                                                                                                                                  

12 rows selected.

SQL> SELECT JOB_ID ,AVG(SALARY) AVGSAL FROM EMPLOYEES GROUP BY JOB_ID  HAVING AVGSAL > 6000 ORDER BY 2 ;
SELECT JOB_ID ,AVG(SALARY) AVGSAL FROM EMPLOYEES GROUP BY JOB_ID  HAVING AVGSAL > 6000 ORDER BY 2 
                                                                         *
ERROR at line 1:
ORA-00904: "AVGSAL": invalid identifier 


SQL> SELECT JOB_ID ,AVG(SALARY) AVGSAL FROM EMPLOYEES GROUP BY JOB_ID  HAVING AVG(SALARY) > 6000 ORDER BY 2 ;

JOB_ID         AVGSAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
IT_PROG          6400                                                                                                                                                                                   
AC_ACCOUNT       8300                                                                                                                                                                                   
SA_REP     8866.66667                                                                                                                                                                                   
SA_MAN          10500                                                                                                                                                                                   
AC_MGR          12000                                                                                                                                                                                   
MK_MAN          13000                                                                                                                                                                                   
AD_VP           17000                                                                                                                                                                                   
AD_PRES         24000                                                                                                                                                                                   

8 rows selected.

SQL> SPOOL OFF;
