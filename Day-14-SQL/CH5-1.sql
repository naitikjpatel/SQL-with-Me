SQL> 
SQL> REM NOW WE START THE CHAPTER 5 : HERE WE DISCCUSS ABOUT THE MULTI ROW FUNCTION
SQL> 
SQL> REM TYPES OF FUNCTIONS: 1 SINGLE ROW FUNCTION 2 MULTI ROW FUNCTION
SQL> 
SQL> REM SINGLE ROW : IT TAKES SINGLE ROW AS INPUT AND RETURNS SINGLE ROW OUTPUT
SQL> 
SQL> REM SINGLE ROW : NO.OF INPUT ROWS ARE ALWAYS EQUIVALENT TO NO.OF OUTPUT ROWS
SQL> 
SQL> SELECT EMAIL,LOWER(EMAIL) FROM EMPLOYEES;

EMAIL      LOWER(EMAI                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
SKING      sking                                                                                                                                                                                        
NKOCHHAR   nkochhar                                                                                                                                                                                     
LDEHAAN    ldehaan                                                                                                                                                                                      
AHUNOLD    ahunold                                                                                                                                                                                      
BERNST     bernst                                                                                                                                                                                       
DLORENTZ   dlorentz                                                                                                                                                                                     
KMOURGOS   kmourgos                                                                                                                                                                                     
TRAJS      trajs                                                                                                                                                                                        
CDAVIES    cdavies                                                                                                                                                                                      
RMATOS     rmatos                                                                                                                                                                                       
PVARGAS    pvargas                                                                                                                                                                                      
EZLOTKEY   ezlotkey                                                                                                                                                                                     
EABEL      eabel                                                                                                                                                                                        
JTAYLOR    jtaylor                                                                                                                                                                                      
KGRANT     kgrant                                                                                                                                                                                       
JWHALEN    jwhalen                                                                                                                                                                                      
MHARTSTE   mhartste                                                                                                                                                                                     
PFAY       pfay                                                                                                                                                                                         
SHIGGINS   shiggins                                                                                                                                                                                     
WGIETZ     wgietz                                                                                                                                                                                       

20 rows selected.

SQL> 
SQL> REM SELECT SYNTAX: SELECT .. FROM .. WHERE ..GROUP BY /HAVING .. ORDER BY .. OFFSET .. FETCH..;
SQL> 
SQL> REM MULTI ROW: IT TAKES MULTIPLE ROWS AS INPUT AND MAY RETURN SINGLE OR MULTIPLE ROWS
SQL> 
SQL> REM WHEN WE OMIT GROUP BY CLAUSE ,THEN IT WILL RETURN SINGLE ROW
SQL> 
SQL> REM WHEN WE USE GROUP BY CLAUSE,THEN IT WILL RETURN MULTIPLE ROWS
SQL> 
SQL> 
SQL> SELECT SALARY FROM EMPLOYEES ORDER BY 1;

    SALARY                                                                                                                                                                                              
----------                                                                                                                                                                                              
      2500                                                                                                                                                                                              
      2600                                                                                                                                                                                              
      3100                                                                                                                                                                                              
      3500                                                                                                                                                                                              
      4200                                                                                                                                                                                              
      4400                                                                                                                                                                                              
      5800                                                                                                                                                                                              
      6000                                                                                                                                                                                              
      6000                                                                                                                                                                                              
      7000                                                                                                                                                                                              
      8300                                                                                                                                                                                              
      8600                                                                                                                                                                                              
      9000                                                                                                                                                                                              
     10500                                                                                                                                                                                              
     11000                                                                                                                                                                                              
     12000                                                                                                                                                                                              
     13000                                                                                                                                                                                              
     17000                                                                                                                                                                                              
     17000                                                                                                                                                                                              
     24000                                                                                                                                                                                              

20 rows selected.

SQL> 
SQL> REM LIST OF  MULTI ROW/GROUP/AGGREGATE/SUMMARY FUNCTIONS : MIN MAX COUNT AVG SUM
SQL> 
SQL> REM MIN : IT WILL RETURN MINIMUM/LOWEST VALUE FROM THE LIST
SQL> 
SQL> REM MAX : IT WILL RETURN MAXIMUM/HIGHEST VALUE FROM THE LIST
SQL> 
SQL> REM COUNT : IT WILL RETURN COUNT OF VALUES OF THE LIST
SQL> 
SQL> REM SUM : IT WILL RETURN TOTAL/SUM OF VALUES OF THE LIST
SQL> 
SQL> REM AVG : IT WIL RETURN AVERAGE OF THE VALUES OF THE LIST
SQL> 
SQL> 
SQL> SELECT MIN(SALARY) FROM EMPLOYEES;

MIN(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
       2500                                                                                                                                                                                             

SQL> SELECT MAX(SALARY) FROM EMPLOYEES;

MAX(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
      24000                                                                                                                                                                                             

SQL> SELECT COUNT(SALARY) FROM EMPLOYEES;

COUNT(SALARY)                                                                                                                                                                                           
-------------                                                                                                                                                                                           
           20                                                                                                                                                                                           

SQL> 
SQL> 
SQL> REM ALL SUMMARY FUNCTIONS IGNORE NULL VALUES EXCEPT COUNT(*)
SQL> 
SQL> SELECT SUM(SALARY) FROM EMPLOYEES;

SUM(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
     175500                                                                                                                                                                                             

SQL> SELECT AVG(SALARY) FROM EMPLOYEES;

AVG(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
       8775                                                                                                                                                                                             

SQL> 
SQL> SELECT AVG(SALARY),SUM(SALARY)/COUNT(SALARY) FROM EMPLOYEES;

AVG(SALARY) SUM(SALARY)/COUNT(SALARY)                                                                                                                                                                   
----------- -------------------------                                                                                                                                                                   
       8775                      8775                                                                                                                                                                   

SQL> 
SQL> 
SQL> SELECT COMMISSION_PCT FROM EMPLOYEES;

COMMISSION_PCT                                                                                                                                                                                          
--------------                                                                                                                                                                                          
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
            .2                                                                                                                                                                                          
            .3                                                                                                                                                                                          
            .3                                                                                                                                                                                          
           .15                                                                                                                                                                                          
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        

20 rows selected.

SQL> 
SQL> SELECT COUNT(COMMISSION_PCT) FROM EMPLOYEES;

COUNT(COMMISSION_PCT)                                                                                                                                                                                   
---------------------                                                                                                                                                                                   
                    4                                                                                                                                                                                   

SQL> SELECT COUNT(*) FROM EMPLOYEES;

  COUNT(*)                                                                                                                                                                                              
----------                                                                                                                                                                                              
        20                                                                                                                                                                                              

SQL> 
SQL> 
SQL> REM COUNT(*) IT WILL ALWAYS COUNT ALL ROWS OF THE TABLE,WHETHER TABLE HAS SOME NULL VALUE OR NOT.
SQL> 
SQL> REM DISTINCT/UNIQUE CAN BE USED AS PREFIX TO ALL SUMMARY FUNCTION INPUT.
SQL> 
SQL> SELECT COUNT(COMMISSION_PCT),COUNT(DISTINCT COMMISSION_PCT),COUNT(UNIQUE COMMISSION_PCT) FROM EMPLOYEES;

COUNT(COMMISSION_PCT) COUNT(DISTINCTCOMMISSION_PCT) COUNT(UNIQUECOMMISSION_PCT)                                                                                                                         
--------------------- ----------------------------- ---------------------------                                                                                                                         
                    4                             3                           3                                                                                                                         

SQL> 
SQL> SELECT COUNT(SALARY) -COUNT(DISTINCT SALARY) FROM EMPLOYEES;

COUNT(SALARY)-COUNT(DISTINCTSALARY)                                                                                                                                                                     
-----------------------------------                                                                                                                                                                     
                                  2                                                                                                                                                                     

SQL> 
SQL> SELECT SUM(SALARY) -SUM(DISTINCT SALARY) FROM EMPLOYEES;

SUM(SALARY)-SUM(DISTINCTSALARY)                                                                                                                                                                         
-------------------------------                                                                                                                                                                         
                          23000                                                                                                                                                                         

SQL> 
SQL> REM ALL ABOVE EXAMPLES WERE USING NUMBER AS INPUT WITH SUMMARY FUNCTIONS.
SQL> 
SQL> REM SUMMARY FUNCTION WITH DATE INPUT.
SQL> 
SQL> 
SQL> SELECT HIRE_DATE FROM EMPLOYEES ORDER BY 1;

HIRE_DATE                                                                                                                                                                                               
---------                                                                                                                                                                                               
17-JUL-87                                                                                                                                                                                               
17-SEP-87                                                                                                                                                                                               
21-SEP-89                                                                                                                                                                                               
03-JAN-90                                                                                                                                                                                               
21-MAY-91                                                                                                                                                                                               
13-JAN-93                                                                                                                                                                                               
07-JUN-94                                                                                                                                                                                               
07-JUN-94                                                                                                                                                                                               
17-OCT-95                                                                                                                                                                                               
17-FEB-96                                                                                                                                                                                               
11-MAY-96                                                                                                                                                                                               
29-JAN-97                                                                                                                                                                                               
17-AUG-97                                                                                                                                                                                               
15-MAR-98                                                                                                                                                                                               
24-MAR-98                                                                                                                                                                                               
09-JUL-98                                                                                                                                                                                               
07-FEB-99                                                                                                                                                                                               
24-MAY-99                                                                                                                                                                                               
16-NOV-99                                                                                                                                                                                               
29-JAN-00                                                                                                                                                                                               

20 rows selected.

SQL> SELECT MIN(HIRE_DATE),MAX(HIRE_DATE) FROM EMPLOYEES ORDER BY 1;

MIN(HIRE_ MAX(HIRE_                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 29-JAN-00                                                                                                                                                                                     

SQL> SELECT COUNT(HIRE_DATE),COUNT(DISTINCT HIRE_DATE),COUNT(*) FROM EMPLOYEES ORDER BY 1;

COUNT(HIRE_DATE) COUNT(DISTINCTHIRE_DATE)   COUNT(*)                                                                                                                                                    
---------------- ------------------------ ----------                                                                                                                                                    
              20                       19         20                                                                                                                                                    

SQL> 
SQL> 
SQL> SELECT SUM(HIRE_DATE),AVG(HIRE_DATE) FROM EMPLOYEES ORDER BY 1;
SELECT SUM(HIRE_DATE),AVG(HIRE_DATE) FROM EMPLOYEES ORDER BY 1
           *
ERROR at line 1:
ORA-00932: inconsistent datatypes: expected NUMBER got DATE 


SQL> 
SQL> REM SUM AND AVG FUNCTION WILL NOT ACCEPT DATE INPUT
SQL> 
SQL> REM SUMMARY FUNCTION WITH CHARACTER INPUTS
SQL> 
SQL> SELECT LAST_NAME FROM EMPLOYEES ORDER BY 1 DESC;

LAST_NAME                                                                                                                                                                                               
---------------                                                                                                                                                                                         
Zlotkey                                                                                                                                                                                                 
Whalen                                                                                                                                                                                                  
Vargas                                                                                                                                                                                                  
Taylor                                                                                                                                                                                                  
Rajs                                                                                                                                                                                                    
Mourgos                                                                                                                                                                                                 
Matos                                                                                                                                                                                                   
Lorentz                                                                                                                                                                                                 
Kochhar                                                                                                                                                                                                 
King                                                                                                                                                                                                    
Hunold                                                                                                                                                                                                  
Higgins                                                                                                                                                                                                 
Hartstein                                                                                                                                                                                               
Grant                                                                                                                                                                                                   
Gietz                                                                                                                                                                                                   
Fay                                                                                                                                                                                                     
Ernst                                                                                                                                                                                                   
De Haan                                                                                                                                                                                                 
Davies                                                                                                                                                                                                  
Abel                                                                                                                                                                                                    

20 rows selected.

SQL> 
SQL> SELECT MIN(LAST_NAME),MAX(LAST_NAME),COUNT(LAST_NAME) FROM EMPLOYEES;

MIN(LAST_NAME)  MAX(LAST_NAME)  COUNT(LAST_NAME)                                                                                                                                                        
--------------- --------------- ----------------                                                                                                                                                        
Abel            Zlotkey                       20                                                                                                                                                        

SQL> SELECT AVG(LAST_NAME),SUM(LAST_NAME) FROM EMPLOYEES;
SELECT AVG(LAST_NAME),SUM(LAST_NAME) FROM EMPLOYEES
           *
ERROR at line 1:
ORA-01722: invalid number 


SQL> 
SQL> REM SUM AND AVG FUNCTION WILL NOT SUPPORT CHARACTER INPUTS
SQL> 
SQL> REM ALL SUMMARY FUNCTIONS SUPPORT NUMBER INPUTS
SQL> 
SQL> REM SUM AND AVG WILL NOT SUPPORT NON-NUMERIC INPUT
SQL> 
SQL> REM DISPLAY TOTAL SALARY PAID BY COMPANY
SQL> 
SQL> SELECT SUM(SALARY) FROM EMPLOYEES;

SUM(SALARY)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
     175500                                                                                                                                                                                             

SQL> 
SQL> REM DISPLAY HIRE_DATE ON WHICH FIRST EMPLOYEES WAS HIRED
SQL> 
SQL> SELECT MIN(HIRE_DATE) FROM EMPLOYEES;

MIN(HIRE_                                                                                                                                                                                               
---------                                                                                                                                                                                               
17-JUL-87                                                                                                                                                                                               

SQL> 
SQL> REM DISPLAY HIGHEST COMMISSION AMOUNT PAID BY COMPANY
SQL> 
SQL> SELECT MAX(SALARY * COMMISSION_PCT) FROM EMPLOYEES;

MAX(SALARY*COMMISSION_PCT)                                                                                                                                                                              
--------------------------                                                                                                                                                                              
                      3300                                                                                                                                                                              

SQL> 
SQL> SPOOL OFF;
