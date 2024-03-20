SQL> 
SQL> REM SUB QUERY :IS NOTHING BUT SELECT STATEMENT WITHIN ANOTHER STATEMENT
SQL> 
SQL> 
SQL> REM DISPLAY INFO. ABOUT SA_REP WHO GETS HIGHER SALARY THAN AVERAGE SALARY PAID BY COMPANY
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE JOB_ID ='SA_REP' AND SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     

SQL> 
SQL> REM DISPLAY THOSE WHO WERE HIRED BEFORE Hartstein
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

SQL> SELECT * FROM EMPLOYEES WHERE HIRE_DATE <SELECT  HIRE_DATE FROM EMPLOYEES WHERE LAST_NAME ='Hartstein';
SELECT * FROM EMPLOYEES WHERE HIRE_DATE <SELECT  HIRE_DATE FROM EMPLOYEES WHERE LAST_NAME ='Hartstein'
                                         *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT * FROM EMPLOYEES WHERE HIRE_DATE <(SELECT  HIRE_DATE FROM EMPLOYEES WHERE LAST_NAME ='Hartstein');

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

9 rows selected.

SQL> 
SQL> REM DISPLAY THOSE WHO REPORTS TO Steven
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE MANAGER_ID =(SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE FIRST_NAME ='Steven');

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     

SQL> 
SQL> 
SQL> 
SQL> REM DISPLAY THOSE WHO WORKS IN EXECUTIVE DEPARTMENT
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
SQL> REM E D L C R
SQL> REM E D
SQL> SELECT DEPARTMENT_ID FROM DEPARTMENTS WHERE DEPARTMENT_NAME ='Executive';

DEPARTMENT_ID                                                                                                                                                                                           
-------------                                                                                                                                                                                           
           90                                                                                                                                                                                           

SQL> SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID=(SELECT DEPARTMENT_ID FROM DEPARTMENTS WHERE DEPARTMENT_NAME ='Executive');

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     

SQL> 
SQL> REM DISPLAY DEPARTMENT_NAME WHICH ARE LOCATED IN Toronto
SQL> SELECT * FROM DEPARMTNES;
SELECT * FROM DEPARMTNES
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

SQL> SELECT * FROM DEPARTMENTS WHERE LOCATION_ID=(SELECT LOCATION
  2  ;
SELECT * FROM DEPARTMENTS WHERE LOCATION_ID=(SELECT LOCATION
                                             *
ERROR at line 1:
ORA-00921: unexpected end of SQL command 


SQL> SELECT * FROM DEPARTMENTS WHERE LOCATION_ID=(SELECT LOCATION_ID FROM LOCATIONS WHERE CITY='Toronto');

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID                                                                                                                                     
------------- ------------------------------ ---------- -----------                                                                                                                                     
           20 Marketing                             201        1800                                                                                                                                     

SQL> 
SQL> SPOOL OFF;
