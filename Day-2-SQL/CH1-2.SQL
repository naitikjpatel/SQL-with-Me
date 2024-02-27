SQL> 
SQL> REM HERE WE DISCUSS ABOUT THE OPERATOR PRECEDENCE IN SQL
SQL> 
SQL> 
SQL> REM PRECEDENCE OF OPERATOR:
SQL> 
SQL> REM PRECEDENCE : ORDER OF EXECUTION
SQL> 
SQL> REM 1 () : BRACKET : ( ) ( ) : LEFT TO RIGHT : (   ( )   ) : NESTED BRACKET : INNER TO OUTER
SQL> 
SQL> REM 2 POWER FUNCTION
SQL> 
SQL> REM 3 / * (LEFT TO RIGHT EXPRESSION/FORMULA)
SQL> 
SQL> REM 4 + - (LEFT TO RIGHT EXPRESSION/FORMULA)
SQL> 
SQL> 
SQL> 
SQL> SELECT 5 + 3 -4 FORM DUAL;
SELECT 5 + 3 -4 FORM DUAL
                     *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT 5 + 3 -4 FROM DUAL;

     5+3-4                                                                                                                                                                                              
----------                                                                                                                                                                                              
         4                                                                                                                                                                                              

SQL> 
SQL> SELECT (5+3) * 4 FROM DUAL;

   (5+3)*4                                                                                                                                                                                              
----------                                                                                                                                                                                              
        32                                                                                                                                                                                              

SQL> 
SQL> SELECT 10-3*2 FROM DUAL;

    10-3*2                                                                                                                                                                                              
----------                                                                                                                                                                                              
         4                                                                                                                                                                                              

SQL> SELECT (10-3)*2 FROM DUAL;

  (10-3)*2                                                                                                                                                                                              
----------                                                                                                                                                                                              
        14                                                                                                                                                                                              

SQL> 
SQL> REM IN ABOVE 2 QUERIES YOU CAN SEE THE EXCUTION OF THE EXPRESSION USING THE PRECEDENCE
SQL> 
SQL> SELECT 'SHRI' || 210+210 FROM DUAL;
SELECT 'SHRI' || 210+210 FROM DUAL
               *
ERROR at line 1:
ORA-01722: invalid number 


SQL> SELECT 'SHRI' || (210+210) FROM DUAL;

'SHRI'|                                                                                                                                                                                                 
-------                                                                                                                                                                                                 
SHRI420                                                                                                                                                                                                 

SQL> 
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

SQL> select * from employees;

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

SQL> SELect * From eMpLoyees;

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
SQL> select
  2  *
  3  from
  4  employees;

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
SQL> REM SQL IS CASE INSENSITIVE LANGUAGE
SQL> 
SQL> REM SQL IS FREE FLOW LANGUAGE
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM ------------------------------------------------------NOW WE STARTING THE ARIGHTMETIC OPERATION WITH NULL VALUES-----------------------------------------
> 
SQL> 
SQL> REM ARITHMETIC CALCUALTION WITH NULL VALUES;
SQL> 
SQL> REM ANY ARITHMETIC CALCULATION WITH NULL WILL ALWAYS RETURN NULL
SQL> 
SQL> 
SQL> 
SQL> SELECT 5+NULL FROM DUAL;

    5+NULL                                                                                                                                                                                              
----------                                                                                                                                                                                              
                                                                                                                                                                                                        

SQL> 
SQL> SELECT 5* NULL FROM DUAL;

    5*NULL                                                                                                                                                                                              
----------                                                                                                                                                                                              
                                                                                                                                                                                                        

SQL> SELECT 5-NULL FROM DUAL;

    5-NULL                                                                                                                                                                                              
----------                                                                                                                                                                                              
                                                                                                                                                                                                        

SQL> 
SQL> SELECT 5/NULL FROM DUAL;

    5/NULL                                                                                                                                                                                              
----------                                                                                                                                                                                              
                                                                                                                                                                                                        

SQL> 
SQL> SELECT POWER(5,NULL) FROM DUAL;

POWER(5,NULL)                                                                                                                                                                                           
-------------                                                                                                                                                                                           
                                                                                                                                                                                                        

SQL> SELECT POWER(NULL,2) FROM DUAL;

POWER(NULL,2)                                                                                                                                                                                           
-------------                                                                                                                                                                                           
                                                                                                                                                                                                        

SQL> 
SQL> SELECT POWER(NULL,NULL) FROM DUAL;

POWER(NULL,NULL)                                                                                                                                                                                        
----------------                                                                                                                                                                                        
                                                                                                                                                                                                        

SQL> REM SOME IMPORTANT TOPICS
SQL> 
SQL> REM WITH CONCATENATION OPERATOR,NULL VALUES ARE IGNORED
SQL> 
SQL> 
SQL> 
SQL> REM NOW WE SEE THE DISTINCT/UNIQUE KEYWORD IN ORACLE/SQL
SQL> 
SQL> SELECT JOB_ID FROM EMPLOYEES;

JOB_ID                                                                                                                                                                                                  
----------                                                                                                                                                                                              
AD_PRES                                                                                                                                                                                                 
AD_VP                                                                                                                                                                                                   
AD_VP                                                                                                                                                                                                   
IT_PROG                                                                                                                                                                                                 
IT_PROG                                                                                                                                                                                                 
IT_PROG                                                                                                                                                                                                 
ST_MAN                                                                                                                                                                                                  
ST_CLERK                                                                                                                                                                                                
ST_CLERK                                                                                                                                                                                                
ST_CLERK                                                                                                                                                                                                
ST_CLERK                                                                                                                                                                                                
SA_MAN                                                                                                                                                                                                  
SA_REP                                                                                                                                                                                                  
SA_REP                                                                                                                                                                                                  
SA_REP                                                                                                                                                                                                  
AD_ASST                                                                                                                                                                                                 
MK_MAN                                                                                                                                                                                                  
MK_REP                                                                                                                                                                                                  
AC_MGR                                                                                                                                                                                                  
AC_ACCOUNT                                                                                                                                                                                              

20 rows selected.

SQL> 
SQL> SELECT ALL JOB_ID FROM EMPLOYEES;

JOB_ID                                                                                                                                                                                                  
----------                                                                                                                                                                                              
AD_PRES                                                                                                                                                                                                 
AD_VP                                                                                                                                                                                                   
AD_VP                                                                                                                                                                                                   
IT_PROG                                                                                                                                                                                                 
IT_PROG                                                                                                                                                                                                 
IT_PROG                                                                                                                                                                                                 
ST_MAN                                                                                                                                                                                                  
ST_CLERK                                                                                                                                                                                                
ST_CLERK                                                                                                                                                                                                
ST_CLERK                                                                                                                                                                                                
ST_CLERK                                                                                                                                                                                                
SA_MAN                                                                                                                                                                                                  
SA_REP                                                                                                                                                                                                  
SA_REP                                                                                                                                                                                                  
SA_REP                                                                                                                                                                                                  
AD_ASST                                                                                                                                                                                                 
MK_MAN                                                                                                                                                                                                  
MK_REP                                                                                                                                                                                                  
AC_MGR                                                                                                                                                                                                  
AC_ACCOUNT                                                                                                                                                                                              

20 rows selected.

SQL> REM ALL IS DEFAULT ,IT MEANS INCLUDING DUPLICATE VALUES
SQL> 
SQL> SELECT DISTINCT JOB_ID FROM EMPLOYEES;

JOB_ID                                                                                                                                                                                                  
----------                                                                                                                                                                                              
IT_PROG                                                                                                                                                                                                 
AC_MGR                                                                                                                                                                                                  
AC_ACCOUNT                                                                                                                                                                                              
ST_MAN                                                                                                                                                                                                  
AD_ASST                                                                                                                                                                                                 
AD_VP                                                                                                                                                                                                   
SA_MAN                                                                                                                                                                                                  
MK_MAN                                                                                                                                                                                                  
AD_PRES                                                                                                                                                                                                 
SA_REP                                                                                                                                                                                                  
MK_REP                                                                                                                                                                                                  
ST_CLERK                                                                                                                                                                                                

12 rows selected.

SQL> 
SQL> SELECT UNIQUE JOB_ID FROM EMPLOYEES;

JOB_ID                                                                                                                                                                                                  
----------                                                                                                                                                                                              
IT_PROG                                                                                                                                                                                                 
AC_MGR                                                                                                                                                                                                  
AC_ACCOUNT                                                                                                                                                                                              
ST_MAN                                                                                                                                                                                                  
AD_ASST                                                                                                                                                                                                 
AD_VP                                                                                                                                                                                                   
SA_MAN                                                                                                                                                                                                  
MK_MAN                                                                                                                                                                                                  
AD_PRES                                                                                                                                                                                                 
SA_REP                                                                                                                                                                                                  
MK_REP                                                                                                                                                                                                  
ST_CLERK                                                                                                                                                                                                

12 rows selected.

SQL> 
SQL> 
SQL> REM DISTINCT/UNIQUE : REMOVES DUPLICATE ROWS FROM RESULT SET
SQL> 
SQL> REM DISTINCT AND UNIQUE ARE IDENTICAL
SQL> 
SQL> REM WE CAN USE ANY OF IT ONCE PER COMMAND
SQL> 
SQL> SELECT UNIQUE DEPARTMENT_ID FORM EMPLOYEES;
SELECT UNIQUE DEPARTMENT_ID FORM EMPLOYEES
                                 *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT UNIQUE DEPARTMENT_ID FROM EMPLOYEES;

DEPARTMENT_ID                                                                                                                                                                                           
-------------                                                                                                                                                                                           
                                                                                                                                                                                                        
           90                                                                                                                                                                                           
           20                                                                                                                                                                                           
          110                                                                                                                                                                                           
           50                                                                                                                                                                                           
           80                                                                                                                                                                                           
           60                                                                                                                                                                                           
           10                                                                                                                                                                                           

8 rows selected.

SQL> 
SQL> 
SQL> REM HERE U NEED TO MAINTAIN THE SYNTAX FLOW
SQL> 
SQL> SELECT JOB_ID UNIQUE FROM EMPLOYEES;
SELECT JOB_ID UNIQUE FROM EMPLOYEES
              *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> 
SQL> 
SQL> SELECT UNIQUE DISTINCT JOB_ID FROM EMPLOYEES;
SELECT UNIQUE DISTINCT JOB_ID FROM EMPLOYEES
              *
ERROR at line 1:
ORA-00936: missing expression 


SQL> 
SQL> 
SQL> REM WHEN WE USE DISTINCT/UNIQUE WITH MULTIPLE COLUMNS,IT WILL CHECK FOR ALL VALUES OF EACHJ ROW
SQL> 
SQL> 
SQL> SELECT DEPARTMENT_ID,JOB_ID FROM EMPLOYEES;

DEPARTMENT_ID JOB_ID                                                                                                                                                                                    
------------- ----------                                                                                                                                                                                
           90 AD_PRES                                                                                                                                                                                   
           90 AD_VP                                                                                                                                                                                     
           90 AD_VP                                                                                                                                                                                     
           60 IT_PROG                                                                                                                                                                                   
           60 IT_PROG                                                                                                                                                                                   
           60 IT_PROG                                                                                                                                                                                   
           50 ST_MAN                                                                                                                                                                                    
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           80 SA_MAN                                                                                                                                                                                    
           80 SA_REP                                                                                                                                                                                    
           80 SA_REP                                                                                                                                                                                    
              SA_REP                                                                                                                                                                                    
           10 AD_ASST                                                                                                                                                                                   
           20 MK_MAN                                                                                                                                                                                    
           20 MK_REP                                                                                                                                                                                    
          110 AC_MGR                                                                                                                                                                                    
          110 AC_ACCOUNT                                                                                                                                                                                

20 rows selected.

SQL> SELECT UNIQUE DEPARTMENT_ID,JOB_ID FROM EMPLOYEES;

DEPARTMENT_ID JOB_ID                                                                                                                                                                                    
------------- ----------                                                                                                                                                                                
          110 AC_ACCOUNT                                                                                                                                                                                
           90 AD_VP                                                                                                                                                                                     
           50 ST_CLERK                                                                                                                                                                                  
           80 SA_REP                                                                                                                                                                                    
           50 ST_MAN                                                                                                                                                                                    
           80 SA_MAN                                                                                                                                                                                    
          110 AC_MGR                                                                                                                                                                                    
           90 AD_PRES                                                                                                                                                                                   
           60 IT_PROG                                                                                                                                                                                   
           20 MK_MAN                                                                                                                                                                                    
              SA_REP                                                                                                                                                                                    
           10 AD_ASST                                                                                                                                                                                   
           20 MK_REP                                                                                                                                                                                    

13 rows selected.

SQL> 
SQL> 
SQL> REM ---------------------NOW WE SEE THE ORDER BY-------------------------------------
> 
SQL> SELECT DEPARTMENT_ID,JOB_ID FROM EMPLOYEES ORDER BY 1,2;

DEPARTMENT_ID JOB_ID                                                                                                                                                                                    
------------- ----------                                                                                                                                                                                
           10 AD_ASST                                                                                                                                                                                   
           20 MK_MAN                                                                                                                                                                                    
           20 MK_REP                                                                                                                                                                                    
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_MAN                                                                                                                                                                                    
           60 IT_PROG                                                                                                                                                                                   
           60 IT_PROG                                                                                                                                                                                   
           60 IT_PROG                                                                                                                                                                                   
           80 SA_MAN                                                                                                                                                                                    
           80 SA_REP                                                                                                                                                                                    
           80 SA_REP                                                                                                                                                                                    
           90 AD_PRES                                                                                                                                                                                   
           90 AD_VP                                                                                                                                                                                     
           90 AD_VP                                                                                                                                                                                     
          110 AC_ACCOUNT                                                                                                                                                                                
          110 AC_MGR                                                                                                                                                                                    
              SA_REP                                                                                                                                                                                    

20 rows selected.

SQL> SELECT DEPARTMENT_ID,JOB_ID FROM EMPLOYEES ORDER BY 1;

DEPARTMENT_ID JOB_ID                                                                                                                                                                                    
------------- ----------                                                                                                                                                                                
           10 AD_ASST                                                                                                                                                                                   
           20 MK_MAN                                                                                                                                                                                    
           20 MK_REP                                                                                                                                                                                    
           50 ST_MAN                                                                                                                                                                                    
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           60 IT_PROG                                                                                                                                                                                   
           60 IT_PROG                                                                                                                                                                                   
           60 IT_PROG                                                                                                                                                                                   
           80 SA_REP                                                                                                                                                                                    
           80 SA_MAN                                                                                                                                                                                    
           80 SA_REP                                                                                                                                                                                    
           90 AD_VP                                                                                                                                                                                     
           90 AD_PRES                                                                                                                                                                                   
           90 AD_VP                                                                                                                                                                                     
          110 AC_ACCOUNT                                                                                                                                                                                
          110 AC_MGR                                                                                                                                                                                    
              SA_REP                                                                                                                                                                                    

20 rows selected.

SQL> SELECT DEPARTMENT_ID,JOB_ID FROM EMPLOYEES ORDER BY 2;

DEPARTMENT_ID JOB_ID                                                                                                                                                                                    
------------- ----------                                                                                                                                                                                
          110 AC_ACCOUNT                                                                                                                                                                                
          110 AC_MGR                                                                                                                                                                                    
           10 AD_ASST                                                                                                                                                                                   
           90 AD_PRES                                                                                                                                                                                   
           90 AD_VP                                                                                                                                                                                     
           90 AD_VP                                                                                                                                                                                     
           60 IT_PROG                                                                                                                                                                                   
           60 IT_PROG                                                                                                                                                                                   
           60 IT_PROG                                                                                                                                                                                   
           20 MK_MAN                                                                                                                                                                                    
           20 MK_REP                                                                                                                                                                                    
           80 SA_MAN                                                                                                                                                                                    
           80 SA_REP                                                                                                                                                                                    
              SA_REP                                                                                                                                                                                    
           80 SA_REP                                                                                                                                                                                    
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_MAN                                                                                                                                                                                    

20 rows selected.

SQL> SELECT UNIQUE DEPARTMENT_ID,JOB_ID FROM EMPLOYEES ORDER BY 1;

DEPARTMENT_ID JOB_ID                                                                                                                                                                                    
------------- ----------                                                                                                                                                                                
           10 AD_ASST                                                                                                                                                                                   
           20 MK_MAN                                                                                                                                                                                    
           20 MK_REP                                                                                                                                                                                    
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_MAN                                                                                                                                                                                    
           60 IT_PROG                                                                                                                                                                                   
           80 SA_MAN                                                                                                                                                                                    
           80 SA_REP                                                                                                                                                                                    
           90 AD_PRES                                                                                                                                                                                   
           90 AD_VP                                                                                                                                                                                     
          110 AC_ACCOUNT                                                                                                                                                                                
          110 AC_MGR                                                                                                                                                                                    
              SA_REP                                                                                                                                                                                    

13 rows selected.

SQL> SELECT UNIQUE DEPARTMENT_ID,JOB_ID FROM EMPLOYEES ORDER BY 1,2;

DEPARTMENT_ID JOB_ID                                                                                                                                                                                    
------------- ----------                                                                                                                                                                                
           10 AD_ASST                                                                                                                                                                                   
           20 MK_MAN                                                                                                                                                                                    
           20 MK_REP                                                                                                                                                                                    
           50 ST_CLERK                                                                                                                                                                                  
           50 ST_MAN                                                                                                                                                                                    
           60 IT_PROG                                                                                                                                                                                   
           80 SA_MAN                                                                                                                                                                                    
           80 SA_REP                                                                                                                                                                                    
           90 AD_PRES                                                                                                                                                                                   
           90 AD_VP                                                                                                                                                                                     
          110 AC_ACCOUNT                                                                                                                                                                                
          110 AC_MGR                                                                                                                                                                                    
              SA_REP                                                                                                                                                                                    

13 rows selected.

SQL> 
SQL> 
SQL> SELECT MANAGER_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES ORDER BY 1,2,3;

MANAGER_ID JOB_ID     DEPARTMENT_ID                                                                                                                                                                     
---------- ---------- -------------                                                                                                                                                                     
       100 AD_VP                 90                                                                                                                                                                     
       100 AD_VP                 90                                                                                                                                                                     
       100 MK_MAN                20                                                                                                                                                                     
       100 SA_MAN                80                                                                                                                                                                     
       100 ST_MAN                50                                                                                                                                                                     
       101 AC_MGR               110                                                                                                                                                                     
       101 AD_ASST               10                                                                                                                                                                     
       102 IT_PROG               60                                                                                                                                                                     
       103 IT_PROG               60                                                                                                                                                                     
       103 IT_PROG               60                                                                                                                                                                     
       124 ST_CLERK              50                                                                                                                                                                     
       124 ST_CLERK              50                                                                                                                                                                     
       124 ST_CLERK              50                                                                                                                                                                     
       124 ST_CLERK              50                                                                                                                                                                     
       149 SA_REP                80                                                                                                                                                                     
       149 SA_REP                80                                                                                                                                                                     
       149 SA_REP                                                                                                                                                                                       
       201 MK_REP                20                                                                                                                                                                     
       205 AC_ACCOUNT           110                                                                                                                                                                     
           AD_PRES               90                                                                                                                                                                     

20 rows selected.

SQL> SELECT UNIQUE MANAGER_ID,JOB_ID,DEPARTMENT_ID FROM EMPLOYEES ORDER BY 1,2,3;

MANAGER_ID JOB_ID     DEPARTMENT_ID                                                                                                                                                                     
---------- ---------- -------------                                                                                                                                                                     
       100 AD_VP                 90                                                                                                                                                                     
       100 MK_MAN                20                                                                                                                                                                     
       100 SA_MAN                80                                                                                                                                                                     
       100 ST_MAN                50                                                                                                                                                                     
       101 AC_MGR               110                                                                                                                                                                     
       101 AD_ASST               10                                                                                                                                                                     
       102 IT_PROG               60                                                                                                                                                                     
       103 IT_PROG               60                                                                                                                                                                     
       124 ST_CLERK              50                                                                                                                                                                     
       149 SA_REP                80                                                                                                                                                                     
       149 SA_REP                                                                                                                                                                                       
       201 MK_REP                20                                                                                                                                                                     
       205 AC_ACCOUNT           110                                                                                                                                                                     
           AD_PRES               90                                                                                                                                                                     

14 rows selected.

SQL> SELECT MANAGER_ID||JOB_ID FROM EMPLOYEES ORDER BY 1,2;
SELECT MANAGER_ID||JOB_ID FROM EMPLOYEES ORDER BY 1,2
                                                    *
ERROR at line 1:
ORA-01785: ORDER BY item must be the number of a SELECT-list expression 


SQL> REM WHEN U DO CONCATINATION THEN IT BECOES A SINGLE COLUMN
SQL> SELECT MANAGER_ID||JOB_ID FROM EMPLOYEES ORDER BY 1;

MANAGER_ID||JOB_ID                                                                                                                                                                                      
--------------------------------------------------                                                                                                                                                      
100AD_VP                                                                                                                                                                                                
100AD_VP                                                                                                                                                                                                
100MK_MAN                                                                                                                                                                                               
100SA_MAN                                                                                                                                                                                               
100ST_MAN                                                                                                                                                                                               
101AC_MGR                                                                                                                                                                                               
101AD_ASST                                                                                                                                                                                              
102IT_PROG                                                                                                                                                                                              
103IT_PROG                                                                                                                                                                                              
103IT_PROG                                                                                                                                                                                              
124ST_CLERK                                                                                                                                                                                             
124ST_CLERK                                                                                                                                                                                             
124ST_CLERK                                                                                                                                                                                             
124ST_CLERK                                                                                                                                                                                             
149SA_REP                                                                                                                                                                                               
149SA_REP                                                                                                                                                                                               
149SA_REP                                                                                                                                                                                               
201MK_REP                                                                                                                                                                                               
205AC_ACCOUNT                                                                                                                                                                                           
AD_PRES                                                                                                                                                                                                 

20 rows selected.

SQL> 
SQL> 
SQL> SELECT SALARY,COMMISSION_PCT FROM EMPLOYEES;

    SALARY COMMISSION_PCT                                                                                                                                                                               
---------- --------------                                                                                                                                                                               
     24000                                                                                                                                                                                              
     17000                                                                                                                                                                                              
     17000                                                                                                                                                                                              
      9000                                                                                                                                                                                              
      6000                                                                                                                                                                                              
      4200                                                                                                                                                                                              
      5800                                                                                                                                                                                              
      3500                                                                                                                                                                                              
      3100                                                                                                                                                                                              
      2600                                                                                                                                                                                              
      2500                                                                                                                                                                                              
     10500             .2                                                                                                                                                                               
     11000             .3                                                                                                                                                                               
      8600             .3                                                                                                                                                                               
      7000            .15                                                                                                                                                                               
      4400                                                                                                                                                                                              
     13000                                                                                                                                                                                              
      6000                                                                                                                                                                                              
     12000                                                                                                                                                                                              
      8300                                                                                                                                                                                              

20 rows selected.

SQL> 
SQL> SELECT  DISTINCT SALARY*COMMISSION_PCT FROM EMPLOYEES;

SALARY*COMMISSION_PCT                                                                                                                                                                                   
---------------------                                                                                                                                                                                   
                                                                                                                                                                                                        
                 1050                                                                                                                                                                                   
                 3300                                                                                                                                                                                   
                 2580                                                                                                                                                                                   
                 2100                                                                                                                                                                                   

SQL> 
SQL> 
SQL> 
SQL> REM LETER WE SEE THE Q OPERATOR FOR THE CONCATINCATION
SQL> 
SQL> 
SQL> 
SQL> REM WHAT WE LEARN
SQL> 
SQL> REM OPERATOR PRECEDENCE
SQL> 
SQL> REM ARITHMETIC OPERATION WITH NULL VALUES
SQL> 
SQL> REM UNIQUE/DISTINCT
SQL> 
SQL> REM NEXT WE SEE THE ORDER BY WITH FULL DETAILS
SQL> 
SQL> SPOOL OFF
