SQL> 
SQL> REM SPOOL D:\sqlPractice\CH1-1.SQL THIS IS THE COOMAND TO CREATE A FILE
SQL> 
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
SQL> REM VERTICAL : COLUMN
SQL> 
SQL> REM HORIZONTAL : ROW
SQL> 
SQL> REM INTERSECTION : FIELD
SQL> 
SQL> REM COMBINATION: TABLE
SQL> 
SQL> REM COLUMN HAS 3 PARTS : FIRST_NAME : COLUMN NAME/HEADING/ALIAS
SQL> 
SQL> REM SECOND LINE : SEPARATOR BETWEEN HEADING AND DATA/VALUE
SQL> 
SQL> REM THIRD LINE ONWARDS : DATA/VALUES
SQL> 
SQL> REM 20 ROWS ....: IS FEEDBACK MESSAGE
SQL> 
SQL> REM : IT IS FIRST STYLE OF WRITING COMMENT
SQL> 
SQL> -- THIS IS THE SECOND STYLE OF WRITING COMMENT
SQL> 
SQL> /*
SQL> THIS IS
SQL> THIRD
SQL> STYLE OF
SQL> WRTTING
SQL> COMMENT
SQL> 
SQL> */
SQL> 
SQL> REM SQL> IS CALLED PROMPT
SQL> 
SQL> REM PROMPT MEANS IT IS READY TO TAKE COMMAND FROM USER
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
SQL> REM BASIC SELECT STATEMENT
SQL> 
SQL> REM SELECT STATEMENT IS USED TO READ DATA FROM TABLE AND DISPLAY IT ON SCREEN
SQL> 
SQL> REM RR: ROUNDING YEAR
SQL> 
SQL> REM SELECT STATEMENT HAS 5 PARTS
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
SQL> SELECT * FROM EMPLOYEES
  2  ;

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

SQL> SELECT * FROM EMPLOYEES
  2  /

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

SQL> SELECT * FROM EMPLOYEES/
  2  
SQL> SELECT * FROM EMPLOYEES
  2  /

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
SQL> REM * : META CHARACTER
SQL> 
SQL> REM META CHARACTER : IT IS EASY WAY TO REPRESENT ALL COLUMNS OF THE TABLE
SQL> 
SQL> SELECT * FROM REGIONS
  2  ;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 Europe                                                                                                                                                                                       
         2 Americas                                                                                                                                                                                     
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

SQL> 
SQL> 
SQL> 
SQL> REM NOW WE LEARN ABOUT THE PROJECTION
SQL> 
SQL> REM PROJECTION: MEANS DISPLAY THE SELECTED COLUMN OF THE TABLE THAT PROCESS KNOWN AS A PROJECTION
SQL> 
SQL> SELECT REGION_ID FROM REGIONS;

 REGION_ID                                                                                                                                                                                              
----------                                                                                                                                                                                              
         1                                                                                                                                                                                              
         2                                                                                                                                                                                              
         3                                                                                                                                                                                              
         4                                                                                                                                                                                              

SQL> 
SQL> SELECT REGION_ID,REGION_NAME FROM REGIONS;

 REGION_ID REGION_NAME                                                                                                                                                                                  
---------- -------------------------                                                                                                                                                                    
         1 Europe                                                                                                                                                                                       
         2 Americas                                                                                                                                                                                     
         3 Asia                                                                                                                                                                                         
         4 Middle East and Africa                                                                                                                                                                       

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

SQL> 
SQL> SELECT DEPARTMENT_ID, DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID FROM EMPLOYEES;
SELECT DEPARTMENT_ID, DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID FROM EMPLOYEES
                                                 *
ERROR at line 1:
ORA-00904: "LOCATION_ID": invalid identifier 


SQL> SELECT DEPARTMENT_ID, DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID FROM DEPARTMENTS;

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
SQL> 
SQL> REM IN SELECT STATEMENT YOU NEED TO FOLLOW THE SYNTAX
SQL> 
SQL> SELECT FROM * EMPLOYEES;
SELECT FROM * EMPLOYEES
       *
ERROR at line 1:
ORA-00936: missing expression 


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
SQL> SELECT DEPARTMENT_ID FROM DEPARTMENTS;

DEPARTMENT_ID                                                                                                                                                                                           
-------------                                                                                                                                                                                           
           10                                                                                                                                                                                           
           20                                                                                                                                                                                           
           50                                                                                                                                                                                           
           60                                                                                                                                                                                           
           80                                                                                                                                                                                           
           90                                                                                                                                                                                           
          110                                                                                                                                                                                           
          190                                                                                                                                                                                           

8 rows selected.

SQL> 
SQL> SELECT DEPARTMENT_NAME,MANAGER_ID FROM DEPARTMENTS;

DEPARTMENT_NAME                MANAGER_ID                                                                                                                                                               
------------------------------ ----------                                                                                                                                                               
Administration                        200                                                                                                                                                               
Marketing                             201                                                                                                                                                               
Shiping                               124                                                                                                                                                               
IT                                    103                                                                                                                                                               
Sales                                 149                                                                                                                                                               
Executive                             100                                                                                                                                                               
Accounting                            205                                                                                                                                                               
Contracting                                                                                                                                                                                             

8 rows selected.

SQL> 
SQL> 
SQL> REM WHEN WE DISPLAY SELECTED COLUMNS IT IS CALLED PROJECTION.
SQL> 
SQL> SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEES;

FIRST_NAME      LAST_NAME                                                                                                                                                                               
--------------- ---------------                                                                                                                                                                         
Steven          King                                                                                                                                                                                    
Neena           Kochhar                                                                                                                                                                                 
Lex             De Haan                                                                                                                                                                                 
Alexander       Hunold                                                                                                                                                                                  
Bruce           Ernst                                                                                                                                                                                   
Diana           Lorentz                                                                                                                                                                                 
Kevin           Mourgos                                                                                                                                                                                 
Trenna          Rajs                                                                                                                                                                                    
Curtis          Davies                                                                                                                                                                                  
Randall         Matos                                                                                                                                                                                   
Peter           Vargas                                                                                                                                                                                  
Eleni           Zlotkey                                                                                                                                                                                 
Ellen           Abel                                                                                                                                                                                    
Jonathon        Taylor                                                                                                                                                                                  
Kimerely        Grant                                                                                                                                                                                   
Jennifer        Whalen                                                                                                                                                                                  
Michael         Hartstein                                                                                                                                                                               
Pat             Fay                                                                                                                                                                                     
Shelley         Higgins                                                                                                                                                                                 
William         Gietz                                                                                                                                                                                   

20 rows selected.

SQL> 
SQL> REM WHEN WE DO PROJECTION WITH MULTIPLE COLUMN THEN WE SEPRATE USING THE , (COMMA)
SQL> 
SQL> SELECT FIRST_NAME LAST_NAME FROM EMPLOYEES;

LAST_NAME                                                                                                                                                                                               
---------------                                                                                                                                                                                         
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
Eleni                                                                                                                                                                                                   
Ellen                                                                                                                                                                                                   
Jonathon                                                                                                                                                                                                
Kimerely                                                                                                                                                                                                
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

20 rows selected.

SQL> 
SQL> REM IF WE NOT DO THE ,(COMMA) SEPRATTOR THEN IT'S ACTS AS A COLUMN ALIAS
SQL> 
SQL> REM WE WILL DISCUSS ABOUT THE WHAT IS THE ALIAS
SQL> 
SQL> 
SQL> SELECT LAST_NAME FIRST_NAME FROM EMPLOYEES;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
King                                                                                                                                                                                                    
Kochhar                                                                                                                                                                                                 
De Haan                                                                                                                                                                                                 
Hunold                                                                                                                                                                                                  
Ernst                                                                                                                                                                                                   
Lorentz                                                                                                                                                                                                 
Mourgos                                                                                                                                                                                                 
Rajs                                                                                                                                                                                                    
Davies                                                                                                                                                                                                  
Matos                                                                                                                                                                                                   
Vargas                                                                                                                                                                                                  
Zlotkey                                                                                                                                                                                                 
Abel                                                                                                                                                                                                    
Taylor                                                                                                                                                                                                  
Grant                                                                                                                                                                                                   
Whalen                                                                                                                                                                                                  
Hartstein                                                                                                                                                                                               
Fay                                                                                                                                                                                                     
Higgins                                                                                                                                                                                                 
Gietz                                                                                                                                                                                                   

20 rows selected.

SQL> 
SQL> 
SQL> 
SQL> REM NOW WE DISCUSS ABOUT THE ARITHMATIC OPERATOR : / * + -
> 
SQL> REM / DIVISION
SQL> 
SQL> REM * MULTIPLICATION
SQL> 
SQL> REM + ADDITION
SQL> 
SQL> REM - SUBTRACTION
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

SQL> 
SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 FROM EMPLOYEES;

FIRST_NAME          SALARY SALARY+1500                                                                                                                                                                  
--------------- ---------- -----------                                                                                                                                                                  
Steven               24000       25500                                                                                                                                                                  
Neena                17000       18500                                                                                                                                                                  
Lex                  17000       18500                                                                                                                                                                  
Alexander             9000       10500                                                                                                                                                                  
Bruce                 6000        7500                                                                                                                                                                  
Diana                 4200        5700                                                                                                                                                                  
Kevin                 5800        7300                                                                                                                                                                  
Trenna                3500        5000                                                                                                                                                                  
Curtis                3100        4600                                                                                                                                                                  
Randall               2600        4100                                                                                                                                                                  
Peter                 2500        4000                                                                                                                                                                  
Eleni                10500       12000                                                                                                                                                                  
Ellen                11000       12500                                                                                                                                                                  
Jonathon              8600       10100                                                                                                                                                                  
Kimerely              7000        8500                                                                                                                                                                  
Jennifer              4400        5900                                                                                                                                                                  
Michael              13000       14500                                                                                                                                                                  
Pat                   6000        7500                                                                                                                                                                  
Shelley              12000       13500                                                                                                                                                                  
William               8300        9800                                                                                                                                                                  

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY,SALARY-1500 FROM EMPLOYEES;

FIRST_NAME          SALARY SALARY-1500                                                                                                                                                                  
--------------- ---------- -----------                                                                                                                                                                  
Steven               24000       22500                                                                                                                                                                  
Neena                17000       15500                                                                                                                                                                  
Lex                  17000       15500                                                                                                                                                                  
Alexander             9000        7500                                                                                                                                                                  
Bruce                 6000        4500                                                                                                                                                                  
Diana                 4200        2700                                                                                                                                                                  
Kevin                 5800        4300                                                                                                                                                                  
Trenna                3500        2000                                                                                                                                                                  
Curtis                3100        1600                                                                                                                                                                  
Randall               2600        1100                                                                                                                                                                  
Peter                 2500        1000                                                                                                                                                                  
Eleni                10500        9000                                                                                                                                                                  
Ellen                11000        9500                                                                                                                                                                  
Jonathon              8600        7100                                                                                                                                                                  
Kimerely              7000        5500                                                                                                                                                                  
Jennifer              4400        2900                                                                                                                                                                  
Michael              13000       11500                                                                                                                                                                  
Pat                   6000        4500                                                                                                                                                                  
Shelley              12000       10500                                                                                                                                                                  
William               8300        6800                                                                                                                                                                  

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY,SALARY*12 FROM EMPLOYEES;

FIRST_NAME          SALARY  SALARY*12                                                                                                                                                                   
--------------- ---------- ----------                                                                                                                                                                   
Steven               24000     288000                                                                                                                                                                   
Neena                17000     204000                                                                                                                                                                   
Lex                  17000     204000                                                                                                                                                                   
Alexander             9000     108000                                                                                                                                                                   
Bruce                 6000      72000                                                                                                                                                                   
Diana                 4200      50400                                                                                                                                                                   
Kevin                 5800      69600                                                                                                                                                                   
Trenna                3500      42000                                                                                                                                                                   
Curtis                3100      37200                                                                                                                                                                   
Randall               2600      31200                                                                                                                                                                   
Peter                 2500      30000                                                                                                                                                                   
Eleni                10500     126000                                                                                                                                                                   
Ellen                11000     132000                                                                                                                                                                   
Jonathon              8600     103200                                                                                                                                                                   
Kimerely              7000      84000                                                                                                                                                                   
Jennifer              4400      52800                                                                                                                                                                   
Michael              13000     156000                                                                                                                                                                   
Pat                   6000      72000                                                                                                                                                                   
Shelley              12000     144000                                                                                                                                                                   
William               8300      99600                                                                                                                                                                   

20 rows selected.

SQL> 
SQL> 
SQL> REM 1 MONTH: 28 OR 29 OR 30 OR 31 DAYS
SQL> 
SQL> SELECT FIRST_NAME,SALARY,SALARY/30 FROM EMPLOYEES;

FIRST_NAME          SALARY  SALARY/30                                                                                                                                                                   
--------------- ---------- ----------                                                                                                                                                                   
Steven               24000        800                                                                                                                                                                   
Neena                17000 566.666667                                                                                                                                                                   
Lex                  17000 566.666667                                                                                                                                                                   
Alexander             9000        300                                                                                                                                                                   
Bruce                 6000        200                                                                                                                                                                   
Diana                 4200        140                                                                                                                                                                   
Kevin                 5800 193.333333                                                                                                                                                                   
Trenna                3500 116.666667                                                                                                                                                                   
Curtis                3100 103.333333                                                                                                                                                                   
Randall               2600 86.6666667                                                                                                                                                                   
Peter                 2500 83.3333333                                                                                                                                                                   
Eleni                10500        350                                                                                                                                                                   
Ellen                11000 366.666667                                                                                                                                                                   
Jonathon              8600 286.666667                                                                                                                                                                   
Kimerely              7000 233.333333                                                                                                                                                                   
Jennifer              4400 146.666667                                                                                                                                                                   
Michael              13000 433.333333                                                                                                                                                                   
Pat                   6000        200                                                                                                                                                                   
Shelley              12000        400                                                                                                                                                                   
William               8300 276.666667                                                                                                                                                                   

20 rows selected.

SQL> 
SQL> REM NOW HERE WE SEE THE COLUMN ALIAS
SQL> 
SQL> REM WHAT THE REQUIREMENT OF THE ALIAS
SQL> 
SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 INCREMENTEDSALARY FROM EMPLOYEES;

FIRST_NAME          SALARY INCREMENTEDSALARY                                                                                                                                                            
--------------- ---------- -----------------                                                                                                                                                            
Steven               24000             25500                                                                                                                                                            
Neena                17000             18500                                                                                                                                                            
Lex                  17000             18500                                                                                                                                                            
Alexander             9000             10500                                                                                                                                                            
Bruce                 6000              7500                                                                                                                                                            
Diana                 4200              5700                                                                                                                                                            
Kevin                 5800              7300                                                                                                                                                            
Trenna                3500              5000                                                                                                                                                            
Curtis                3100              4600                                                                                                                                                            
Randall               2600              4100                                                                                                                                                            
Peter                 2500              4000                                                                                                                                                            
Eleni                10500             12000                                                                                                                                                            
Ellen                11000             12500                                                                                                                                                            
Jonathon              8600             10100                                                                                                                                                            
Kimerely              7000              8500                                                                                                                                                            
Jennifer              4400              5900                                                                                                                                                            
Michael              13000             14500                                                                                                                                                            
Pat                   6000              7500                                                                                                                                                            
Shelley              12000             13500                                                                                                                                                            
William               8300              9800                                                                                                                                                            

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 INCREMENTED SALARY FROM EMPLOYEES;
SELECT FIRST_NAME,SALARY,SALARY+1500 INCREMENTED SALARY FROM EMPLOYEES
                                                 *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 "INCREMENTED SALARY" FROM EMPLOYEES;

FIRST_NAME          SALARY INCREMENTED SALARY                                                                                                                                                           
--------------- ---------- ------------------                                                                                                                                                           
Steven               24000              25500                                                                                                                                                           
Neena                17000              18500                                                                                                                                                           
Lex                  17000              18500                                                                                                                                                           
Alexander             9000              10500                                                                                                                                                           
Bruce                 6000               7500                                                                                                                                                           
Diana                 4200               5700                                                                                                                                                           
Kevin                 5800               7300                                                                                                                                                           
Trenna                3500               5000                                                                                                                                                           
Curtis                3100               4600                                                                                                                                                           
Randall               2600               4100                                                                                                                                                           
Peter                 2500               4000                                                                                                                                                           
Eleni                10500              12000                                                                                                                                                           
Ellen                11000              12500                                                                                                                                                           
Jonathon              8600              10100                                                                                                                                                           
Kimerely              7000               8500                                                                                                                                                           
Jennifer              4400               5900                                                                                                                                                           
Michael              13000              14500                                                                                                                                                           
Pat                   6000               7500                                                                                                                                                           
Shelley              12000              13500                                                                                                                                                           
William               8300               9800                                                                                                                                                           

20 rows selected.

SQL> 
SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 'INCREMENTED SALARY' FROM EMPLOYEES;
SELECT FIRST_NAME,SALARY,SALARY+1500 'INCREMENTED SALARY' FROM EMPLOYEES
                                     *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 IncrementedSalary FROM EMPLOYEES;

FIRST_NAME          SALARY INCREMENTEDSALARY                                                                                                                                                            
--------------- ---------- -----------------                                                                                                                                                            
Steven               24000             25500                                                                                                                                                            
Neena                17000             18500                                                                                                                                                            
Lex                  17000             18500                                                                                                                                                            
Alexander             9000             10500                                                                                                                                                            
Bruce                 6000              7500                                                                                                                                                            
Diana                 4200              5700                                                                                                                                                            
Kevin                 5800              7300                                                                                                                                                            
Trenna                3500              5000                                                                                                                                                            
Curtis                3100              4600                                                                                                                                                            
Randall               2600              4100                                                                                                                                                            
Peter                 2500              4000                                                                                                                                                            
Eleni                10500             12000                                                                                                                                                            
Ellen                11000             12500                                                                                                                                                            
Jonathon              8600             10100                                                                                                                                                            
Kimerely              7000              8500                                                                                                                                                            
Jennifer              4400              5900                                                                                                                                                            
Michael              13000             14500                                                                                                                                                            
Pat                   6000              7500                                                                                                                                                            
Shelley              12000             13500                                                                                                                                                            
William               8300              9800                                                                                                                                                            

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 "IncrementedSalary" FROM EMPLOYEES;

FIRST_NAME          SALARY IncrementedSalary                                                                                                                                                            
--------------- ---------- -----------------                                                                                                                                                            
Steven               24000             25500                                                                                                                                                            
Neena                17000             18500                                                                                                                                                            
Lex                  17000             18500                                                                                                                                                            
Alexander             9000             10500                                                                                                                                                            
Bruce                 6000              7500                                                                                                                                                            
Diana                 4200              5700                                                                                                                                                            
Kevin                 5800              7300                                                                                                                                                            
Trenna                3500              5000                                                                                                                                                            
Curtis                3100              4600                                                                                                                                                            
Randall               2600              4100                                                                                                                                                            
Peter                 2500              4000                                                                                                                                                            
Eleni                10500             12000                                                                                                                                                            
Ellen                11000             12500                                                                                                                                                            
Jonathon              8600             10100                                                                                                                                                            
Kimerely              7000              8500                                                                                                                                                            
Jennifer              4400              5900                                                                                                                                                            
Michael              13000             14500                                                                                                                                                            
Pat                   6000              7500                                                                                                                                                            
Shelley              12000             13500                                                                                                                                                            
William               8300              9800                                                                                                                                                            

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 Incremented_#Salary FROM EMPLOYEES;

FIRST_NAME          SALARY INCREMENTED_#SALARY                                                                                                                                                          
--------------- ---------- -------------------                                                                                                                                                          
Steven               24000               25500                                                                                                                                                          
Neena                17000               18500                                                                                                                                                          
Lex                  17000               18500                                                                                                                                                          
Alexander             9000               10500                                                                                                                                                          
Bruce                 6000                7500                                                                                                                                                          
Diana                 4200                5700                                                                                                                                                          
Kevin                 5800                7300                                                                                                                                                          
Trenna                3500                5000                                                                                                                                                          
Curtis                3100                4600                                                                                                                                                          
Randall               2600                4100                                                                                                                                                          
Peter                 2500                4000                                                                                                                                                          
Eleni                10500               12000                                                                                                                                                          
Ellen                11000               12500                                                                                                                                                          
Jonathon              8600               10100                                                                                                                                                          
Kimerely              7000                8500                                                                                                                                                          
Jennifer              4400                5900                                                                                                                                                          
Michael              13000               14500                                                                                                                                                          
Pat                   6000                7500                                                                                                                                                          
Shelley              12000               13500                                                                                                                                                          
William               8300                9800                                                                                                                                                          

20 rows selected.

SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 Incremented_#^Salary FROM EMPLOYEES;
SELECT FIRST_NAME,SALARY,SALARY+1500 Incremented_#^Salary FROM EMPLOYEES
                                                  *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 "Incremented_#^Salary" FROM EMPLOYEES;

FIRST_NAME          SALARY Incremented_#^Salary                                                                                                                                                         
--------------- ---------- --------------------                                                                                                                                                         
Steven               24000                25500                                                                                                                                                         
Neena                17000                18500                                                                                                                                                         
Lex                  17000                18500                                                                                                                                                         
Alexander             9000                10500                                                                                                                                                         
Bruce                 6000                 7500                                                                                                                                                         
Diana                 4200                 5700                                                                                                                                                         
Kevin                 5800                 7300                                                                                                                                                         
Trenna                3500                 5000                                                                                                                                                         
Curtis                3100                 4600                                                                                                                                                         
Randall               2600                 4100                                                                                                                                                         
Peter                 2500                 4000                                                                                                                                                         
Eleni                10500                12000                                                                                                                                                         
Ellen                11000                12500                                                                                                                                                         
Jonathon              8600                10100                                                                                                                                                         
Kimerely              7000                 8500                                                                                                                                                         
Jennifer              4400                 5900                                                                                                                                                         
Michael              13000                14500                                                                                                                                                         
Pat                   6000                 7500                                                                                                                                                         
Shelley              12000                13500                                                                                                                                                         
William               8300                 9800                                                                                                                                                         

20 rows selected.

SQL> 
SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 select FROM EMPLOYEES;
SELECT FIRST_NAME,SALARY,SALARY+1500 select FROM EMPLOYEES
                                     *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> REM HERE WE GOT THE ERROR BECAUSE OF THE SELECT IS KEYWORD OF SQL
SQL> 
SQL> REM SQL KEYWORD YOU CAN NOT DIRECTLY USE AS A COLUMN NAME
SQL> 
SQL> SELECT FIRST_NAME,SALARY,SALARY+1500 "select" FROM EMPLOYEES;

FIRST_NAME          SALARY     select                                                                                                                                                                   
--------------- ---------- ----------                                                                                                                                                                   
Steven               24000      25500                                                                                                                                                                   
Neena                17000      18500                                                                                                                                                                   
Lex                  17000      18500                                                                                                                                                                   
Alexander             9000      10500                                                                                                                                                                   
Bruce                 6000       7500                                                                                                                                                                   
Diana                 4200       5700                                                                                                                                                                   
Kevin                 5800       7300                                                                                                                                                                   
Trenna                3500       5000                                                                                                                                                                   
Curtis                3100       4600                                                                                                                                                                   
Randall               2600       4100                                                                                                                                                                   
Peter                 2500       4000                                                                                                                                                                   
Eleni                10500      12000                                                                                                                                                                   
Ellen                11000      12500                                                                                                                                                                   
Jonathon              8600      10100                                                                                                                                                                   
Kimerely              7000       8500                                                                                                                                                                   
Jennifer              4400       5900                                                                                                                                                                   
Michael              13000      14500                                                                                                                                                                   
Pat                   6000       7500                                                                                                                                                                   
Shelley              12000      13500                                                                                                                                                                   
William               8300       9800                                                                                                                                                                   

20 rows selected.

SQL> 
SQL> REM IF U WANT TO ADD A SQL KEYWORD AS A COLUMN NAME THEN U NEED TO WRITE IN THE DOUBLE QUOTE " "
SQL> 
SQL> 
SQL> 
SQL> REM SOME THEORY ABOUT THE COLUMN ALIAS WHEN YOU NEED TO USE THE COLUMN ALIAS
SQL> 
SQL> REM WE NEED TO DELIMIT COLUMN ALIAS WITH DOUBLE QUOTES IN BELOW 4 SITUATIONS:
SQL> 
SQL> REM 1 WHEN WE WANT TO USE MULTIPLE WORDS AS COLUMN ALIAS
SQL> 
SQL> REM 2 WHEN WE WANT TO USE DISPLAY CASE SENSITIVE COLUMN ALIAS (MIXED CASE)
SQL> 
SQL> REM 3 WHEN WE WANT TO USE SPECIAL CHARACTER IN COLUMN ALIAS OTHER THEN _ # $
SQL> 
SQL> REM 4 WHEN WE WANT TO USE SQL/ORACLE KEY/RESERVE WORD AS COLUMN ALIAS
SQL> 
SQL> 
SQL> 
SQL> REM NOW WE DISCUSS ABOUT THE POWER() FUNCTION
SQL> 
SQL> SELECT POWER(3,2) FROM DUAL;

POWER(3,2)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         9                                                                                                                                                                                              

SQL> 
SQL> REM DUAL IS A DUMMY TABLE
SQL> 
SQL> REM DUAL IA SYSTEM GENERATED TABLE
SQL> 
SQL> REM IT HAS SINGLE COLUMN AND SINGLE ROW
SQL> 
SQL> SELECT * FROM DUAL;

D                                                                                                                                                                                                       
-                                                                                                                                                                                                       
X                                                                                                                                                                                                       

SQL> 
SQL> REM DUAL IS GENERALLY USED TO DISPLAY THOSE VALUES WHICH ARE NOT STORED IN ANY TABLE
SQL> 
SQL> SELECT POWER(5,2) FROM DUAL;

POWER(5,2)                                                                                                                                                                                              
----------                                                                                                                                                                                              
        25                                                                                                                                                                                              

SQL> SELECT POWER(5,3) FROM DUAL;

POWER(5,3)                                                                                                                                                                                              
----------                                                                                                                                                                                              
       125                                                                                                                                                                                              

SQL> SELECT POWER(5,4) FROM DUAL;

POWER(5,4)                                                                                                                                                                                              
----------                                                                                                                                                                                              
       625                                                                                                                                                                                              

SQL> SELECT POWER(5,5) FROM DUAL;

POWER(5,5)                                                                                                                                                                                              
----------                                                                                                                                                                                              
      3125                                                                                                                                                                                              

SQL> SELECT POWER(5,6) FROM DUAL;

POWER(5,6)                                                                                                                                                                                              
----------                                                                                                                                                                                              
     15625                                                                                                                                                                                              

SQL> SELECT POWER(25,1/2) FROM DUAL;

POWER(25,1/2)                                                                                                                                                                                           
-------------                                                                                                                                                                                           
            5                                                                                                                                                                                           

SQL> SELECT POWER(125,1/3) FROM DUAL;

POWER(125,1/3)                                                                                                                                                                                          
--------------                                                                                                                                                                                          
             5                                                                                                                                                                                          

SQL> SELECT POWER(125,1/7) FROM DUAL;

POWER(125,1/7)                                                                                                                                                                                          
--------------                                                                                                                                                                                          
    1.99323532                                                                                                                                                                                          

SQL> 
SQL> 
SQL> 
SQL> REM NOW WE DISCUSS ABOUT THE CONCATINATION OPERATOR
SQL> 
SQL> REM CONCATENATION OPERATOR: ||
SQL> 
SQL> REM TO CLUB/JOIN TWO ITEMS
SQL> 
SQL> SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEES;

FIRST_NAME      LAST_NAME                                                                                                                                                                               
--------------- ---------------                                                                                                                                                                         
Steven          King                                                                                                                                                                                    
Neena           Kochhar                                                                                                                                                                                 
Lex             De Haan                                                                                                                                                                                 
Alexander       Hunold                                                                                                                                                                                  
Bruce           Ernst                                                                                                                                                                                   
Diana           Lorentz                                                                                                                                                                                 
Kevin           Mourgos                                                                                                                                                                                 
Trenna          Rajs                                                                                                                                                                                    
Curtis          Davies                                                                                                                                                                                  
Randall         Matos                                                                                                                                                                                   
Peter           Vargas                                                                                                                                                                                  
Eleni           Zlotkey                                                                                                                                                                                 
Ellen           Abel                                                                                                                                                                                    
Jonathon        Taylor                                                                                                                                                                                  
Kimerely        Grant                                                                                                                                                                                   
Jennifer        Whalen                                                                                                                                                                                  
Michael         Hartstein                                                                                                                                                                               
Pat             Fay                                                                                                                                                                                     
Shelley         Higgins                                                                                                                                                                                 
William         Gietz                                                                                                                                                                                   

20 rows selected.

SQL> SELECT FIRST_NAME || LAST_NAME FROM EMPLOYEES;

FIRST_NAME||LAST_NAME                                                                                                                                                                                   
------------------------------                                                                                                                                                                          
StevenKing                                                                                                                                                                                              
NeenaKochhar                                                                                                                                                                                            
LexDe Haan                                                                                                                                                                                              
AlexanderHunold                                                                                                                                                                                         
BruceErnst                                                                                                                                                                                              
DianaLorentz                                                                                                                                                                                            
KevinMourgos                                                                                                                                                                                            
TrennaRajs                                                                                                                                                                                              
CurtisDavies                                                                                                                                                                                            
RandallMatos                                                                                                                                                                                            
PeterVargas                                                                                                                                                                                             
EleniZlotkey                                                                                                                                                                                            
EllenAbel                                                                                                                                                                                               
JonathonTaylor                                                                                                                                                                                          
KimerelyGrant                                                                                                                                                                                           
JenniferWhalen                                                                                                                                                                                          
MichaelHartstein                                                                                                                                                                                        
PatFay                                                                                                                                                                                                  
ShelleyHiggins                                                                                                                                                                                          
WilliamGietz                                                                                                                                                                                            

20 rows selected.

SQL> 
SQL> SHOW ALL
appinfo is OFF and set to "SQL*Plus"
arraysize 15
autocommit OFF
autoprint OFF
autorecovery OFF
autotrace OFF
blockterminator "." (hex 2e)
btitle OFF and is the first few characters of the next SELECT statement
cmdsep OFF
colsep " "
compatibility version NATIVE
concat "." (hex 2e)
copycommit 0
COPYTYPECHECK is ON
define "&" (hex 26)
describe DEPTH 1 LINENUM OFF INDENT ON
echo OFF
editfile "afiedt.buf"
embedded OFF
escape OFF
escchar OFF
exitcommit ON
FEEDBACK ON for 6 or more rows
flagger OFF
flush ON
heading ON
headsep "|" (hex 7c)
instance "local"
linesize 200
lno 26
loboffset 1
logsource ""
long 80
longchunksize 80
markup HTML OFF HEAD "<style type='text/css'> body {font:10pt Arial,Helvetica,sans-serif; color:black; background:White;} p {font:10pt Arial,Helvetica,sans-serif; color:black; background:White;} table,tr,td {font:10pt Arial,Helvetica,sans-serif; color:Black; background:#f7f7e7; padding:0px 0px 0px 0px; margin:0px 0px 0px 0px;} th {font:bold 10pt Arial,Helvetica,sans-serif; color:#336699; background:#cccc99; padding:0px 0px 0px 0px;} h1 {font:16pt Arial,Helvetica,Geneva,sans-serif; color:#336699; background-color:White; border-bottom:1px solid #cccc99; margin-top:0pt; margin-bottom:0pt; padding:0px 0px 0px 0px;-
} h2 {font:bold 10pt Arial,Helvetica,Geneva,sans-serif; color:#336699; background-color:White; margin-top:4pt; margin-bottom:0pt;} a {font:9pt Arial,Helvetica,sans-serif; color:#663300; background:#ffffff; margin-top:0pt; margin-bottom:0pt; vertical-align:top;}</style><title>SQL*Plus Report</title>" BODY "" TABLE "border='1' width='90%' align='center' summary='Script output'" SPOOL OFF ENTMAP ON PREFORMAT OFF
newpage 1
null ""
numformat ""
numwidth 10
pagesize 24
PAUSE is OFF
pno 1
recsep WRAP
recsepchar " " (hex 20)
release 1102000200
repfooter OFF and is NULL
repheader OFF and is NULL
securedcol is OFF
serveroutput OFF
shiftinout INVISIBLE
showmode OFF
spool ON
sqlblanklines OFF
sqlcase MIXED
sqlcode 0
sqlcontinue "> "
sqlnumber ON
sqlpluscompatibility 11.2.0
sqlprefix "#" (hex 23)
sqlprompt "SQL> "
sqlterminator ";" (hex 3b)
suffix "sql"
tab ON
termout ON
timing OFF
trimout ON
trimspool OFF
ttitle OFF and is the first few characters of the next SELECT statement
underline "-" (hex 2d)
USER is "SYSTEM"
verify ON
wrap : lines will be wrapped
xmloptimizationcheck OFF
errorlogging is OFF
SQL> 
SQL> 
SQL> SET COLSEP "|"
SQL> 
SQL> SELECT * FROM REGIONS;

 REGION_ID|REGION_NAME                                                                                                                                                                                  
----------|-------------------------                                                                                                                                                                    
         1|Europe                                                                                                                                                                                       
         2|Americas                                                                                                                                                                                     
         3|Asia                                                                                                                                                                                         
         4|Middle East and Africa                                                                                                                                                                       

SQL> REM SET COLSEP "|" USING THIS COMMAND WE CAN CHANGE THE TABLE SEPERATOR
SQL> 
SQL> SELECT FIRST_NAME | | LAST_NAME FROM EMPLOYEES;

FIRST_NAME||LAST_NAME                                                                                                                                                                                   
------------------------------                                                                                                                                                                          
StevenKing                                                                                                                                                                                              
NeenaKochhar                                                                                                                                                                                            
LexDe Haan                                                                                                                                                                                              
AlexanderHunold                                                                                                                                                                                         
BruceErnst                                                                                                                                                                                              
DianaLorentz                                                                                                                                                                                            
KevinMourgos                                                                                                                                                                                            
TrennaRajs                                                                                                                                                                                              
CurtisDavies                                                                                                                                                                                            
RandallMatos                                                                                                                                                                                            
PeterVargas                                                                                                                                                                                             
EleniZlotkey                                                                                                                                                                                            
EllenAbel                                                                                                                                                                                               
JonathonTaylor                                                                                                                                                                                          
KimerelyGrant                                                                                                                                                                                           
JenniferWhalen                                                                                                                                                                                          
MichaelHartstein                                                                                                                                                                                        
PatFay                                                                                                                                                                                                  
ShelleyHiggins                                                                                                                                                                                          
WilliamGietz                                                                                                                                                                                            

20 rows selected.

SQL> SET COLSEP " "
SQL> 
SQL> SELECT FIRST_NAME || ' '|| LAST_NAME FROM EMPLOYEES;

FIRST_NAME||''||LAST_NAME                                                                                                                                                                               
-------------------------------                                                                                                                                                                         
Steven King                                                                                                                                                                                             
Neena Kochhar                                                                                                                                                                                           
Lex De Haan                                                                                                                                                                                             
Alexander Hunold                                                                                                                                                                                        
Bruce Ernst                                                                                                                                                                                             
Diana Lorentz                                                                                                                                                                                           
Kevin Mourgos                                                                                                                                                                                           
Trenna Rajs                                                                                                                                                                                             
Curtis Davies                                                                                                                                                                                           
Randall Matos                                                                                                                                                                                           
Peter Vargas                                                                                                                                                                                            
Eleni Zlotkey                                                                                                                                                                                           
Ellen Abel                                                                                                                                                                                              
Jonathon Taylor                                                                                                                                                                                         
Kimerely Grant                                                                                                                                                                                          
Jennifer Whalen                                                                                                                                                                                         
Michael Hartstein                                                                                                                                                                                       
Pat Fay                                                                                                                                                                                                 
Shelley Higgins                                                                                                                                                                                         
William Gietz                                                                                                                                                                                           

20 rows selected.

SQL> SELECT FIRST_NAME || ',' || LAST_NAME FROM EMPLOYEES;

FIRST_NAME||','||LAST_NAME                                                                                                                                                                              
-------------------------------                                                                                                                                                                         
Steven,King                                                                                                                                                                                             
Neena,Kochhar                                                                                                                                                                                           
Lex,De Haan                                                                                                                                                                                             
Alexander,Hunold                                                                                                                                                                                        
Bruce,Ernst                                                                                                                                                                                             
Diana,Lorentz                                                                                                                                                                                           
Kevin,Mourgos                                                                                                                                                                                           
Trenna,Rajs                                                                                                                                                                                             
Curtis,Davies                                                                                                                                                                                           
Randall,Matos                                                                                                                                                                                           
Peter,Vargas                                                                                                                                                                                            
Eleni,Zlotkey                                                                                                                                                                                           
Ellen,Abel                                                                                                                                                                                              
Jonathon,Taylor                                                                                                                                                                                         
Kimerely,Grant                                                                                                                                                                                          
Jennifer,Whalen                                                                                                                                                                                         
Michael,Hartstein                                                                                                                                                                                       
Pat,Fay                                                                                                                                                                                                 
Shelley,Higgins                                                                                                                                                                                         
William,Gietz                                                                                                                                                                                           

20 rows selected.

SQL> SELECT FIRST_NAME || ' - ' || LAST_NAME FROM EMPLOYEES;

FIRST_NAME||'-'||LAST_NAME                                                                                                                                                                              
---------------------------------                                                                                                                                                                       
Steven - King                                                                                                                                                                                           
Neena - Kochhar                                                                                                                                                                                         
Lex - De Haan                                                                                                                                                                                           
Alexander - Hunold                                                                                                                                                                                      
Bruce - Ernst                                                                                                                                                                                           
Diana - Lorentz                                                                                                                                                                                         
Kevin - Mourgos                                                                                                                                                                                         
Trenna - Rajs                                                                                                                                                                                           
Curtis - Davies                                                                                                                                                                                         
Randall - Matos                                                                                                                                                                                         
Peter - Vargas                                                                                                                                                                                          
Eleni - Zlotkey                                                                                                                                                                                         
Ellen - Abel                                                                                                                                                                                            
Jonathon - Taylor                                                                                                                                                                                       
Kimerely - Grant                                                                                                                                                                                        
Jennifer - Whalen                                                                                                                                                                                       
Michael - Hartstein                                                                                                                                                                                     
Pat - Fay                                                                                                                                                                                               
Shelley - Higgins                                                                                                                                                                                       
William - Gietz                                                                                                                                                                                         

20 rows selected.

SQL> 
SQL> 
SQL> SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES;

FIRST_NAME      JOB_ID                                                                                                                                                                                  
--------------- ----------                                                                                                                                                                              
Steven          AD_PRES                                                                                                                                                                                 
Neena           AD_VP                                                                                                                                                                                   
Lex             AD_VP                                                                                                                                                                                   
Alexander       IT_PROG                                                                                                                                                                                 
Bruce           IT_PROG                                                                                                                                                                                 
Diana           IT_PROG                                                                                                                                                                                 
Kevin           ST_MAN                                                                                                                                                                                  
Trenna          ST_CLERK                                                                                                                                                                                
Curtis          ST_CLERK                                                                                                                                                                                
Randall         ST_CLERK                                                                                                                                                                                
Peter           ST_CLERK                                                                                                                                                                                
Eleni           SA_MAN                                                                                                                                                                                  
Ellen           SA_REP                                                                                                                                                                                  
Jonathon        SA_REP                                                                                                                                                                                  
Kimerely        SA_REP                                                                                                                                                                                  
Jennifer        AD_ASST                                                                                                                                                                                 
Michael         MK_MAN                                                                                                                                                                                  
Pat             MK_REP                                                                                                                                                                                  
Shelley         AC_MGR                                                                                                                                                                                  
William         AC_ACCOUNT                                                                                                                                                                              

20 rows selected.

SQL> 
SQL> REM Steven works as AD_PRES.
SQL> 
SQL> REM William works as AC_ACCOUNT.
SQL> 
SQL> REM WRITE A QUERY FOR THE ABOVE OUTPUT
SQL> 
SQL> SELECT FIRST_NAME ||' works as '||JOB_ID|;
SELECT FIRST_NAME ||' works as '||JOB_ID|
                                        *
ERROR at line 1:
ORA-00996: the concatenate operator is ||, not | 


SQL> SELECT FIRST_NAME ||' works as '||JOB_ID ||'.' FROM EMPLOYEES;;
SELECT FIRST_NAME ||' works as '||JOB_ID ||'.' FROM EMPLOYEES;
                                                             *
ERROR at line 1:
ORA-00911: invalid character 


SQL> SELECT FIRST_NAME ||' works as '||JOB_ID ||'.' FROM EMPLOYEES;

FIRST_NAME||'WORKSAS'||JOB_ID||'.'                                                                                                                                                                      
------------------------------------                                                                                                                                                                    
Steven works as AD_PRES.                                                                                                                                                                                
Neena works as AD_VP.                                                                                                                                                                                   
Lex works as AD_VP.                                                                                                                                                                                     
Alexander works as IT_PROG.                                                                                                                                                                             
Bruce works as IT_PROG.                                                                                                                                                                                 
Diana works as IT_PROG.                                                                                                                                                                                 
Kevin works as ST_MAN.                                                                                                                                                                                  
Trenna works as ST_CLERK.                                                                                                                                                                               
Curtis works as ST_CLERK.                                                                                                                                                                               
Randall works as ST_CLERK.                                                                                                                                                                              
Peter works as ST_CLERK.                                                                                                                                                                                
Eleni works as SA_MAN.                                                                                                                                                                                  
Ellen works as SA_REP.                                                                                                                                                                                  
Jonathon works as SA_REP.                                                                                                                                                                               
Kimerely works as SA_REP.                                                                                                                                                                               
Jennifer works as AD_ASST.                                                                                                                                                                              
Michael works as MK_MAN.                                                                                                                                                                                
Pat works as MK_REP.                                                                                                                                                                                    
Shelley works as AC_MGR.                                                                                                                                                                                
William works as AC_ACCOUNT.                                                                                                                                                                            

20 rows selected.

SQL> SELECT FIRST_NAME ||' 	works as '||JOB_ID ||'.' FROM EMPLOYEES;

FIRST_NAME||'WORKSAS'||JOB_ID||'.'                                                                                                                                                                      
-------------------------------------                                                                                                                                                                   
Steven 	works as AD_PRES.                                                                                                                                                                               
Neena 	works as AD_VP.                                                                                                                                                                                  
Lex 	works as AD_VP.                                                                                                                                                                                    
Alexander 	works as IT_PROG.                                                                                                                                                                            
Bruce 	works as IT_PROG.                                                                                                                                                                                
Diana 	works as IT_PROG.                                                                                                                                                                                
Kevin 	works as ST_MAN.                                                                                                                                                                                 
Trenna 	works as ST_CLERK.                                                                                                                                                                              
Curtis 	works as ST_CLERK.                                                                                                                                                                              
Randall 	works as ST_CLERK.                                                                                                                                                                             
Peter 	works as ST_CLERK.                                                                                                                                                                               
Eleni 	works as SA_MAN.                                                                                                                                                                                 
Ellen 	works as SA_REP.                                                                                                                                                                                 
Jonathon 	works as SA_REP.                                                                                                                                                                              
Kimerely 	works as SA_REP.                                                                                                                                                                              
Jennifer 	works as AD_ASST.                                                                                                                                                                             
Michael 	works as MK_MAN.                                                                                                                                                                               
Pat 	works as MK_REP.                                                                                                                                                                                   
Shelley 	works as AC_MGR.                                                                                                                                                                               
William 	works as AC_ACCOUNT.                                                                                                                                                                           

20 rows selected.

SQL> SELECT FIRST_NAME ||' 	works as '||JOB_ID ||'.' FROM EMPLOYEES;

FIRST_NAME||'WORKSAS'||JOB_ID||'.'                                                                                                                                                                      
-------------------------------------                                                                                                                                                                   
Steven 	works as AD_PRES.                                                                                                                                                                               
Neena 	works as AD_VP.                                                                                                                                                                                  
Lex 	works as AD_VP.                                                                                                                                                                                    
Alexander 	works as IT_PROG.                                                                                                                                                                            
Bruce 	works as IT_PROG.                                                                                                                                                                                
Diana 	works as IT_PROG.                                                                                                                                                                                
Kevin 	works as ST_MAN.                                                                                                                                                                                 
Trenna 	works as ST_CLERK.                                                                                                                                                                              
Curtis 	works as ST_CLERK.                                                                                                                                                                              
Randall 	works as ST_CLERK.                                                                                                                                                                             
Peter 	works as ST_CLERK.                                                                                                                                                                               
Eleni 	works as SA_MAN.                                                                                                                                                                                 
Ellen 	works as SA_REP.                                                                                                                                                                                 
Jonathon 	works as SA_REP.                                                                                                                                                                              
Kimerely 	works as SA_REP.                                                                                                                                                                              
Jennifer 	works as AD_ASST.                                                                                                                                                                             
Michael 	works as MK_MAN.                                                                                                                                                                               
Pat 	works as MK_REP.                                                                                                                                                                                   
Shelley 	works as AC_MGR.                                                                                                                                                                               
William 	works as AC_ACCOUNT.                                                                                                                                                                           

20 rows selected.

SQL> SELECT FIRST_NAME ||'        works as '||JOB_ID ||'.' FROM EMPLOYEES;

FIRST_NAME||'WORKSAS'||JOB_ID||'.'                                                                                                                                                                      
-------------------------------------------                                                                                                                                                             
Steven        works as AD_PRES.                                                                                                                                                                         
Neena        works as AD_VP.                                                                                                                                                                            
Lex        works as AD_VP.                                                                                                                                                                              
Alexander        works as IT_PROG.                                                                                                                                                                      
Bruce        works as IT_PROG.                                                                                                                                                                          
Diana        works as IT_PROG.                                                                                                                                                                          
Kevin        works as ST_MAN.                                                                                                                                                                           
Trenna        works as ST_CLERK.                                                                                                                                                                        
Curtis        works as ST_CLERK.                                                                                                                                                                        
Randall        works as ST_CLERK.                                                                                                                                                                       
Peter        works as ST_CLERK.                                                                                                                                                                         
Eleni        works as SA_MAN.                                                                                                                                                                           
Ellen        works as SA_REP.                                                                                                                                                                           
Jonathon        works as SA_REP.                                                                                                                                                                        
Kimerely        works as SA_REP.                                                                                                                                                                        
Jennifer        works as AD_ASST.                                                                                                                                                                       
Michael        works as MK_MAN.                                                                                                                                                                         
Pat        works as MK_REP.                                                                                                                                                                             
Shelley        works as AC_MGR.                                                                                                                                                                         
William        works as AC_ACCOUNT.                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> 
SQL> SELECT SALARY || FIRST_NAME || HIRE_DATE FROM EMPLOYEES;

SALARY||FIRST_NAME||HIRE_DATE                                                                                                                                                                           
-------------------------------------------------------------------------                                                                                                                               
24000Steven17-JUL-87                                                                                                                                                                                    
17000Neena21-SEP-89                                                                                                                                                                                     
17000Lex13-JAN-93                                                                                                                                                                                       
9000Alexander03-JAN-90                                                                                                                                                                                  
6000Bruce21-MAY-91                                                                                                                                                                                      
4200Diana07-FEB-99                                                                                                                                                                                      
5800Kevin16-NOV-99                                                                                                                                                                                      
3500Trenna17-OCT-95                                                                                                                                                                                     
3100Curtis29-JAN-97                                                                                                                                                                                     
2600Randall15-MAR-98                                                                                                                                                                                    
2500Peter09-JUL-98                                                                                                                                                                                      
10500Eleni29-JAN-00                                                                                                                                                                                     
11000Ellen11-MAY-96                                                                                                                                                                                     
8600Jonathon24-MAR-98                                                                                                                                                                                   
7000Kimerely24-MAY-99                                                                                                                                                                                   
4400Jennifer17-SEP-87                                                                                                                                                                                   
13000Michael17-FEB-96                                                                                                                                                                                   
6000Pat17-AUG-97                                                                                                                                                                                        
12000Shelley07-JUN-94                                                                                                                                                                                   
8300William07-JUN-94                                                                                                                                                                                    

20 rows selected.

SQL> 
SQL> 
SQL> REM TODAY COVER TOPIC IS :
SQL> 
SQL> REM 1 BASIC SELECT STATEMENT
SQL> 
SQL> REM 2 * META CHARACTER
SQL> 
SQL> REM 3 PROJECTION
SQL> 
SQL> REM 4 ARITHMETIC OPERATIONS
SQL> 
SQL> REM 5 COLUMN ALIAS WITH DOUBLE QUOTE
SQL> 
SQL> REM 6 CONCATENATION OPERATOR  ||
SQL> 
SQL> REM 7 SQL IS CASE-INSENSITIVE LANGUAGE
SQL> 
SQL> REM 8 SQL IS FREE-FLOW LANGUAGE
SQL> 
SQL> SPOOL OFF
