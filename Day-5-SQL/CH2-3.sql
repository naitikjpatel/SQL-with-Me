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
SQL> REM TODAY WE DISCUSS ABOUT THE MULTI ROW COMPARISION
SQL> 
SQL> REM MULTI ROW COMAPARISION OPERATORS:  TO COMAPRE MULTIPLE VALUES WITHIN SINGLE CONDITION
SQL> 
SQL> REM LIST OF MULTI ROW COMPARISION OPERATORS : ANY/SOME ,ALL
SQL> 
SQL> REM MULTI ROW OPERATORS DOESN'T WORK ON IT'S OWN
SQL> 
SQL> REM MULTI ROW OPERATORS WORK WITH SINGLE ROW OPERATOR
SQL> 
SQL> REM SYNTAX:OPERAND1 SINGLE ROW OPERATOR MULTI ROW OPERATOR (OPERAND2 ,OPERAND3....)
SQL> 
SQL> REM LOGICALLY WE SHOULD USE ANY/SOME WITH =
SQL> 
SQL> REM LOGICALLY WE SHOULD USE ALL WITH <>
SQL> 
SQL> 
SQL> 
SQL> REM DISPLAY ALL EMPLOYEES WHO WORKS IN ANY OF DEPARTMENT 50 90 110
SQL> 
SQL> SELECT FIRST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID =(50,90,110);
SELECT FIRST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID =(50,90,110)
                                                                   *
ERROR at line 1:
ORA-01797: this operator must be followed by ANY or ALL 


SQL> SELECT FIRST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID = ANY(50,90,110);

FIRST_NAME      DEPARTMENT_ID                                                                                                                                                                           
--------------- -------------                                                                                                                                                                           
Steven                     90                                                                                                                                                                           
Neena                      90                                                                                                                                                                           
Lex                        90                                                                                                                                                                           
Kevin                      50                                                                                                                                                                           
Trenna                     50                                                                                                                                                                           
Curtis                     50                                                                                                                                                                           
Randall                    50                                                                                                                                                                           
Peter                      50                                                                                                                                                                           
Shelley                   110                                                                                                                                                                           
William                   110                                                                                                                                                                           

10 rows selected.

SQL> SELECT FIRST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID = SOME(50,90,110);

FIRST_NAME      DEPARTMENT_ID                                                                                                                                                                           
--------------- -------------                                                                                                                                                                           
Steven                     90                                                                                                                                                                           
Neena                      90                                                                                                                                                                           
Lex                        90                                                                                                                                                                           
Kevin                      50                                                                                                                                                                           
Trenna                     50                                                                                                                                                                           
Curtis                     50                                                                                                                                                                           
Randall                    50                                                                                                                                                                           
Peter                      50                                                                                                                                                                           
Shelley                   110                                                                                                                                                                           
William                   110                                                                                                                                                                           

10 rows selected.

SQL> SELECT FIRST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID SOME = (50,90,110);
SELECT FIRST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID SOME = (50,90,110)
                                                                   *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> SELECT FIRST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID = ALL(50,90,110);

no rows selected

SQL> 
SQL> REM DISPLAY ALL EXCECPT THOSE WORKS AS IT_PROG,SA_REP ,ST_CLERK
SQL> 
SQL> SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES WHERE JOB_ID <> ALL ('IT_PROG','SA_REP','ST_CLERK');

FIRST_NAME      JOB_ID                                                                                                                                                                                  
--------------- ----------                                                                                                                                                                              
Steven          AD_PRES                                                                                                                                                                                 
Neena           AD_VP                                                                                                                                                                                   
Lex             AD_VP                                                                                                                                                                                   
Kevin           ST_MAN                                                                                                                                                                                  
Eleni           SA_MAN                                                                                                                                                                                  
Jennifer        AD_ASST                                                                                                                                                                                 
Michael         MK_MAN                                                                                                                                                                                  
Pat             MK_REP                                                                                                                                                                                  
Shelley         AC_MGR                                                                                                                                                                                  
William         AC_ACCOUNT                                                                                                                                                                              

10 rows selected.

SQL> SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES WHERE JOB_ID <> ALL ('IT_PROG','SA_REP','st_clerk');

FIRST_NAME      JOB_ID                                                                                                                                                                                  
--------------- ----------                                                                                                                                                                              
Steven          AD_PRES                                                                                                                                                                                 
Neena           AD_VP                                                                                                                                                                                   
Lex             AD_VP                                                                                                                                                                                   
Kevin           ST_MAN                                                                                                                                                                                  
Trenna          ST_CLERK                                                                                                                                                                                
Curtis          ST_CLERK                                                                                                                                                                                
Randall         ST_CLERK                                                                                                                                                                                
Peter           ST_CLERK                                                                                                                                                                                
Eleni           SA_MAN                                                                                                                                                                                  
Jennifer        AD_ASST                                                                                                                                                                                 
Michael         MK_MAN                                                                                                                                                                                  
Pat             MK_REP                                                                                                                                                                                  
Shelley         AC_MGR                                                                                                                                                                                  
William         AC_ACCOUNT                                                                                                                                                                              

14 rows selected.

SQL> SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES WHERE JOB_ID ALL <>  ('IT_PROG','SA_REP','st_clerk');
SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES WHERE JOB_ID ALL <>  ('IT_PROG','SA_REP','st_clerk')
                                                     *
ERROR at line 1:
ORA-00920: invalid relational operator 


SQL> SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES WHERE JOB_ID != ALL  ('IT_PROG','SA_REP','st_clerk');

FIRST_NAME      JOB_ID                                                                                                                                                                                  
--------------- ----------                                                                                                                                                                              
Steven          AD_PRES                                                                                                                                                                                 
Neena           AD_VP                                                                                                                                                                                   
Lex             AD_VP                                                                                                                                                                                   
Kevin           ST_MAN                                                                                                                                                                                  
Trenna          ST_CLERK                                                                                                                                                                                
Curtis          ST_CLERK                                                                                                                                                                                
Randall         ST_CLERK                                                                                                                                                                                
Peter           ST_CLERK                                                                                                                                                                                
Eleni           SA_MAN                                                                                                                                                                                  
Jennifer        AD_ASST                                                                                                                                                                                 
Michael         MK_MAN                                                                                                                                                                                  
Pat             MK_REP                                                                                                                                                                                  
Shelley         AC_MGR                                                                                                                                                                                  
William         AC_ACCOUNT                                                                                                                                                                              

14 rows selected.

SQL> 
SQL> 
SQL> REM PAIR WISE COMPARISION
SQL> 
SQL> SELECT DEPARTMENT_ID,MANAGER_ID,FIRST_NAME FROM EMPLOYEES;

DEPARTMENT_ID MANAGER_ID FIRST_NAME                                                                                                                                                                     
------------- ---------- ---------------                                                                                                                                                                
           90            Steven                                                                                                                                                                         
           90        100 Neena                                                                                                                                                                          
           90        100 Lex                                                                                                                                                                            
           60        102 Alexander                                                                                                                                                                      
           60        103 Bruce                                                                                                                                                                          
           60        103 Diana                                                                                                                                                                          
           50        100 Kevin                                                                                                                                                                          
           50        124 Trenna                                                                                                                                                                         
           50        124 Curtis                                                                                                                                                                         
           50        124 Randall                                                                                                                                                                        
           50        124 Peter                                                                                                                                                                          
           80        100 Eleni                                                                                                                                                                          
           80        149 Ellen                                                                                                                                                                          
           80        149 Jonathon                                                                                                                                                                       
                     149 Kimerely                                                                                                                                                                       
           10        101 Jennifer                                                                                                                                                                       
           20        100 Michael                                                                                                                                                                        
           20        201 Pat                                                                                                                                                                            
          110        101 Shelley                                                                                                                                                                        
          110        205 William                                                                                                                                                                        

20 rows selected.

SQL> 
SQL> 
SQL> REM COMBINATION: 90 100  60 103 80 149
SQL> 
SQL> SELECT DEPARTMENT_ID,MANAGER_ID ,FIRST_NAME FROM EMPLOYEES WHERE (DEPARTMENT_ID,MANAGER_ID) = ANY ((90,100),(60,103),(80,149));

DEPARTMENT_ID MANAGER_ID FIRST_NAME                                                                                                                                                                     
------------- ---------- ---------------                                                                                                                                                                
           90        100 Neena                                                                                                                                                                          
           90        100 Lex                                                                                                                                                                            
           60        103 Bruce                                                                                                                                                                          
           60        103 Diana                                                                                                                                                                          
           80        149 Ellen                                                                                                                                                                          
           80        149 Jonathon                                                                                                                                                                       

6 rows selected.

SQL> 
SQL> 
SQL> 
SQL> SELECT MANAGER_ID,JOB_ID ,LAST_NAME FROM EMPLOYEES;

MANAGER_ID JOB_ID     LAST_NAME                                                                                                                                                                         
---------- ---------- ---------------                                                                                                                                                                   
           AD_PRES    King                                                                                                                                                                              
       100 AD_VP      Kochhar                                                                                                                                                                           
       100 AD_VP      De Haan                                                                                                                                                                           
       102 IT_PROG    Hunold                                                                                                                                                                            
       103 IT_PROG    Ernst                                                                                                                                                                             
       103 IT_PROG    Lorentz                                                                                                                                                                           
       100 ST_MAN     Mourgos                                                                                                                                                                           
       124 ST_CLERK   Rajs                                                                                                                                                                              
       124 ST_CLERK   Davies                                                                                                                                                                            
       124 ST_CLERK   Matos                                                                                                                                                                             
       124 ST_CLERK   Vargas                                                                                                                                                                            
       100 SA_MAN     Zlotkey                                                                                                                                                                           
       149 SA_REP     Abel                                                                                                                                                                              
       149 SA_REP     Taylor                                                                                                                                                                            
       149 SA_REP     Grant                                                                                                                                                                             
       101 AD_ASST    Whalen                                                                                                                                                                            
       100 MK_MAN     Hartstein                                                                                                                                                                         
       201 MK_REP     Fay                                                                                                                                                                               
       101 AC_MGR     Higgins                                                                                                                                                                           
       205 AC_ACCOUNT Gietz                                                                                                                                                                             

20 rows selected.

SQL> 
SQL> REM ALL COMBINATIONS EXCEPT :103 IT_PROG  124 ST_CLERK 149 SA_REP
SQL> 
SQL> SELECT MANAGER_ID,JOB_ID,LAST_NAME FROM EMPLOYEES WHERE (MANAGER_ID,JOB_ID) <> ALL((103,'IT_PROG'),(124,'ST_CLERK'),(149,'SA_REP'));

MANAGER_ID JOB_ID     LAST_NAME                                                                                                                                                                         
---------- ---------- ---------------                                                                                                                                                                   
           AD_PRES    King                                                                                                                                                                              
       100 AD_VP      Kochhar                                                                                                                                                                           
       100 AD_VP      De Haan                                                                                                                                                                           
       102 IT_PROG    Hunold                                                                                                                                                                            
       100 ST_MAN     Mourgos                                                                                                                                                                           
       100 SA_MAN     Zlotkey                                                                                                                                                                           
       101 AD_ASST    Whalen                                                                                                                                                                            
       100 MK_MAN     Hartstein                                                                                                                                                                         
       201 MK_REP     Fay                                                                                                                                                                               
       101 AC_MGR     Higgins                                                                                                                                                                           
       205 AC_ACCOUNT Gietz                                                                                                                                                                             

11 rows selected.

SQL> 
SQL> 
SQL> 
SQL> REM SPECIAL OPERATOR:
SQL> 
SQL> REM LIST OF SPECIAL OPERAOTORS: 1 IN 2 BETWEEN 3 LIKE 4 IS NULL
SQL> 
SQL> REM ALL SPECIAL OPERATORS ARE SUPPORTED IN TWO TYPES OF FORMATS I.E. POSITIVE AND NEGATIVE
SQL> 
SQL> 
SQL> REM 1 IN , NOT IN
SQL> 
SQL> REM 2 BETWEEN ,NOT BETWEEN
SQL> 
SQL> REM 3 LIKE,NOT LIKE
SQL> 
SQL> REM 4 IS NULL,IS NOT NULL
SQL> 
SQL> REM ALL SPECAIL OPERATORS WORKS WITH ALL 3 BASIC DATA TYPE VALUES I.E. NUMBER,CHARCATER AND DATE
SQL> 
SQL> REM IN : IS USED TO COMPARE MULTIPLE VALUES WITHIN SINGLE CONDITION
SQL> 
SQL> REM = ANY ,=SOME ,IN : ALL ARE IDENTICAL
SQL> 
SQL> REM <>ALL ,NOT IN :ARE IDENTICAL
SQL> 
SQL> REM DISPLAY THOSE WHO REPORTS TO ANY OF THE MANAGER 100,124,149
SQL> 
SQL> SELECT FIRST_NAME , MANAGER_ID FROM EMPLOYEES WHERE MANAGER_ID =(100,124,149);
SELECT FIRST_NAME , MANAGER_ID FROM EMPLOYEES WHERE MANAGER_ID =(100,124,149)
                                                               *
ERROR at line 1:
ORA-01797: this operator must be followed by ANY or ALL 


SQL> SELECT FIRST_NAME , MANAGER_ID FROM EMPLOYEES WHERE MANAGER_ID = ANY(100,124,149);

FIRST_NAME      MANAGER_ID                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Neena                  100                                                                                                                                                                              
Lex                    100                                                                                                                                                                              
Kevin                  100                                                                                                                                                                              
Trenna                 124                                                                                                                                                                              
Curtis                 124                                                                                                                                                                              
Randall                124                                                                                                                                                                              
Peter                  124                                                                                                                                                                              
Eleni                  100                                                                                                                                                                              
Ellen                  149                                                                                                                                                                              
Jonathon               149                                                                                                                                                                              
Kimerely               149                                                                                                                                                                              
Michael                100                                                                                                                                                                              

12 rows selected.

SQL> SELECT FIRST_NAME , MANAGER_ID FROM EMPLOYEES WHERE MANAGER_ID = SOME(100,124,149);

FIRST_NAME      MANAGER_ID                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Neena                  100                                                                                                                                                                              
Lex                    100                                                                                                                                                                              
Kevin                  100                                                                                                                                                                              
Trenna                 124                                                                                                                                                                              
Curtis                 124                                                                                                                                                                              
Randall                124                                                                                                                                                                              
Peter                  124                                                                                                                                                                              
Eleni                  100                                                                                                                                                                              
Ellen                  149                                                                                                                                                                              
Jonathon               149                                                                                                                                                                              
Kimerely               149                                                                                                                                                                              
Michael                100                                                                                                                                                                              

12 rows selected.

SQL> SELECT FIRST_NAME , MANAGER_ID FROM EMPLOYEES WHERE MANAGER_ID IN (100,124,149);

FIRST_NAME      MANAGER_ID                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Neena                  100                                                                                                                                                                              
Lex                    100                                                                                                                                                                              
Kevin                  100                                                                                                                                                                              
Trenna                 124                                                                                                                                                                              
Curtis                 124                                                                                                                                                                              
Randall                124                                                                                                                                                                              
Peter                  124                                                                                                                                                                              
Eleni                  100                                                                                                                                                                              
Ellen                  149                                                                                                                                                                              
Jonathon               149                                                                                                                                                                              
Kimerely               149                                                                                                                                                                              
Michael                100                                                                                                                                                                              

12 rows selected.

SQL> 
SQL> 
SQL> REM DISPLAY ALL EXCEPT THOSE WHO WORKS AS IT_PROG ST_CLERK SA_REP
SQL> 
SQL> SELECT LAST_NAME ,JOB_ID FROM EMPLOYEES WHERE JOB_ID <>('IT_PROG','ST_CLERK','SA_REP');
SELECT LAST_NAME ,JOB_ID FROM EMPLOYEES WHERE JOB_ID <>('IT_PROG','ST_CLERK','SA_REP')
                                                     *
ERROR at line 1:
ORA-01797: this operator must be followed by ANY or ALL 


SQL> SELECT LAST_NAME ,JOB_ID FROM EMPLOYEES WHERE JOB_ID <> ANY('IT_PROG','ST_CLERK','SA_REP');

LAST_NAME       JOB_ID                                                                                                                                                                                  
--------------- ----------                                                                                                                                                                              
King            AD_PRES                                                                                                                                                                                 
Kochhar         AD_VP                                                                                                                                                                                   
De Haan         AD_VP                                                                                                                                                                                   
Hunold          IT_PROG                                                                                                                                                                                 
Ernst           IT_PROG                                                                                                                                                                                 
Lorentz         IT_PROG                                                                                                                                                                                 
Mourgos         ST_MAN                                                                                                                                                                                  
Rajs            ST_CLERK                                                                                                                                                                                
Davies          ST_CLERK                                                                                                                                                                                
Matos           ST_CLERK                                                                                                                                                                                
Vargas          ST_CLERK                                                                                                                                                                                
Zlotkey         SA_MAN                                                                                                                                                                                  
Abel            SA_REP                                                                                                                                                                                  
Taylor          SA_REP                                                                                                                                                                                  
Grant           SA_REP                                                                                                                                                                                  
Whalen          AD_ASST                                                                                                                                                                                 
Hartstein       MK_MAN                                                                                                                                                                                  
Fay             MK_REP                                                                                                                                                                                  
Higgins         AC_MGR                                                                                                                                                                                  
Gietz           AC_ACCOUNT                                                                                                                                                                              

20 rows selected.

SQL> SELECT LAST_NAME ,JOB_ID FROM EMPLOYEES WHERE JOB_ID <> ALL('IT_PROG','ST_CLERK','SA_REP');

LAST_NAME       JOB_ID                                                                                                                                                                                  
--------------- ----------                                                                                                                                                                              
King            AD_PRES                                                                                                                                                                                 
Kochhar         AD_VP                                                                                                                                                                                   
De Haan         AD_VP                                                                                                                                                                                   
Mourgos         ST_MAN                                                                                                                                                                                  
Zlotkey         SA_MAN                                                                                                                                                                                  
Whalen          AD_ASST                                                                                                                                                                                 
Hartstein       MK_MAN                                                                                                                                                                                  
Fay             MK_REP                                                                                                                                                                                  
Higgins         AC_MGR                                                                                                                                                                                  
Gietz           AC_ACCOUNT                                                                                                                                                                              

10 rows selected.

SQL> REM ABOVE IS THE WRITE ANSWER
SQL> 
SQL> SELECT LAST_NAME ,JOB_ID FROM EMPLOYEES WHERE JOB_ID NOT IN ('IT_PROG','ST_CLERK','SA_REP');

LAST_NAME       JOB_ID                                                                                                                                                                                  
--------------- ----------                                                                                                                                                                              
King            AD_PRES                                                                                                                                                                                 
Kochhar         AD_VP                                                                                                                                                                                   
De Haan         AD_VP                                                                                                                                                                                   
Mourgos         ST_MAN                                                                                                                                                                                  
Zlotkey         SA_MAN                                                                                                                                                                                  
Whalen          AD_ASST                                                                                                                                                                                 
Hartstein       MK_MAN                                                                                                                                                                                  
Fay             MK_REP                                                                                                                                                                                  
Higgins         AC_MGR                                                                                                                                                                                  
Gietz           AC_ACCOUNT                                                                                                                                                                              

10 rows selected.

SQL> SELECT LAST_NAME ,JOB_ID FROM EMPLOYEES WHERE JOB_ID != ALL('IT_PROG','ST_CLERK','SA_REP');

LAST_NAME       JOB_ID                                                                                                                                                                                  
--------------- ----------                                                                                                                                                                              
King            AD_PRES                                                                                                                                                                                 
Kochhar         AD_VP                                                                                                                                                                                   
De Haan         AD_VP                                                                                                                                                                                   
Mourgos         ST_MAN                                                                                                                                                                                  
Zlotkey         SA_MAN                                                                                                                                                                                  
Whalen          AD_ASST                                                                                                                                                                                 
Hartstein       MK_MAN                                                                                                                                                                                  
Fay             MK_REP                                                                                                                                                                                  
Higgins         AC_MGR                                                                                                                                                                                  
Gietz           AC_ACCOUNT                                                                                                                                                                              

10 rows selected.

SQL> SELECT LAST_NAME ,JOB_ID FROM EMPLOYEES WHERE JOB_ID ^= ALL('IT_PROG','ST_CLERK','SA_REP');

LAST_NAME       JOB_ID                                                                                                                                                                                  
--------------- ----------                                                                                                                                                                              
King            AD_PRES                                                                                                                                                                                 
Kochhar         AD_VP                                                                                                                                                                                   
De Haan         AD_VP                                                                                                                                                                                   
Mourgos         ST_MAN                                                                                                                                                                                  
Zlotkey         SA_MAN                                                                                                                                                                                  
Whalen          AD_ASST                                                                                                                                                                                 
Hartstein       MK_MAN                                                                                                                                                                                  
Fay             MK_REP                                                                                                                                                                                  
Higgins         AC_MGR                                                                                                                                                                                  
Gietz           AC_ACCOUNT                                                                                                                                                                              

10 rows selected.

SQL> 
SQL> 
SQL> REM PAIR WISE COMPARISON
SQL> 
SQL> SELECT DEPARTMENT_ID ,MANAGER_ID,FIRST_NAME FROM EMPLOYEES WHERE (DEPARTMENT_ID,MANAGER_ID) IN ((60,103),(20,100));

DEPARTMENT_ID MANAGER_ID FIRST_NAME                                                                                                                                                                     
------------- ---------- ---------------                                                                                                                                                                
           60        103 Bruce                                                                                                                                                                          
           60        103 Diana                                                                                                                                                                          
           20        100 Michael                                                                                                                                                                        

SQL> 
SQL> 
SQL> 
SQL> SPOOL OFF;
