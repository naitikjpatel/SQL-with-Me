SQL> SET LINES 200 PAGES 24
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
SQL> 
SQL> REM 1 SORTING
SQL> 
SQL> REM HERE WE DISCUSS ABOUT THE SORTING -> ASCENDING ORDER AND DESCENDING ORDER
SQL> 
SQL> REM SELECT SYNTAX : SELECT ... FROM ... WHERE ... ORDER BY ...;
SQL> 
SQL> REM SORTING : TO ARRANGE VALUE IN SPECIFIC ORDER : ASC/DESC
SQL> 
SQL> REM NUMBER : ASC : -9 TO 9 , DESC : 9 TO -9
SQL> 
SQL> REM IN ASCENDING : LOWEST VALUE COMES FIRST,HIGHEST VALUE COMES LAST
SQL> 
SQL> REM IN DESCENDING: HIGHEST VALUE COMES FIRST,LOWEST VALUE COMES LAST
SQL> 
SQL> 
SQL> REM ALPHABET/CHARCTER : ASC: A TO Z ,a TO z ,DESC : Z TO A ,z TO a
SQL> 
SQL> REM DATE :EARLIEST DATE IS CONSIDERED AS LOWEST DATE
SQL> 
SQL> REM DATE :LATEST DATE IS CONSIDERED AS HIGHEST DATE
SQL> 
SQL> 
SQL> REM ASCENDING : EARLIEST DATE FIRST,LATEST DATE LAST
SQL> 
SQL> REM DESCENDING : LATEST DATE FIRST,EARLIEST DATE LAST
SQL> 
SQL> REM SORTING : ORDER BY CLAUSE
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
SQL> REM ROWID IS NOTHING BUT ROW ADDRESS ,WHICH IS UNIQUE FOR EACH ROW
SQL> 
SQL> SELECT ROWID * FROM EMPLOYEES;
SELECT ROWID * FROM EMPLOYEES
               *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT ROWID  FROM EMPLOYEES;

ROWID                                                                                                                                                                                                   
------------------                                                                                                                                                                                      
AAAFCCAABAAALO5AAA                                                                                                                                                                                      
AAAFCCAABAAALO5AAB                                                                                                                                                                                      
AAAFCCAABAAALO5AAC                                                                                                                                                                                      
AAAFCCAABAAALO5AAD                                                                                                                                                                                      
AAAFCCAABAAALO5AAE                                                                                                                                                                                      
AAAFCCAABAAALO5AAF                                                                                                                                                                                      
AAAFCCAABAAALO5AAG                                                                                                                                                                                      
AAAFCCAABAAALO5AAH                                                                                                                                                                                      
AAAFCCAABAAALO5AAI                                                                                                                                                                                      
AAAFCCAABAAALO5AAJ                                                                                                                                                                                      
AAAFCCAABAAALO5AAK                                                                                                                                                                                      
AAAFCCAABAAALO5AAL                                                                                                                                                                                      
AAAFCCAABAAALO5AAM                                                                                                                                                                                      
AAAFCCAABAAALO5AAN                                                                                                                                                                                      
AAAFCCAABAAALO5AAO                                                                                                                                                                                      
AAAFCCAABAAALO5AAP                                                                                                                                                                                      
AAAFCCAABAAALO5AAQ                                                                                                                                                                                      
AAAFCCAABAAALO5AAR                                                                                                                                                                                      
AAAFCCAABAAALO5AAS                                                                                                                                                                                      
AAAFCCAABAAALO5AAT                                                                                                                                                                                      

20 rows selected.

SQL> SELECT ROWID ,* FROM EMPLOYEES;
SELECT ROWID ,* FROM EMPLOYEES
              *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT ROWID ,eMPLOYEES.* FROM EMPLOYEES;

ROWID              EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                  
------------------ ----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                  
AAAFCCAABAAALO5AAA         100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                  
AAAFCCAABAAALO5AAB         101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                  
AAAFCCAABAAALO5AAC         102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                  
AAAFCCAABAAALO5AAD         103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                  
AAAFCCAABAAALO5AAE         104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                  
AAAFCCAABAAALO5AAF         107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                  
AAAFCCAABAAALO5AAG         124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                  
AAAFCCAABAAALO5AAH         141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                  
AAAFCCAABAAALO5AAI         142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                  
AAAFCCAABAAALO5AAJ         143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                  
AAAFCCAABAAALO5AAK         144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                  
AAAFCCAABAAALO5AAL         149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                  
AAAFCCAABAAALO5AAM         174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                  
AAAFCCAABAAALO5AAN         176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                  
AAAFCCAABAAALO5AAO         178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                
AAAFCCAABAAALO5AAP         200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                  
AAAFCCAABAAALO5AAQ         201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                  
AAAFCCAABAAALO5AAR         202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                  
AAAFCCAABAAALO5AAS         205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                  
AAAFCCAABAAALO5AAT         206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                  

20 rows selected.

SQL> 
SQL> 
SQL> REM BY DEFAULT ROWS ARE SORTED ON ROWID IN ASCENDING ORDER
SQL> 
SQL> SELECT * FROM EMPLOYEES ORDER BY SALARY;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     
        143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     
        200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     

20 rows selected.

SQL> 
SQL> REM ACCORDING TO SALARY COLUMN OUR DATA REARRANGE
SQL> 
SQL> REM THIS ALL PROCESS IS ON THE TEMPARAORY DATA
SQL> 
SQL> SELECT * FROM EMPLOYEES ORDER BY SALARY ASC;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     
        143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     
        200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     

20 rows selected.

SQL> SELECT * FROM EMPLOYEES ORDER BY SALARY DESC;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
        200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     

20 rows selected.

SQL> SELECT * FROM EMPLOYEES ORDER BY 8;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     
        143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     
        200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     

20 rows selected.

SQL> SELECT * FROM EMPLOYEES ORDER BY 8 DESC;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
        200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     

20 rows selected.

SQL> 
SQL> 
SQL> SELECT ROWID ,E.* FROM EMPLOYEES E;

ROWID              EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                  
------------------ ----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                  
AAAFCCAABAAALO5AAA         100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                  
AAAFCCAABAAALO5AAB         101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                  
AAAFCCAABAAALO5AAC         102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                  
AAAFCCAABAAALO5AAD         103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                  
AAAFCCAABAAALO5AAE         104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                  
AAAFCCAABAAALO5AAF         107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                  
AAAFCCAABAAALO5AAG         124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                  
AAAFCCAABAAALO5AAH         141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                  
AAAFCCAABAAALO5AAI         142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                  
AAAFCCAABAAALO5AAJ         143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                  
AAAFCCAABAAALO5AAK         144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                  
AAAFCCAABAAALO5AAL         149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                  
AAAFCCAABAAALO5AAM         174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                  
AAAFCCAABAAALO5AAN         176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                  
AAAFCCAABAAALO5AAO         178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                
AAAFCCAABAAALO5AAP         200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                  
AAAFCCAABAAALO5AAQ         201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                  
AAAFCCAABAAALO5AAR         202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                  
AAAFCCAABAAALO5AAS         205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                  
AAAFCCAABAAALO5AAT         206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                  

20 rows selected.

SQL> REM THAT KNOWN AS A TABLE ALIAS
SQL> 
SQL> 
SQL> SELECT ROWID ,EMPLOYEES.* FROM EMPLOYEES E;
SELECT ROWID ,EMPLOYEES.* FROM EMPLOYEES E
                        *
ERROR at line 1:
ORA-00904: "EMPLOYEES": invalid identifier 


SQL> REM YOU CAN NOT WRITE LIKE THIS ,U SHOULD NEED TO MAINTAIN THE SAME NAME OF THE TABLE NAME
SQL> 
SQL> 
SQL> 
SQL> SELECT FIRST_NAME,SALARY PAYMENT FROM EMPLOYEES ORDER BY SALARY;

FIRST_NAME         PAYMENT                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
William               8300                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Steven               24000                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY PAYMENT FROM EMPLOYEES ORDER BY 2;

FIRST_NAME         PAYMENT                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
William               8300                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Steven               24000                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY PAYMENT FROM EMPLOYEES ORDER BY PAYMENT;

FIRST_NAME         PAYMENT                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
William               8300                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Steven               24000                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY PAYMENT FROM EMPLOYEES ORDER BY SALARY DESC;

FIRST_NAME         PAYMENT                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
William               8300                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY PAYMENT FROM EMPLOYEES ORDER BY PAYMENT DESC;

FIRST_NAME         PAYMENT                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
William               8300                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY PAYMENT FROM EMPLOYEES ORDER BY 2 DESC;

FIRST_NAME         PAYMENT                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
William               8300                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              

20 rows selected.

SQL> 
SQL> REM U CAN USE A ORIGINAL NAME OF THE COLUMN ,ALIAS NAME OF THE COLUMN OR COLUMN NUMBER FOR THE SORTING
SQL> REM ORDER BY CLAUSE ALLOWED THE ALL THE THINGS
SQL> 
SQL> 
SQL> 
SQL> REM NOW WE SEE THE SORTING WITH THE NULL VALUES PRESENT IN THE COLUMN
SQL> 
SQL> SELECT FIRST_NAME,COMMISSION_PCT FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT                                                                                                                                                                          
--------------- --------------                                                                                                                                                                          
Steven                                                                                                                                                                                                  
Neena                                                                                                                                                                                                   
Lex                                                                                                                                                                                                     
Alexander                                                                                                                                                                                               
Bruce                                                                                                                                                                                                   
Diana                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Peter                                                                                                                                                                                                   
Eleni                       .2                                                                                                                                                                          
Ellen                       .3                                                                                                                                                                          
Jonathon                    .3                                                                                                                                                                          
Kimerely                   .15                                                                                                                                                                          
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

20 rows selected.

SQL> SELECT FIRST_NAME,COMMISSION_PCT FROM EMPLOYEES ORDER BY 2;

FIRST_NAME      COMMISSION_PCT                                                                                                                                                                          
--------------- --------------                                                                                                                                                                          
Kimerely                   .15                                                                                                                                                                          
Eleni                       .2                                                                                                                                                                          
Jonathon                    .3                                                                                                                                                                          
Ellen                       .3                                                                                                                                                                          
Bruce                                                                                                                                                                                                   
Diana                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Peter                                                                                                                                                                                                   
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Shelley                                                                                                                                                                                                 
Alexander                                                                                                                                                                                               
Lex                                                                                                                                                                                                     
William                                                                                                                                                                                                 
Steven                                                                                                                                                                                                  
Neena                                                                                                                                                                                                   

20 rows selected.

SQL> SELECT FIRST_NAME,COMMISSION_PCT FROM EMPLOYEES ORDER BY 2 DESC;

FIRST_NAME      COMMISSION_PCT                                                                                                                                                                          
--------------- --------------                                                                                                                                                                          
Steven                                                                                                                                                                                                  
William                                                                                                                                                                                                 
Lex                                                                                                                                                                                                     
Alexander                                                                                                                                                                                               
Bruce                                                                                                                                                                                                   
Diana                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Peter                                                                                                                                                                                                   
Neena                                                                                                                                                                                                   
Shelley                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Jennifer                                                                                                                                                                                                
Jonathon                    .3                                                                                                                                                                          
Ellen                       .3                                                                                                                                                                          
Eleni                       .2                                                                                                                                                                          
Kimerely                   .15                                                                                                                                                                          

20 rows selected.

SQL> 
SQL> 
SQL> REM NULL CONSIDERED AS A HIGHEST VALUE
SQL> REM THAT REASON IT COMES IN THE LAST WHEN WE APPLY THE ASCENDING ORDER
SQL> REM ANS NULL VALUE COMES FIRST WHENE WE APPLY THE DESCENDING ORDER
SQL> 
SQL> 
SQL> REM NOW WE SEE THE NULLS FIRST AND NULLS LAST
SQL> 
SQL> REM I NEED THE NULL VALUE IN FIRST WHEN I APPLY THE ASCENDING ORDER
SQL> 
SQL> REM I NEED THE NULL VALUE IN LAST WHEN I APPLY THE DESCENDING ORDER
SQL> 
SQL> SELECT FIRST_NAME,COMMISSION_PCT FROM EMPLOYEES ORDER BY 2;

FIRST_NAME      COMMISSION_PCT                                                                                                                                                                          
--------------- --------------                                                                                                                                                                          
Kimerely                   .15                                                                                                                                                                          
Eleni                       .2                                                                                                                                                                          
Jonathon                    .3                                                                                                                                                                          
Ellen                       .3                                                                                                                                                                          
Bruce                                                                                                                                                                                                   
Diana                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Peter                                                                                                                                                                                                   
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Shelley                                                                                                                                                                                                 
Alexander                                                                                                                                                                                               
Lex                                                                                                                                                                                                     
William                                                                                                                                                                                                 
Steven                                                                                                                                                                                                  
Neena                                                                                                                                                                                                   

20 rows selected.

SQL> SELECT FIRST_NAME,COMMISSION_PCT FROM EMPLOYEES ORDER BY 2 NULLS FIRST;

FIRST_NAME      COMMISSION_PCT                                                                                                                                                                          
--------------- --------------                                                                                                                                                                          
Steven                                                                                                                                                                                                  
William                                                                                                                                                                                                 
Lex                                                                                                                                                                                                     
Alexander                                                                                                                                                                                               
Bruce                                                                                                                                                                                                   
Diana                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Peter                                                                                                                                                                                                   
Neena                                                                                                                                                                                                   
Shelley                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Jennifer                                                                                                                                                                                                
Kimerely                   .15                                                                                                                                                                          
Eleni                       .2                                                                                                                                                                          
Jonathon                    .3                                                                                                                                                                          
Ellen                       .3                                                                                                                                                                          

20 rows selected.

SQL> SELECT FIRST_NAME,COMMISSION_PCT FROM EMPLOYEES ORDER BY 2 DESC;

FIRST_NAME      COMMISSION_PCT                                                                                                                                                                          
--------------- --------------                                                                                                                                                                          
Steven                                                                                                                                                                                                  
William                                                                                                                                                                                                 
Lex                                                                                                                                                                                                     
Alexander                                                                                                                                                                                               
Bruce                                                                                                                                                                                                   
Diana                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Peter                                                                                                                                                                                                   
Neena                                                                                                                                                                                                   
Shelley                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Jennifer                                                                                                                                                                                                
Jonathon                    .3                                                                                                                                                                          
Ellen                       .3                                                                                                                                                                          
Eleni                       .2                                                                                                                                                                          
Kimerely                   .15                                                                                                                                                                          

20 rows selected.

SQL> SELECT FIRST_NAME,COMMISSION_PCT FROM EMPLOYEES ORDER BY 2 DESC NULLS LAST;

FIRST_NAME      COMMISSION_PCT                                                                                                                                                                          
--------------- --------------                                                                                                                                                                          
Jonathon                    .3                                                                                                                                                                          
Ellen                       .3                                                                                                                                                                          
Eleni                       .2                                                                                                                                                                          
Kimerely                   .15                                                                                                                                                                          
Bruce                                                                                                                                                                                                   
Diana                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Peter                                                                                                                                                                                                   
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Shelley                                                                                                                                                                                                 
Alexander                                                                                                                                                                                               
Lex                                                                                                                                                                                                     
William                                                                                                                                                                                                 
Steven                                                                                                                                                                                                  
Neena                                                                                                                                                                                                   

20 rows selected.

SQL> 
SQL> 
SQL> REM --------------------------------------- SOMTHING DISCUSS ABOUT THE NULL VALUE -----------------------------------------
> 
SQL> REM NULL IS CONSIDERED AS BIGGEST VALUE OF ALL
SQL> 
SQL> REM IN ASCENDING SORTING,NULLS WILL BE KEPT AT BOTTOM
SQL> 
SQL> REM IN DESCENDING SORTING,NULLS WILL BE KEPT AT TOP
SQL> 
SQL> REM IF WE WANT TO CHANGE NULLS POSITION, WE CAN USE : 1 NULLS FIRST 2 NULLS LAST
SQL> 
SQL> SELECT FIRST_NAME,SALARY FROM EMPLOYEES;

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
William               8300                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY FROM EMPLOYEES ORDER BY FIRST_NAME;

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
William               8300                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY FROM EMPLOYEES ORDER BY FIRST_NAME ASC;

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
William               8300                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY FROM EMPLOYEES ORDER BY FIRST_NAME DESC;

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
William               8300                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY FROM EMPLOYEES ORDER BY 1 DESC;

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
William               8300                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY FROM EMPLOYEES ORDER BY 1;

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
William               8300                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY FROM EMPLOYEES ORDER BY 1 ASC;

FIRST_NAME          SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
William               8300                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME NAME,SALARY FROM EMPLOYEES ORDER BY NAME;

NAME                SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
William               8300                                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME NAME,SALARY FROM EMPLOYEES ORDER BY NAME DESC;

NAME                SALARY                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
William               8300                                                                                                                                                                              
Trenna                3500                                                                                                                                                                              
Steven               24000                                                                                                                                                                              
Shelley              12000                                                                                                                                                                              
Randall               2600                                                                                                                                                                              
Peter                 2500                                                                                                                                                                              
Pat                   6000                                                                                                                                                                              
Neena                17000                                                                                                                                                                              
Michael              13000                                                                                                                                                                              
Lex                  17000                                                                                                                                                                              
Kimerely              7000                                                                                                                                                                              
Kevin                 5800                                                                                                                                                                              
Jonathon              8600                                                                                                                                                                              
Jennifer              4400                                                                                                                                                                              
Ellen                11000                                                                                                                                                                              
Eleni                10500                                                                                                                                                                              
Diana                 4200                                                                                                                                                                              
Curtis                3100                                                                                                                                                                              
Bruce                 6000                                                                                                                                                                              
Alexander             9000                                                                                                                                                                              

20 rows selected.

SQL> 
SQL> 
SQL> REM NOW WE SEE THE SORTING ON THE DATE DATA TYPE
SQL> 
SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES ORDER BY HIRE_DATE;

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               

20 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES ORDER BY 2;

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               

20 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES ORDER BY 2 DESC;

FIRST_NAME      HIRE_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               

20 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE JOIN_DATE FROM EMPLOYEES ORDER BY 2 DESC;

FIRST_NAME      JOIN_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               

20 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE JOIN_DATE FROM EMPLOYEES ORDER BY JOIN_DATE DESC;

FIRST_NAME      JOIN_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               

20 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE JOIN_DATE FROM EMPLOYEES ORDER BY JOIN_DATE ASC;

FIRST_NAME      JOIN_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               

20 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE JOIN_DATE FROM EMPLOYEES ORDER BY JOIN_DATE;

FIRST_NAME      JOIN_DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               

20 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE "JOIN DATE" FROM EMPLOYEES ORDER BY JOIN DATE;
SELECT FIRST_NAME,HIRE_DATE "JOIN DATE" FROM EMPLOYEES ORDER BY JOIN DATE
                                                                     *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> SELECT FIRST_NAME,HIRE_DATE "JOIN DATE" FROM EMPLOYEES ORDER BY "JOIN DATE";

FIRST_NAME      JOIN DATE                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               

20 rows selected.

SQL> REM IF U USE A DOUBLE QUOTE IN THE COLUMN ALIAS AND U WANT TO USE THAT NAME IN THE ORDER BY CLAUSE THEN U NEED TO WRITE SAME IF U USE THE DOUBLE QUOTE THEN IN ORDER
SQL> REM ORDER BY U NEED TO WRITE COLUMN NAME WITH THE DOUBLE QUOTE
SQL> 
SQL> 
SQL> SELECT FIRST_NAME,HIRE_DATE "JOIN DATE" FROM EMPLOYEES ORDER BY "Join date";
SELECT FIRST_NAME,HIRE_DATE "JOIN DATE" FROM EMPLOYEES ORDER BY "Join date"
                                                                *
ERROR at line 1:
ORA-00904: "Join date": invalid identifier 


SQL> SELECT FIRST_NAME,HIRE_DATE "Join date" FROM EMPLOYEES ORDER BY "Join date";

FIRST_NAME      Join date                                                                                                                                                                               
--------------- ---------                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               

20 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE Joindate FROM EMPLOYEES ORDER BY Joindate;

FIRST_NAME      JOINDATE                                                                                                                                                                                
--------------- ---------                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               

20 rows selected.

SQL> SELECT FIRST_NAME,HIRE_DATE Joindate FROM EMPLOYEES ORDER BY JOINDATE;

FIRST_NAME      JOINDATE                                                                                                                                                                                
--------------- ---------                                                                                                                                                                               
Steven          17-JUL-87                                                                                                                                                                               
Jennifer        17-SEP-87                                                                                                                                                                               
Neena           21-SEP-89                                                                                                                                                                               
Alexander       03-JAN-90                                                                                                                                                                               
Bruce           21-MAY-91                                                                                                                                                                               
Lex             13-JAN-93                                                                                                                                                                               
Shelley         07-JUN-94                                                                                                                                                                               
William         07-JUN-94                                                                                                                                                                               
Trenna          17-OCT-95                                                                                                                                                                               
Michael         17-FEB-96                                                                                                                                                                               
Ellen           11-MAY-96                                                                                                                                                                               
Curtis          29-JAN-97                                                                                                                                                                               
Pat             17-AUG-97                                                                                                                                                                               
Randall         15-MAR-98                                                                                                                                                                               
Jonathon        24-MAR-98                                                                                                                                                                               
Peter           09-JUL-98                                                                                                                                                                               
Diana           07-FEB-99                                                                                                                                                                               
Kimerely        24-MAY-99                                                                                                                                                                               
Kevin           16-NOV-99                                                                                                                                                                               
Eleni           29-JAN-00                                                                                                                                                                               

20 rows selected.

SQL> 
SQL> 
SQL> 
SQL> SELECT DEPARTMENT_ID,FIRST_NAME FROM EMPLOYEES;

DEPARTMENT_ID FIRST_NAME                                                                                                                                                                                
------------- ---------------                                                                                                                                                                           
           90 Steven                                                                                                                                                                                    
           90 Neena                                                                                                                                                                                     
           90 Lex                                                                                                                                                                                       
           60 Alexander                                                                                                                                                                                 
           60 Bruce                                                                                                                                                                                     
           60 Diana                                                                                                                                                                                     
           50 Kevin                                                                                                                                                                                     
           50 Trenna                                                                                                                                                                                    
           50 Curtis                                                                                                                                                                                    
           50 Randall                                                                                                                                                                                   
           50 Peter                                                                                                                                                                                     
           80 Eleni                                                                                                                                                                                     
           80 Ellen                                                                                                                                                                                     
           80 Jonathon                                                                                                                                                                                  
              Kimerely                                                                                                                                                                                  
           10 Jennifer                                                                                                                                                                                  
           20 Michael                                                                                                                                                                                   
           20 Pat                                                                                                                                                                                       
          110 Shelley                                                                                                                                                                                   
          110 William                                                                                                                                                                                   

20 rows selected.

SQL> SELECT DEPARTMENT_ID,FIRST_NAME FROM EMPLOYEES ORDER BY 1;

DEPARTMENT_ID FIRST_NAME                                                                                                                                                                                
------------- ---------------                                                                                                                                                                           
           10 Jennifer                                                                                                                                                                                  
           20 Michael                                                                                                                                                                                   
           20 Pat                                                                                                                                                                                       
           50 Kevin                                                                                                                                                                                     
           50 Peter                                                                                                                                                                                     
           50 Randall                                                                                                                                                                                   
           50 Curtis                                                                                                                                                                                    
           50 Trenna                                                                                                                                                                                    
           60 Diana                                                                                                                                                                                     
           60 Bruce                                                                                                                                                                                     
           60 Alexander                                                                                                                                                                                 
           80 Ellen                                                                                                                                                                                     
           80 Eleni                                                                                                                                                                                     
           80 Jonathon                                                                                                                                                                                  
           90 Lex                                                                                                                                                                                       
           90 Steven                                                                                                                                                                                    
           90 Neena                                                                                                                                                                                     
          110 William                                                                                                                                                                                   
          110 Shelley                                                                                                                                                                                   
              Kimerely                                                                                                                                                                                  

20 rows selected.

SQL> 
SQL> REM NOW WE SEE THE ORDER BY/SORTING WITH 2 OR MULTIPLE COLUMN
SQL> 
SQL> SELECT DEPARTMENT_ID,FIRST_NAME FROM EMPLOYEES ORDER BY 1,2;

DEPARTMENT_ID FIRST_NAME                                                                                                                                                                                
------------- ---------------                                                                                                                                                                           
           10 Jennifer                                                                                                                                                                                  
           20 Michael                                                                                                                                                                                   
           20 Pat                                                                                                                                                                                       
           50 Curtis                                                                                                                                                                                    
           50 Kevin                                                                                                                                                                                     
           50 Peter                                                                                                                                                                                     
           50 Randall                                                                                                                                                                                   
           50 Trenna                                                                                                                                                                                    
           60 Alexander                                                                                                                                                                                 
           60 Bruce                                                                                                                                                                                     
           60 Diana                                                                                                                                                                                     
           80 Eleni                                                                                                                                                                                     
           80 Ellen                                                                                                                                                                                     
           80 Jonathon                                                                                                                                                                                  
           90 Lex                                                                                                                                                                                       
           90 Neena                                                                                                                                                                                     
           90 Steven                                                                                                                                                                                    
          110 Shelley                                                                                                                                                                                   
          110 William                                                                                                                                                                                   
              Kimerely                                                                                                                                                                                  

20 rows selected.

SQL> SELECT DEPARTMENT_ID,FIRST_NAME FROM EMPLOYEES ORDER BY 1,2 DESC;

DEPARTMENT_ID FIRST_NAME                                                                                                                                                                                
------------- ---------------                                                                                                                                                                           
           10 Jennifer                                                                                                                                                                                  
           20 Pat                                                                                                                                                                                       
           20 Michael                                                                                                                                                                                   
           50 Trenna                                                                                                                                                                                    
           50 Randall                                                                                                                                                                                   
           50 Peter                                                                                                                                                                                     
           50 Kevin                                                                                                                                                                                     
           50 Curtis                                                                                                                                                                                    
           60 Diana                                                                                                                                                                                     
           60 Bruce                                                                                                                                                                                     
           60 Alexander                                                                                                                                                                                 
           80 Jonathon                                                                                                                                                                                  
           80 Ellen                                                                                                                                                                                     
           80 Eleni                                                                                                                                                                                     
           90 Steven                                                                                                                                                                                    
           90 Neena                                                                                                                                                                                     
           90 Lex                                                                                                                                                                                       
          110 William                                                                                                                                                                                   
          110 Shelley                                                                                                                                                                                   
              Kimerely                                                                                                                                                                                  

20 rows selected.

SQL> 
SQL> REM HERE WE CAN CHANGE THE SORTING OPERATION WITH DIFFERENT COLUMN -> IF U WANT TO APPLY THE ASC ORDER IN 1 COLUMN AND DESC ORDER IN 2 COLUMN THEN U CAN APPLY
SQL> 
SQL> SELECT DEPARTMENT_ID,FIRST_NAME FROM EMPLOYEES ORDER BY 1 ASC,2 DESC;

DEPARTMENT_ID FIRST_NAME                                                                                                                                                                                
------------- ---------------                                                                                                                                                                           
           10 Jennifer                                                                                                                                                                                  
           20 Pat                                                                                                                                                                                       
           20 Michael                                                                                                                                                                                   
           50 Trenna                                                                                                                                                                                    
           50 Randall                                                                                                                                                                                   
           50 Peter                                                                                                                                                                                     
           50 Kevin                                                                                                                                                                                     
           50 Curtis                                                                                                                                                                                    
           60 Diana                                                                                                                                                                                     
           60 Bruce                                                                                                                                                                                     
           60 Alexander                                                                                                                                                                                 
           80 Jonathon                                                                                                                                                                                  
           80 Ellen                                                                                                                                                                                     
           80 Eleni                                                                                                                                                                                     
           90 Steven                                                                                                                                                                                    
           90 Neena                                                                                                                                                                                     
           90 Lex                                                                                                                                                                                       
          110 William                                                                                                                                                                                   
          110 Shelley                                                                                                                                                                                   
              Kimerely                                                                                                                                                                                  

20 rows selected.

SQL> SELECT DEPARTMENT_ID,FIRST_NAME FROM EMPLOYEES ORDER BY 1 ASC,2 ASC;

DEPARTMENT_ID FIRST_NAME                                                                                                                                                                                
------------- ---------------                                                                                                                                                                           
           10 Jennifer                                                                                                                                                                                  
           20 Michael                                                                                                                                                                                   
           20 Pat                                                                                                                                                                                       
           50 Curtis                                                                                                                                                                                    
           50 Kevin                                                                                                                                                                                     
           50 Peter                                                                                                                                                                                     
           50 Randall                                                                                                                                                                                   
           50 Trenna                                                                                                                                                                                    
           60 Alexander                                                                                                                                                                                 
           60 Bruce                                                                                                                                                                                     
           60 Diana                                                                                                                                                                                     
           80 Eleni                                                                                                                                                                                     
           80 Ellen                                                                                                                                                                                     
           80 Jonathon                                                                                                                                                                                  
           90 Lex                                                                                                                                                                                       
           90 Neena                                                                                                                                                                                     
           90 Steven                                                                                                                                                                                    
          110 Shelley                                                                                                                                                                                   
          110 William                                                                                                                                                                                   
              Kimerely                                                                                                                                                                                  

20 rows selected.

SQL> SELECT DEPARTMENT_ID,FIRST_NAME FROM EMPLOYEES ORDER BY 1 DESC,2 DESC;

DEPARTMENT_ID FIRST_NAME                                                                                                                                                                                
------------- ---------------                                                                                                                                                                           
              Kimerely                                                                                                                                                                                  
          110 William                                                                                                                                                                                   
          110 Shelley                                                                                                                                                                                   
           90 Steven                                                                                                                                                                                    
           90 Neena                                                                                                                                                                                     
           90 Lex                                                                                                                                                                                       
           80 Jonathon                                                                                                                                                                                  
           80 Ellen                                                                                                                                                                                     
           80 Eleni                                                                                                                                                                                     
           60 Diana                                                                                                                                                                                     
           60 Bruce                                                                                                                                                                                     
           60 Alexander                                                                                                                                                                                 
           50 Trenna                                                                                                                                                                                    
           50 Randall                                                                                                                                                                                   
           50 Peter                                                                                                                                                                                     
           50 Kevin                                                                                                                                                                                     
           50 Curtis                                                                                                                                                                                    
           20 Pat                                                                                                                                                                                       
           20 Michael                                                                                                                                                                                   
           10 Jennifer                                                                                                                                                                                  

20 rows selected.

SQL> 
SQL> 
SQL> SELECT DEPARTMENT_ID,JOB_ID,LAST_NAME FROM EMPLOYEES;

DEPARTMENT_ID JOB_ID     LAST_NAME                                                                                                                                                                      
------------- ---------- ---------------                                                                                                                                                                
           90 AD_PRES    King                                                                                                                                                                           
           90 AD_VP      Kochhar                                                                                                                                                                        
           90 AD_VP      De Haan                                                                                                                                                                        
           60 IT_PROG    Hunold                                                                                                                                                                         
           60 IT_PROG    Ernst                                                                                                                                                                          
           60 IT_PROG    Lorentz                                                                                                                                                                        
           50 ST_MAN     Mourgos                                                                                                                                                                        
           50 ST_CLERK   Rajs                                                                                                                                                                           
           50 ST_CLERK   Davies                                                                                                                                                                         
           50 ST_CLERK   Matos                                                                                                                                                                          
           50 ST_CLERK   Vargas                                                                                                                                                                         
           80 SA_MAN     Zlotkey                                                                                                                                                                        
           80 SA_REP     Abel                                                                                                                                                                           
           80 SA_REP     Taylor                                                                                                                                                                         
              SA_REP     Grant                                                                                                                                                                          
           10 AD_ASST    Whalen                                                                                                                                                                         
           20 MK_MAN     Hartstein                                                                                                                                                                      
           20 MK_REP     Fay                                                                                                                                                                            
          110 AC_MGR     Higgins                                                                                                                                                                        
          110 AC_ACCOUNT Gietz                                                                                                                                                                          

20 rows selected.

SQL> SELECT DEPARTMENT_ID,JOB_ID,LAST_NAME FROM EMPLOYEES ORDER BY 1 ASC,2,DESC,3 DESC;
SELECT DEPARTMENT_ID,JOB_ID,LAST_NAME FROM EMPLOYEES ORDER BY 1 ASC,2,DESC,3 DESC
                                                                      *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT DEPARTMENT_ID,JOB_ID,LAST_NAME FROM EMPLOYEES ORDER BY 1 ASC,2 DESC,3 DESC;

DEPARTMENT_ID JOB_ID     LAST_NAME                                                                                                                                                                      
------------- ---------- ---------------                                                                                                                                                                
           10 AD_ASST    Whalen                                                                                                                                                                         
           20 MK_REP     Fay                                                                                                                                                                            
           20 MK_MAN     Hartstein                                                                                                                                                                      
           50 ST_MAN     Mourgos                                                                                                                                                                        
           50 ST_CLERK   Vargas                                                                                                                                                                         
           50 ST_CLERK   Rajs                                                                                                                                                                           
           50 ST_CLERK   Matos                                                                                                                                                                          
           50 ST_CLERK   Davies                                                                                                                                                                         
           60 IT_PROG    Lorentz                                                                                                                                                                        
           60 IT_PROG    Hunold                                                                                                                                                                         
           60 IT_PROG    Ernst                                                                                                                                                                          
           80 SA_REP     Taylor                                                                                                                                                                         
           80 SA_REP     Abel                                                                                                                                                                           
           80 SA_MAN     Zlotkey                                                                                                                                                                        
           90 AD_VP      Kochhar                                                                                                                                                                        
           90 AD_VP      De Haan                                                                                                                                                                        
           90 AD_PRES    King                                                                                                                                                                           
          110 AC_MGR     Higgins                                                                                                                                                                        
          110 AC_ACCOUNT Gietz                                                                                                                                                                          
              SA_REP     Grant                                                                                                                                                                          

20 rows selected.

SQL> SELECT DEPARTMENT_ID,JOB_ID,LAST_NAME FROM EMPLOYEES ORDER BY 1 ASC NULLS FIRST,2 DESC,3 DESC;

DEPARTMENT_ID JOB_ID     LAST_NAME                                                                                                                                                                      
------------- ---------- ---------------                                                                                                                                                                
              SA_REP     Grant                                                                                                                                                                          
           10 AD_ASST    Whalen                                                                                                                                                                         
           20 MK_REP     Fay                                                                                                                                                                            
           20 MK_MAN     Hartstein                                                                                                                                                                      
           50 ST_MAN     Mourgos                                                                                                                                                                        
           50 ST_CLERK   Vargas                                                                                                                                                                         
           50 ST_CLERK   Rajs                                                                                                                                                                           
           50 ST_CLERK   Matos                                                                                                                                                                          
           50 ST_CLERK   Davies                                                                                                                                                                         
           60 IT_PROG    Lorentz                                                                                                                                                                        
           60 IT_PROG    Hunold                                                                                                                                                                         
           60 IT_PROG    Ernst                                                                                                                                                                          
           80 SA_REP     Taylor                                                                                                                                                                         
           80 SA_REP     Abel                                                                                                                                                                           
           80 SA_MAN     Zlotkey                                                                                                                                                                        
           90 AD_VP      Kochhar                                                                                                                                                                        
           90 AD_VP      De Haan                                                                                                                                                                        
           90 AD_PRES    King                                                                                                                                                                           
          110 AC_MGR     Higgins                                                                                                                                                                        
          110 AC_ACCOUNT Gietz                                                                                                                                                                          

20 rows selected.

SQL> SELECT DEPARTMENT_ID,JOB_ID,LAST_NAME FROM EMPLOYEES ORDER BY 1 DESC NULLS LAST,2 DESC,3 DESC;

DEPARTMENT_ID JOB_ID     LAST_NAME                                                                                                                                                                      
------------- ---------- ---------------                                                                                                                                                                
          110 AC_MGR     Higgins                                                                                                                                                                        
          110 AC_ACCOUNT Gietz                                                                                                                                                                          
           90 AD_VP      Kochhar                                                                                                                                                                        
           90 AD_VP      De Haan                                                                                                                                                                        
           90 AD_PRES    King                                                                                                                                                                           
           80 SA_REP     Taylor                                                                                                                                                                         
           80 SA_REP     Abel                                                                                                                                                                           
           80 SA_MAN     Zlotkey                                                                                                                                                                        
           60 IT_PROG    Lorentz                                                                                                                                                                        
           60 IT_PROG    Hunold                                                                                                                                                                         
           60 IT_PROG    Ernst                                                                                                                                                                          
           50 ST_MAN     Mourgos                                                                                                                                                                        
           50 ST_CLERK   Vargas                                                                                                                                                                         
           50 ST_CLERK   Rajs                                                                                                                                                                           
           50 ST_CLERK   Matos                                                                                                                                                                          
           50 ST_CLERK   Davies                                                                                                                                                                         
           20 MK_REP     Fay                                                                                                                                                                            
           20 MK_MAN     Hartstein                                                                                                                                                                      
           10 AD_ASST    Whalen                                                                                                                                                                         
              SA_REP     Grant                                                                                                                                                                          

20 rows selected.

SQL> 
SQL> SPOOL OFF
