SQL> 
SQL> 
SQL> REM TODAY FIRST TOPIC IS : WHERE CLAUSE
SQL> 
SQL> REM WHERE : IS USED FOR RESTRICTION OR SELECTION
SQL> 
SQL> REM SELECTION/RESTRICTION IS NOTHING BUT DISPLAYING SOME OF THE ROWS OF OUR CHOICE WHICH SATISFIES OUR CONDITIONS
SQL> 
SQL> REM QUESTION 1: -> DISPLAY THOSE WHO GETS SALARY HIGHER THEN 10000
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

SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE SALARY >10000;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     

7 rows selected.

SQL> 
SQL> SELECT FIRST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >10000;

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              

7 rows selected.

SQL> 
SQL> 
SQL> REM PROJECTION: IS DISPLAYING SOME OF THE ROWS
SQL> 
SQL> REM RESTRICTIONl IS DISPLAYING SOME OF THE ROWS
SQL> 
SQL> REM RESTRICTIONl IS DISPLAYING SOME OF THE COLUMNS
SQL> 
SQL> REM RESTRICTION : IS DISPLAYING SOME OF THE COLUMNS
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM ABOVE  4 LINE IGNORE
SQL> 
SQL> REM PROJECTION: IS DISPLAYING SOME OF THE COLUMNS
SQL> 
SQL> REM RESTRICTION : IS DISPLAYING SOME OF THE ROWS
SQL> 
SQL> 
SQL> REM PROJECTION + RESTRICTION  : IS DISPLAYING SOME OF THE COLUMNS AS WELL AS SOME OF THE ROWS
SQL> 
SQL> REM WHERE SYNTAX : WHERE CONDITION(S)
SQL> 
SQL> REM CONDITION SYNTAX : OPERAND1 OPERATOR OPERAND2
SQL> 
SQL> REM CONDITION EXAMPLE : SALARY > 10000
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

SQL> 
SQL> SELECT FIRST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >=11000;

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              

6 rows selected.

SQL> 
SQL> 
SQL> REM REMEMBER TOPIC
SQL> 
SQL> REM DATA TYPES OF OPERAND1 AND OPERAND 2 SHOULD MATCH
SQL> 
SQL> REM TYPS OF COMPARISION OPERATORS : 1 SINGLE ROW 2 MULTI ROW 3 SPECIAL
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE SALARY = 6000;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     

SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE SALARY < 6000;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     
        200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                                     

7 rows selected.

SQL> SELECT * FROM EMPLOYEES WHERE SALARY <= 6000;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     
        200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     

9 rows selected.

SQL> SELECT * FROM EMPLOYEES WHERE SALARY > 6000;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

11 rows selected.

SQL> SELECT * FROM EMPLOYEES WHERE SALARY >= 6000;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

13 rows selected.

SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE SALARY <> 6000;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
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
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

18 rows selected.

SQL> SELECT * FROM EMPLOYEES WHERE SALARY != 6000;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
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
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

18 rows selected.

SQL> SELECT * FROM EMPLOYEES WHERE SALARY ^= 6000;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
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
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

18 rows selected.

SQL> SELECT * FROM EMPLOYEES WHERE SALARY ^= '6000';

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
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
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

18 rows selected.

SQL> SELECT * FROM EMPLOYEES WHERE SALARY ^= '6000.00';

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
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
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

18 rows selected.

SQL> 
SQL> 
SQL> 
SQL> REM IF DATA TYPES OF BOTH OPERAND , DOESN'T MATCH, IT WILL TRY TO CONVERT ONE OF THEM INTO ANOTHER TYPE.
SQL> 
SQL> REM IF IT CAN , WILL PRODUCE RESULT
SQL> 
SQL> REM IF IT CAN'T ,WILL RAISE ERROR
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE SALARY >= '6000.00';

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

13 rows selected.

SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE SALARY >= '$6000.00';
SELECT * FROM EMPLOYEES WHERE SALARY >= '$6000.00'
                                        *
ERROR at line 1:
ORA-01722: invalid number 


SQL> 
SQL> 
SQL> REM CHARCTER COMPARISON
SQL> 
SQL> REM ALL CHARACTER VALUES MUST BE DELIMITED BY SINGLE QUOTE
SQL> 
SQL> REM CHARACTER VALUE COMPARIONS ARE CASE SENSITIVE, THAT MEANS WE NEED TO USE SAME CASE AND SAME SPELLING FOR COMPARISON
SQL> 
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

SQL> 
SQL> 
SQL> REM QUESTION   : DISPLAY ALL WHO WORKS AS IT_PROG
SQL> 
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE JOB_ID=IT_PROG;
SELECT * FROM EMPLOYEES WHERE JOB_ID=IT_PROG
                                     *
ERROR at line 1:
ORA-00904: "IT_PROG": invalid identifier 


SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE JOB_ID="IT_PROG";
SELECT * FROM EMPLOYEES WHERE JOB_ID="IT_PROG"
                                     *
ERROR at line 1:
ORA-00904: "IT_PROG": invalid identifier 


SQL> SELECT * FROM EMPLOYEES WHERE JOB_ID='IT_PROG';

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     

SQL> 
SQL> 
SQL> REM TO COMPARE THE STRING VALUE IN WHERE CLAUSE YOU NEED TO USE A SINGLE QUOTE
SQL> 
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE JOB_ID='it_prog';

no rows selected

SQL> 
SQL> REM THAT MEANS CHARCATER COMPARISON IS CASE SENSITIVE
SQL> 
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE 'IT_PROG'=JOB_ID;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     

SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE 'IT_PROG'=job_id;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     

SQL> 
SQL> 
SQL> REM COLUMN NAME IS CASE INSENSITIVE
SQL> 
SQL> 
SQL> 
SQL> SELECT FIRST_NAME  FROM EMPLOYEES ORDER BY 1;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Alexander                                                                                                                                                                                               
Bruce                                                                                                                                                                                                   
Curtis                                                                                                                                                                                                  
Diana                                                                                                                                                                                                   
Eleni                                                                                                                                                                                                   
Ellen                                                                                                                                                                                                   
Jennifer                                                                                                                                                                                                
Jonathon                                                                                                                                                                                                
Kevin                                                                                                                                                                                                   
Kimerely                                                                                                                                                                                                
Lex                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Neena                                                                                                                                                                                                   
Pat                                                                                                                                                                                                     
Peter                                                                                                                                                                                                   
Randall                                                                                                                                                                                                 
Shelley                                                                                                                                                                                                 
Steven                                                                                                                                                                                                  
Trenna                                                                                                                                                                                                  
William                                                                                                                                                                                                 

20 rows selected.

SQL> 
SQL> 
SQL> SELECT FIRST_NAME  FROM EMPLOYEES WHERE FIRST_NAME >'J' ORDER BY 1;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Jennifer                                                                                                                                                                                                
Jonathon                                                                                                                                                                                                
Kevin                                                                                                                                                                                                   
Kimerely                                                                                                                                                                                                
Lex                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Neena                                                                                                                                                                                                   
Pat                                                                                                                                                                                                     
Peter                                                                                                                                                                                                   
Randall                                                                                                                                                                                                 
Shelley                                                                                                                                                                                                 
Steven                                                                                                                                                                                                  
Trenna                                                                                                                                                                                                  
William                                                                                                                                                                                                 

14 rows selected.

SQL> SELECT FIRST_NAME  FROM EMPLOYEES WHERE FIRST_NAME >'J' ORDER BY 1 DESC;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
William                                                                                                                                                                                                 
Trenna                                                                                                                                                                                                  
Steven                                                                                                                                                                                                  
Shelley                                                                                                                                                                                                 
Randall                                                                                                                                                                                                 
Peter                                                                                                                                                                                                   
Pat                                                                                                                                                                                                     
Neena                                                                                                                                                                                                   
Michael                                                                                                                                                                                                 
Lex                                                                                                                                                                                                     
Kimerely                                                                                                                                                                                                
Kevin                                                                                                                                                                                                   
Jonathon                                                                                                                                                                                                
Jennifer                                                                                                                                                                                                

14 rows selected.

SQL> SELECT FIRST_NAME  FROM EMPLOYEES ORDER BY 1;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Alexander                                                                                                                                                                                               
Bruce                                                                                                                                                                                                   
Curtis                                                                                                                                                                                                  
Diana                                                                                                                                                                                                   
Eleni                                                                                                                                                                                                   
Ellen                                                                                                                                                                                                   
Jennifer                                                                                                                                                                                                
Jonathon                                                                                                                                                                                                
Kevin                                                                                                                                                                                                   
Kimerely                                                                                                                                                                                                
Lex                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Neena                                                                                                                                                                                                   
Pat                                                                                                                                                                                                     
Peter                                                                                                                                                                                                   
Randall                                                                                                                                                                                                 
Shelley                                                                                                                                                                                                 
Steven                                                                                                                                                                                                  
Trenna                                                                                                                                                                                                  
William                                                                                                                                                                                                 

20 rows selected.

SQL> SELECT FIRST_NAME  FROM EMPLOYEES WHERE FIRST_NAME < 'P' ORDER BY 1;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Alexander                                                                                                                                                                                               
Bruce                                                                                                                                                                                                   
Curtis                                                                                                                                                                                                  
Diana                                                                                                                                                                                                   
Eleni                                                                                                                                                                                                   
Ellen                                                                                                                                                                                                   
Jennifer                                                                                                                                                                                                
Jonathon                                                                                                                                                                                                
Kevin                                                                                                                                                                                                   
Kimerely                                                                                                                                                                                                
Lex                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Neena                                                                                                                                                                                                   

13 rows selected.

SQL> 
SQL> 
SQL> REM DATE COMPARISION
SQL> 
SQL> REM DATE VALUES ARE DISPLAYED USING DD-MON-RR FORMAT
SQL> 
SQL> REM EXAMPLE : 22-JAN-24
SQL> 
SQL> REM WHEN WE COMPARE DATE WE SHOULD WRITE DATE IN DEFAULT OF COMPATIBLE FORMATS
SQL> 
SQL> REM BECAUSE DATE IS NON-NUMERICAL VALUE,IT MUST BE DELIMITED BY  SINGLE QUOTE
SQL> 
SQL> 
SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES;

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               

20 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DARE > 95;
SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DARE > 95
                                                 *
ERROR at line 1:
ORA-00904: "HIRE_DARE": invalid identifier 


SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DARE > '95';
SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DARE > '95'
                                                 *
ERROR at line 1:
ORA-00904: "HIRE_DARE": invalid identifier 


SQL> 
SQL> REM HERE WE NEED TO MAINTAIN THE DATE FORMAT  : DD-MON-RR
SQL> 
SQL> SELECT FIRST_NAME ,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >31-DEC-95
  2  
SQL> 
SQL> REM DATE IS NON-NUMERICAL VALUE SO WE NEED TO DELIMITED IN SINGLE QUOTE
SQL> 
SQL> SELECT FIRST_NAME ,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >31-DEC-95;
SELECT FIRST_NAME ,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >31-DEC-95
                                                                *
ERROR at line 1:
ORA-00904: "DEC": invalid identifier 


SQL> SELECT FIRST_NAME ,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31-DEC-95';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> SELECT FIRST_NAME ,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >"31-DEC-95";
SELECT FIRST_NAME ,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >"31-DEC-95"
                                                             *
ERROR at line 1:
ORA-00904: "31-DEC-95": invalid identifier 


SQL> REM DOUBLE QUOTE IS ALSO NOT ALLOWED
SQL> 
SQL> 
SQL> 
SQL> REM MONTH : DEC DECEMBER dec december Dec December Dec DeceMBer
SQL> 
SQL> REM YEAR  : 95 1995
SQL> 
SQL> REM SEPRATORS : ANY SPECIAL CHARACTER OTHER THAN ' AND &
SQL> 
SQL> REM SINGLE SEPRATOR IS SUPPORTED
SQL> 
SQL> REM WITHOUT SEPERATOR DATE IS SUPPORTED
SQL> 
SQL> REM MONTH NUMBER IS NOT SUPPORTED
SQL> 
SQL> REM LEFT TO RIGHT SEQUENCE MUST BE MAINTAINED
SQL> 
SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31-DEC-95';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31-DECEMBER-95';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31-DECEmber-95';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31-dec-95';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'dec-31-95';
SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'dec-31-95'
                                                            *
ERROR at line 1:
ORA-01858: a non-numeric character was found where a numeric was expected 


SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31/dec/95';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31/dec\95';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> 
SQL> REM HERE U CAN USE DIFFERENT DIFFERENT SEPERATOR
SQL> 
SQL> 
SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31.dec.95';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31dec95';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31-12-95';
SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_dATE >'31-12-95'
                                                            *
ERROR at line 1:
ORA-01843: not a valid month 


SQL> REM MONTH NUMBER IS NOT SUPPORTABLE
SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM IF U WANT TO ADD A SEPERATOR IS ' QUOTE THEN YOU DO LIKE THIS
SQL> 
SQL> SELECT FIRST_NAME ,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > '31''DEC1995';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> SELECT FIRST_NAME ,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > '31''DEC''1995';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> SELECT FIRST_NAME ,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > '31 DEC 1995';

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               

11 rows selected.

SQL> 
SQL> 
SQL> REM TODAY WE COVER THE WHERE CLAUSE
SQL> 
SQL> REM HERE WE DISCUSS ABOUT THE SINGLE ROW COMPARSITONO
SQL> 
SQL> REM HERE WE SAW THE COMPARATION WITH DATE ,AND YOU NEED TO MAINTAINE THE DATE FORMATE
SQL> 
SQL> REM HERE WE DISCUSSED ABOUT THE DATE SEPERATOR
SQL> 
SQL> REM COMPARISON WITH NUMBER VALUE ,STRING VALUE, DATE VALUE
SQL> 
SQL> REM THANK YOU
SQL> 
SQL> SPOOL OFFF
