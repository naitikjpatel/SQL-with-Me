SQL> 
SQL> 
SQL> REM TODAY WE DISCUSS ABOUT THE SPECIAL OPERATOR
SQL> 
SQL> REM SPECIAL OPERATOR : 1 IN 2 BETWEEN 3 LIKE 4 IS NULL
SQL> 
SQL> REM BETWEEN : TO CHECK VALUE WITHIN RANGE
SQL> 
SQL> REM DISPLAY THOSE WHO GETS SALARY IN THE RANGE OF 6000 AND 11000 ,6000 TO 11000 ,6000-11000
SQL> 
SQL> 
SQL> REM BETWEEN SYNTAX: COLUMN BETWEEN LOWERVALUE AND HIGHERVALUE
SQL> 
SQL> REM BETWEEN EXAMPLE : SALARY BETWEEN 6000 AND 11000
SQL> 
SQL> REM BETWEEN EXAMPLE : HIRE_DATE BETWEEN '01-JAN-91' AND '31-DEC-95'
SQL> 
SQL> REM BETWEEN EXAMPLE :FIRST_NAME BETWEEN 'J' AND 'P'
SQL> 
SQL> REM BETWEEN EXAMPLE :FIRST_NAME BETWEEN 'J0' AND 'PE'
SQL> 
SQL> REM BETWEEN /NOT BETWEEN
SQL> 
SQL> REM DISPLAY THOSE WHO GETS SALARY IN THE RANGE OF 6000 AND 11000,6000 TO 11000,6000-11000
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 6000 AND 11000;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

8 rows selected.

SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 6000 AND 11000 ORDER BY 8;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     

8 rows selected.

SQL> SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 6000 AND 11000 ORDER BY SALARY;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        202 Pat             Fay             PFAY       603.123.6666         17-AUG-97 MK_REP           6000                       201            20                                                     
        178 Kimerely        Grant           KGRANT     011.44.1644.429263   24-MAY-99 SA_REP           7000            .15        149                                                                   
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     
        176 Jonathon        Taylor          JTAYLOR    011.44.1644.429265   24-MAR-98 SA_REP           8600             .3        149            80                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        174 Ellen           Abel            EABEL      011.44.1644.429267   11-MAY-96 SA_REP          11000             .3        149            80                                                     

8 rows selected.

SQL> SELECT * FROM EMPLOYEES WHERE SALARY NOT BETWEEN 6000 AND 11000 ORDER BY SALARY;

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     
        143 Randall         Matos           RMATOS     650.121.2874         15-MAR-98 ST_CLERK         2600                       124            50                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     
        200 Jennifer        Whalen          JWHALEN    515.123.4444         17-SEP-87 AD_ASST          4400                       101            10                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        201 Michael         Hartstein       MHARTSTE   515.123.5555         17-FEB-96 MK_MAN          13000                       100            20                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     

12 rows selected.

SQL> REM ABOVE EXAMPLE FOR THE NOT BETWEEN
SQL> 
SQL> 
SQL> 
SQL> REM DATE COMPARISION:
SQL> 
SQL> REM DISPLAY THOSE WHO WERE HIRED BETWEEN YEAR 91 AND 95
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN 91 AND 95;
SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN 91 AND 95
                                        *
ERROR at line 1:
ORA-00932: inconsistent datatypes: expected DATE got NUMBER 


SQL> SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '91' AND '95';
SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '91' AND '95'
                                                *
ERROR at line 1:
ORA-01847: day of month must be between 1 and last day of month 


SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN 01-JAN-91 AND 31-DEC-95;
SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN 01-JAN-91 AND 31-DEC-95
                                                                 *
ERROR at line 1:
ORA-00904: "DEC": invalid identifier 


SQL> SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '01-JAN-91' AND '31-DEC-95';

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        104 Bruce           Ernst           BERNST     590.423.4568         21-MAY-91 IT_PROG          6000                       103            60                                                     
        141 Trenna          Rajs            TRAJS      650.121.8009         17-OCT-95 ST_CLERK         3500                       124            50                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE HIRE_DATE NOT BETWEEN '01-JAN-91' AND '31-DEC-95';

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        101 Neena           Kochhar         NKOCHHAR   515.123.4568         21-SEP-89 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        107 Diana           Lorentz         DLORENTZ   590.423.5567         07-FEB-99 IT_PROG          4200                       103            60                                                     
        124 Kevin           Mourgos         KMOURGOS   650.123.5234         16-NOV-99 ST_MAN           5800                       100            50                                                     
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

15 rows selected.

SQL> 
SQL> SELECT FIRST_NAME FROM EMPLOYEES ORDER BY 1
  2  ;

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
SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME BETWEEN 'J' AND 'P';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Neena                                                                                                                                                                                                   
Lex                                                                                                                                                                                                     
Kevin                                                                                                                                                                                                   
Jonathon                                                                                                                                                                                                
Kimerely                                                                                                                                                                                                
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 

7 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME BETWEEN 'J' AND 'P' ORDER BY 1;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Jennifer                                                                                                                                                                                                
Jonathon                                                                                                                                                                                                
Kevin                                                                                                                                                                                                   
Kimerely                                                                                                                                                                                                
Lex                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Neena                                                                                                                                                                                                   

7 rows selected.

SQL> 
SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME BETWEEN 'JO' AND 'PE' ORDER BY 1;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Jennifer                                                                                                                                                                                                
Jonathon                                                                                                                                                                                                
Kevin                                                                                                                                                                                                   
Kimerely                                                                                                                                                                                                
Lex                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Neena                                                                                                                                                                                                   

7 rows selected.

SQL> 
SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME BETWEEN 'JE' AND 'PE' ORDER BY 1;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Jennifer                                                                                                                                                                                                
Jonathon                                                                                                                                                                                                
Kevin                                                                                                                                                                                                   
Kimerely                                                                                                                                                                                                
Lex                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Neena                                                                                                                                                                                                   

7 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME BETWEEN 'JEO' AND 'PE' ORDER BY 1;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Jennifer                                                                                                                                                                                                
Jonathon                                                                                                                                                                                                
Kevin                                                                                                                                                                                                   
Kimerely                                                                                                                                                                                                
Lex                                                                                                                                                                                                     
Michael                                                                                                                                                                                                 
Neena                                                                                                                                                                                                   

7 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME BETWEEN 'JEO' AND 'LEX' ORDER BY 1;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Jennifer                                                                                                                                                                                                
Jonathon                                                                                                                                                                                                
Kevin                                                                                                                                                                                                   
Kimerely                                                                                                                                                                                                

SQL> 
SQL> 
SQL> REM LIKE  : IS USED FOR PATTERN MATCHING
SQL> 
SQL> REM FIRST_NAME STARTS WITH P
SQL> 
SQL> REM FIST_NAME ENDS WITH n
SQL> 
SQL> REM FIRST_NAME CONTAINS e
SQL> 
SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME NOT BETWEEN 'JO' AND 'PE' ORDER BY 1;

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Alexander                                                                                                                                                                                               
Bruce                                                                                                                                                                                                   
Curtis                                                                                                                                                                                                  
Diana                                                                                                                                                                                                   
Eleni                                                                                                                                                                                                   
Ellen                                                                                                                                                                                                   
Pat                                                                                                                                                                                                     
Peter                                                                                                                                                                                                   
Randall                                                                                                                                                                                                 
Shelley                                                                                                                                                                                                 
Steven                                                                                                                                                                                                  
Trenna                                                                                                                                                                                                  
William                                                                                                                                                                                                 

13 rows selected.

SQL> 
SQL> 
SQL> REM FIRST_NAME STARTS WITH P
SQL> REM FIST_NAME ENDS WITH n
SQL> REM FIRST_NAME CONTAINS e
SQL> 
SQL> REM LIKE SUPPORTS TWO WILD CARD CHARACTERS: _%
SQL> 
SQL> REM _ IS USED FOR SINGLE CHARACTER REPRESENTATION
SQL> 
SQL> REM % IS USED FOR ZERO OR MORE CHARACTERS
SQL> 
SQL> REM LIKE ,NOT LIKE
SQL> 
SQL> 
SQL> 
SQL> REM 1 EXAMPLES OF ONLY WILD CARDS   2 EXAMPLE OF WILD CARDS WITH OTHER CHARCATERS
SQL> 
SQL> REM 1 EXAMPLE OF ONLY WILD CARDS
SQL> 
SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAEM LIKE '____';
SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAEM LIKE '____'
                                       *
ERROR at line 1:
ORA-00904: "FIRST_NAEM": invalid identifier 


SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '____';

no rows selected

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '_____';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Neena                                                                                                                                                                                                   
Bruce                                                                                                                                                                                                   
Diana                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Peter                                                                                                                                                                                                   
Eleni                                                                                                                                                                                                   
Ellen                                                                                                                                                                                                   

7 rows selected.

SQL> 
SQL> SELECT FIRST_NAME FROM EMPLOYEES;

FIRST_NAME                                                                                                                                                                                              
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

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '___';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Lex                                                                                                                                                                                                     
Pat                                                                                                                                                                                                     

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '___%';

FIRST_NAME                                                                                                                                                                                              
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

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '____%';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Steven                                                                                                                                                                                                  
Neena                                                                                                                                                                                                   
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
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

18 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '_____%';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Steven                                                                                                                                                                                                  
Neena                                                                                                                                                                                                   
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
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

18 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '%_____';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Steven                                                                                                                                                                                                  
Neena                                                                                                                                                                                                   
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
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

18 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '%';

FIRST_NAME                                                                                                                                                                                              
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

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '___%___';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Steven                                                                                                                                                                                                  
Alexander                                                                                                                                                                                               
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Jonathon                                                                                                                                                                                                
Kimerely                                                                                                                                                                                                
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

11 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '__%__%__';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Steven                                                                                                                                                                                                  
Alexander                                                                                                                                                                                               
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Jonathon                                                                                                                                                                                                
Kimerely                                                                                                                                                                                                
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

11 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '_____';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Neena                                                                                                                                                                                                   
Bruce                                                                                                                                                                                                   
Diana                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Peter                                                                                                                                                                                                   
Eleni                                                                                                                                                                                                   
Ellen                                                                                                                                                                                                   

7 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME NOT LIKE '_____';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Steven                                                                                                                                                                                                  
Lex                                                                                                                                                                                                     
Alexander                                                                                                                                                                                               
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Jonathon                                                                                                                                                                                                
Kimerely                                                                                                                                                                                                
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

13 rows selected.

SQL> 
SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME NOT LIKE '%';

no rows selected

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME  LIKE '%';

FIRST_NAME                                                                                                                                                                                              
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
SQL> 
SQL> REM NOW WE SEE THE WILD CARD CHARACTER WITH CHARACTER
SQL> 
SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE 'N%';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Neena                                                                                                                                                                                                   

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '%N';

no rows selected

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '%E%';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Eleni                                                                                                                                                                                                   
Ellen                                                                                                                                                                                                   

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE 'E';

no rows selected

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '_EE__';

no rows selected

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '_ee__';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Neena                                                                                                                                                                                                   

SQL> REM NOW IT MEANS DATA IS CASE SENSITIVE
SQL> 
SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '_e___';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Neena                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Peter                                                                                                                                                                                                   

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '_e%';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Neena                                                                                                                                                                                                   
Lex                                                                                                                                                                                                     
Kevin                                                                                                                                                                                                   
Peter                                                                                                                                                                                                   
Jennifer                                                                                                                                                                                                

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '%E_';

no rows selected

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '%e_';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Steven                                                                                                                                                                                                  
Lex                                                                                                                                                                                                     
Alexander                                                                                                                                                                                               
Peter                                                                                                                                                                                                   
Ellen                                                                                                                                                                                                   
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Shelley                                                                                                                                                                                                 

8 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME NOT  LIKE '%e_';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Neena                                                                                                                                                                                                   
Bruce                                                                                                                                                                                                   
Diana                                                                                                                                                                                                   
Kevin                                                                                                                                                                                                   
Trenna                                                                                                                                                                                                  
Curtis                                                                                                                                                                                                  
Randall                                                                                                                                                                                                 
Eleni                                                                                                                                                                                                   
Jonathon                                                                                                                                                                                                
Kimerely                                                                                                                                                                                                
Pat                                                                                                                                                                                                     
William                                                                                                                                                                                                 

12 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '%ll%;
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE '%ll%';

FIRST_NAME                                                                                                                                                                                              
---------------                                                                                                                                                                                         
Randall                                                                                                                                                                                                 
Ellen                                                                                                                                                                                                   
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

SQL> SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME NOT LIKE '%ll%';

FIRST_NAME                                                                                                                                                                                              
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
Peter                                                                                                                                                                                                   
Eleni                                                                                                                                                                                                   
Jonathon                                                                                                                                                                                                
Kimerely                                                                                                                                                                                                
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     

16 rows selected.

SQL> SELECT FIRST_NAME FROM EMPLOYEES;

FIRST_NAME                                                                                                                                                                                              
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
SQL> 
SQL> SELECT LAST_NAME FROM EMPLOYEES WHERE LAST_NAME LIKE '%o_';

LAST_NAME                                                                                                                                                                                               
---------------                                                                                                                                                                                         
Mourgos                                                                                                                                                                                                 
Matos                                                                                                                                                                                                   
Taylor                                                                                                                                                                                                  

SQL> 
SQL> 
SQL> SELECT HIRE_DATE FROM EMPLOYEES;

HIRE_DATE                                                                                                                                                                                               
---------                                                                                                                                                                                               
17-JUL-87                                                                                                                                                                                               
21-SEP-89                                                                                                                                                                                               
13-JAN-93                                                                                                                                                                                               
03-JAN-90                                                                                                                                                                                               
21-MAY-91                                                                                                                                                                                               
07-FEB-99                                                                                                                                                                                               
16-NOV-99                                                                                                                                                                                               
17-OCT-95                                                                                                                                                                                               
29-JAN-97                                                                                                                                                                                               
15-MAR-98                                                                                                                                                                                               
09-JUL-98                                                                                                                                                                                               
29-JAN-00                                                                                                                                                                                               
11-MAY-96                                                                                                                                                                                               
24-MAR-98                                                                                                                                                                                               
24-MAY-99                                                                                                                                                                                               
17-SEP-87                                                                                                                                                                                               
17-FEB-96                                                                                                                                                                                               
17-AUG-97                                                                                                                                                                                               
07-JUN-94                                                                                                                                                                                               
07-JUN-94                                                                                                                                                                                               

20 rows selected.

SQL> 
SQL> 
SQL> 
SQL> REM DD-MON-RR
SQL> 
SQL> REM 9 CHARACTERS
SQL> 
SQL> REM DISPLAY ALL WHO WERE HIRED IN ANY OF THE MONTH : JAN,JUN,JUL
SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE HIRE_DATE LIKE 'J__';

no rows selected

SQL> SELECT * FROM EMPLOYEES WHERE HIRE_DATE LIKE '___J_____';

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

8 rows selected.

SQL> 
SQL> SELECT * FROM EMPLOYEES WHERE HIRE_DATE LIKE '%J%';

EMPLOYEE_ID FIRST_NAME      LAST_NAME       EMAIL      PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                     
----------- --------------- --------------- ---------- -------------------- --------- ---------- ---------- -------------- ---------- -------------                                                     
        100 Steven          King            SKING      515.123.4567         17-JUL-87 AD_PRES         24000                                      90                                                     
        102 Lex             De Haan         LDEHAAN    515.123.4569         13-JAN-93 AD_VP           17000                       100            90                                                     
        103 Alexander       Hunold          AHUNOLD    590.423.4567         03-JAN-90 IT_PROG          9000                       102            60                                                     
        142 Curtis          Davies          CDAVIES    650.121.2994         29-JAN-97 ST_CLERK         3100                       124            50                                                     
        144 Peter           Vargas          PVARGAS    650.121.2004         09-JUL-98 ST_CLERK         2500                       124            50                                                     
        149 Eleni           Zlotkey         EZLOTKEY   011.44.1344.429018   29-JAN-00 SA_MAN          10500             .2        100            80                                                     
        205 Shelley         Higgins         SHIGGINS   515.123.8080         07-JUN-94 AC_MGR          12000                       101           110                                                     
        206 William         Gietz           WGIETZ     515.123.8181         07-JUN-94 AC_ACCOUNT       8300                       205           110                                                     

8 rows selected.

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
SQL> REM JAN,JUN
SQL> 
SQL> SELECT HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE LIKE '___J_N___';

HIRE_DATE                                                                                                                                                                                               
---------                                                                                                                                                                                               
13-JAN-93                                                                                                                                                                                               
03-JAN-90                                                                                                                                                                                               
29-JAN-97                                                                                                                                                                                               
29-JAN-00                                                                                                                                                                                               
07-JUN-94                                                                                                                                                                                               
07-JUN-94                                                                                                                                                                                               

6 rows selected.

SQL> 
SQL> SELECT HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE LIKE '%J_N%';

HIRE_DATE                                                                                                                                                                                               
---------                                                                                                                                                                                               
13-JAN-93                                                                                                                                                                                               
03-JAN-90                                                                                                                                                                                               
29-JAN-97                                                                                                                                                                                               
29-JAN-00                                                                                                                                                                                               
07-JUN-94                                                                                                                                                                                               
07-JUN-94                                                                                                                                                                                               

6 rows selected.

SQL> 
SQL> REM OCT ,NOV
SQL> 
SQL> SELECT HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE LIKE '%O%';

HIRE_DATE                                                                                                                                                                                               
---------                                                                                                                                                                                               
16-NOV-99                                                                                                                                                                                               
17-OCT-95                                                                                                                                                                                               

SQL> 
SQL> 
SQL> REM APR ,AUG
SQL> 
SQL> SELECT HIRE_dATE FROM EMPLOYEES WHERE HIRE_DATE LIKE '%-A%';

HIRE_DATE                                                                                                                                                                                               
---------                                                                                                                                                                                               
17-AUG-97                                                                                                                                                                                               

SQL> 
SQL> SELECT HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE LIKE '%A%';

HIRE_DATE                                                                                                                                                                                               
---------                                                                                                                                                                                               
13-JAN-93                                                                                                                                                                                               
03-JAN-90                                                                                                                                                                                               
21-MAY-91                                                                                                                                                                                               
29-JAN-97                                                                                                                                                                                               
15-MAR-98                                                                                                                                                                                               
29-JAN-00                                                                                                                                                                                               
11-MAY-96                                                                                                                                                                                               
24-MAR-98                                                                                                                                                                                               
24-MAY-99                                                                                                                                                                                               
17-AUG-97                                                                                                                                                                                               

10 rows selected.

SQL> 
SQL> SELECT HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE LIKE 'A%';

no rows selected

SQL> 
SQL> 
SQL> SELECT * FROM MPSLIKETBL;

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT PATEL                                                                                                                                                                                              
AMIT_PATEL                                                                                                                                                                                              
AMIT%PATEL                                                                                                                                                                                              
AMIT_%PATEL                                                                                                                                                                                             
AMIT  PATEL                                                                                                                                                                                             
TAPAN PATEL                                                                                                                                                                                             
PARMAR TARAK                                                                                                                                                                                            

7 rows selected.

SQL> 
SQL> 
SQL> REM _%
SQL> 
SQL> REM DISPLAY THOSE WHICH CONTAINS T_P
SQL> 
SQL> SELECT NAME FROM MPSLIKETBL WHERE NAME LIKE '%T_P%';

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT PATEL                                                                                                                                                                                              
AMIT_PATEL                                                                                                                                                                                              
AMIT%PATEL                                                                                                                                                                                              
TAPAN PATEL                                                                                                                                                                                             

SQL> 
SQL> 
SQL> REM NOW WE ADD THE ESCAPE KEYWORD WITH LIKE
SQL> 
SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T\_P%';

no rows selected

SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T\_P%' ESCAPE '\';

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT_PATEL                                                                                                                                                                                              

SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T/_P%' ESCAPE '/';

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT_PATEL                                                                                                                                                                                              

SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T*_P%' ESCAPE '*';

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT_PATEL                                                                                                                                                                                              

SQL> REM HERE WE CAN TAKE ANY CHARACTER AS A ESCAPE JUST WE NEED TO DECLARE IT LIKE THIS IS THE ESCAPE
SQL> 
SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T5_P%' ESCAPE '5';

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT_PATEL                                                                                                                                                                                              

SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%TA_P%' ESCAPE 'A';

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT_PATEL                                                                                                                                                                                              

SQL> 
SQL> 
SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T()_P%' ESCAPE '()';
SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T()_P%' ESCAPE '()'
                                                          *
ERROR at line 1:
ORA-01425: escape character must be character string of length 1 


SQL> 
SQL> REM NOTE : ESCAPE CHARACTER POSSIBLE WITH 1 LENGTH
SQL> 
SQL> 
SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T _P%' ESCAPE ' ';

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT_PATEL                                                                                                                                                                                              

SQL> 
SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T%_P%' ESCAPE '%';
SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T%_P%' ESCAPE '%'
                                         *
ERROR at line 1:
ORA-01424: missing or illegal character following the escape character 


SQL> REM WILD CARD CHARACTER IS NOT POSSIBLE FOR THE ESCAPE CHARCTER
SQL> 
SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T''_P%' ESCAPE '''';

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT_PATEL                                                                                                                                                                                              

SQL> 
SQL> 
SQL> REM NOTE: HERE WE ADD THE DOUBLE SINGLE QUOTE AS A ESCAPE
SQL> -------------------------------------------------------------------------------------------------THIS IS NOTABLE POINTS--------
SQL> 
SQL> 
SQL> REM DISPLAY THOSE WHICH CONTAINS T%P
SQL> 
SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%
  2  
SQL> 
SQL> SELECT * FROM MPSLIKETBL;

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT PATEL                                                                                                                                                                                              
AMIT_PATEL                                                                                                                                                                                              
AMIT%PATEL                                                                                                                                                                                              
AMIT_%PATEL                                                                                                                                                                                             
AMIT  PATEL                                                                                                                                                                                             
TAPAN PATEL                                                                                                                                                                                             
PARMAR TARAK                                                                                                                                                                                            

7 rows selected.

SQL> 
SQL> REM DISPLAY THOSE WHICH CONTAINS T%P
SQL> 
SQL> SELECT * FROM MPSLIKETBL WHERE NAME LIKE '%T\%P%' ESCAPE '\';

NAME                                                                                                                                                                                                    
------------------------------                                                                                                                                                                          
AMIT%PATEL                                                                                                                                                                                              

SQL> 
SQL> 
SQL> 
SQL> REM IS NULL : FOR COMPARING NULL VALUES
SQL> 
SQL> REM DISPLAY THOSE WHO DOESN'T GET COMMISSION
SQL> 
SQL> SELECT FIRST_NAME ,COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT IS NULL;

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
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

16 rows selected.

SQL> SELECT FIRST_NAME ,COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT =0;

no rows selected

SQL> SELECT FIRST_NAME ,COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT =NULL;

no rows selected

SQL> SELECT FIRST_NAME ,COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT ='';

no rows selected

SQL> SELECT FIRST_NAME ,COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT <> 0;

FIRST_NAME      COMMISSION_PCT                                                                                                                                                                          
--------------- --------------                                                                                                                                                                          
Eleni                       .2                                                                                                                                                                          
Ellen                       .3                                                                                                                                                                          
Jonathon                    .3                                                                                                                                                                          
Kimerely                   .15                                                                                                                                                                          

SQL> SELECT FIRST_NAME ,COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT IS NULL;

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
Jennifer                                                                                                                                                                                                
Michael                                                                                                                                                                                                 
Pat                                                                                                                                                                                                     
Shelley                                                                                                                                                                                                 
William                                                                                                                                                                                                 

16 rows selected.

SQL> 
SQL> 
SQL> SELECT FIRST_NAME ,COMMISSION_PCT FROM EMPLOYEES WHERE COMMISSION_PCT IS NOT NULL;

FIRST_NAME      COMMISSION_PCT                                                                                                                                                                          
--------------- --------------                                                                                                                                                                          
Eleni                       .2                                                                                                                                                                          
Ellen                       .3                                                                                                                                                                          
Jonathon                    .3                                                                                                                                                                          
Kimerely                   .15                                                                                                                                                                          

SQL> 
SQL> 
SQL> SPOOL OFF;
