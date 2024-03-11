SQL> 
SQL> 
SQL> REM 1 GENERAL FUNCTIONS 2 CONVERSION FUNCTION
SQL> 
SQL> 
SQL> REM TYPES OF GENERAL FUNCTIONS: 1 NULL RELATED FUNCTIONS 2 CONDITIONAL FUNCTIONS
SQL> 
SQL> REM LIST OF NULL RELATE FUNCTION : NVL ,NVL2 ,NULLIF ,COALESCE
SQL> 
SQL> REM LIST OF CONDITIONAL FUNCTIONS: DECODE, CASE ... WHEN ... THEN ... ELSE ...END, CASE WHEN ... THEN ..ELSE..
SQL> 
SQL> 
SQL> REM LIST OF NULL RELATE FUNCTION : NVL ,NVL2 ,NULLIF ,COALESCE
SQL> 
SQL> REM NVL: TO REPLACE ALL NULL VALUES WITH ANOTHER VALUES
SQL> 
SQL> REM IT REQUIRES TWO ARGUMENTS
SQL> 
SQL> REM DATA TYPES OF BOTH ARGUMENTS MUST BE SAME
SQL> 
SQL> SELECT FIRST_NAME, COMMISSION_PCT FROM EMPLOYEES;

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

SQL> 
SQL> REM NOW I REPLACE NULL  VALUES WITH 0 USING THE NVL (NULL RELATED FUNCTION)
SQL> 
SQL> SELECT FIRST_NAME ,COMMISSION_PCT ,NVL(COMMISSION_PCT,0) FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT NVL(COMMISSION_PCT,0)                                                                                                                                                    
--------------- -------------- ---------------------                                                                                                                                                    
Steven                                             0                                                                                                                                                    
Neena                                              0                                                                                                                                                    
Lex                                                0                                                                                                                                                    
Alexander                                          0                                                                                                                                                    
Bruce                                              0                                                                                                                                                    
Diana                                              0                                                                                                                                                    
Kevin                                              0                                                                                                                                                    
Trenna                                             0                                                                                                                                                    
Curtis                                             0                                                                                                                                                    
Randall                                            0                                                                                                                                                    
Peter                                              0                                                                                                                                                    
Eleni                       .2                    .2                                                                                                                                                    
Ellen                       .3                    .3                                                                                                                                                    
Jonathon                    .3                    .3                                                                                                                                                    
Kimerely                   .15                   .15                                                                                                                                                    
Jennifer                                           0                                                                                                                                                    
Michael                                            0                                                                                                                                                    
Pat                                                0                                                                                                                                                    
Shelley                                            0                                                                                                                                                    
William                                            0                                                                                                                                                    

20 rows selected.

SQL> 
SQL> REM COMPANY DECIDES TO PAY 12% TO ALL WHO DOESN'T GET ANY COMMISSION
SQL> 
SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL(COMMISSION_PCT,0.12) FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT NVL(COMMISSION_PCT,0.12)                                                                                                                                                 
--------------- -------------- ------------------------                                                                                                                                                 
Steven                                              .12                                                                                                                                                 
Neena                                               .12                                                                                                                                                 
Lex                                                 .12                                                                                                                                                 
Alexander                                           .12                                                                                                                                                 
Bruce                                               .12                                                                                                                                                 
Diana                                               .12                                                                                                                                                 
Kevin                                               .12                                                                                                                                                 
Trenna                                              .12                                                                                                                                                 
Curtis                                              .12                                                                                                                                                 
Randall                                             .12                                                                                                                                                 
Peter                                               .12                                                                                                                                                 
Eleni                       .2                       .2                                                                                                                                                 
Ellen                       .3                       .3                                                                                                                                                 
Jonathon                    .3                       .3                                                                                                                                                 
Kimerely                   .15                      .15                                                                                                                                                 
Jennifer                                            .12                                                                                                                                                 
Michael                                             .12                                                                                                                                                 
Pat                                                 .12                                                                                                                                                 
Shelley                                             .12                                                                                                                                                 
William                                             .12                                                                                                                                                 

20 rows selected.

SQL> 
SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL(COMMISSION_PCT,0.12) NEW_COMM_PCT FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT NEW_COMM_PCT                                                                                                                                                             
--------------- -------------- ------------                                                                                                                                                             
Steven                                  .12                                                                                                                                                             
Neena                                   .12                                                                                                                                                             
Lex                                     .12                                                                                                                                                             
Alexander                               .12                                                                                                                                                             
Bruce                                   .12                                                                                                                                                             
Diana                                   .12                                                                                                                                                             
Kevin                                   .12                                                                                                                                                             
Trenna                                  .12                                                                                                                                                             
Curtis                                  .12                                                                                                                                                             
Randall                                 .12                                                                                                                                                             
Peter                                   .12                                                                                                                                                             
Eleni                       .2           .2                                                                                                                                                             
Ellen                       .3           .3                                                                                                                                                             
Jonathon                    .3           .3                                                                                                                                                             
Kimerely                   .15          .15                                                                                                                                                             
Jennifer                                .12                                                                                                                                                             
Michael                                 .12                                                                                                                                                             
Pat                                     .12                                                                                                                                                             
Shelley                                 .12                                                                                                                                                             
William                                 .12                                                                                                                                                             

20 rows selected.

SQL> 
SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL(COMMISSION_PCT,'NA') NEW_COMM_PCT FROM EMPLOYEES;
SELECT FIRST_NAME,COMMISSION_PCT ,NVL(COMMISSION_PCT,'NA') NEW_COMM_PCT FROM EMPLOYEES
                                                     *
ERROR at line 1:
ORA-01722: invalid number 


SQL> REM IT MEANS HERE WE NOT HAVE A SAME DATA TYPES OF THE 2 ARGUMENTS
SQL> 
SQL> 
SQL> REM WE NEED TO CONVERT NULL TO CHAR
SQL> 
SQL> REM TO_CHAR()
SQL> 
SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL(TO_CHAR(COMMISSION_PCT),'NA') NEW_COMM_PCT FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT NEW_COMM_PCT                                                                                                                                                             
--------------- -------------- ----------------------------------------                                                                                                                                 
Steven                         NA                                                                                                                                                                       
Neena                          NA                                                                                                                                                                       
Lex                            NA                                                                                                                                                                       
Alexander                      NA                                                                                                                                                                       
Bruce                          NA                                                                                                                                                                       
Diana                          NA                                                                                                                                                                       
Kevin                          NA                                                                                                                                                                       
Trenna                         NA                                                                                                                                                                       
Curtis                         NA                                                                                                                                                                       
Randall                        NA                                                                                                                                                                       
Peter                          NA                                                                                                                                                                       
Eleni                       .2 .2                                                                                                                                                                       
Ellen                       .3 .3                                                                                                                                                                       
Jonathon                    .3 .3                                                                                                                                                                       
Kimerely                   .15 .15                                                                                                                                                                      
Jennifer                       NA                                                                                                                                                                       
Michael                        NA                                                                                                                                                                       
Pat                            NA                                                                                                                                                                       
Shelley                        NA                                                                                                                                                                       
William                        NA                                                                                                                                                                       

20 rows selected.

SQL> 
SQL> 
SQL> 
SQL> REM NVL2: IT IS USED TO REPLACE NULL AS WELL AS NON-NULL VALUES WITH TWO DIFFERENT /SAME VALUE.
SQL> 
SQL> REM 12% COMMISSION TO THOSE WHO DOESN'T GET ANY COMMISSION , 5% MORE COMMISSION TO THOSE WHO GETS COMMISSION
SQL> 
SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL2(COMMISSION_PACT ,COMMISSION_PCT+0.05 ,.12) NEW_COMM_PCT FROM EMPLOYEES;
SELECT FIRST_NAME,COMMISSION_PCT ,NVL2(COMMISSION_PACT ,COMMISSION_PCT+0.05 ,.12) NEW_COMM_PCT FROM EMPLOYEES
                                       *
ERROR at line 1:
ORA-00904: "COMMISSION_PACT": invalid identifier 


SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL2(COMMISSION_PCT ,COMMISSION_PCT+0.05 ,.12) NEW_COMM_PCT FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT NEW_COMM_PCT                                                                                                                                                             
--------------- -------------- ------------                                                                                                                                                             
Steven                                  .12                                                                                                                                                             
Neena                                   .12                                                                                                                                                             
Lex                                     .12                                                                                                                                                             
Alexander                               .12                                                                                                                                                             
Bruce                                   .12                                                                                                                                                             
Diana                                   .12                                                                                                                                                             
Kevin                                   .12                                                                                                                                                             
Trenna                                  .12                                                                                                                                                             
Curtis                                  .12                                                                                                                                                             
Randall                                 .12                                                                                                                                                             
Peter                                   .12                                                                                                                                                             
Eleni                       .2          .25                                                                                                                                                             
Ellen                       .3          .35                                                                                                                                                             
Jonathon                    .3          .35                                                                                                                                                             
Kimerely                   .15           .2                                                                                                                                                             
Jennifer                                .12                                                                                                                                                             
Michael                                 .12                                                                                                                                                             
Pat                                     .12                                                                                                                                                             
Shelley                                 .12                                                                                                                                                             
William                                 .12                                                                                                                                                             

20 rows selected.

SQL> 
SQL> REM ARITHMETIC WITH NULL ALWAYS GIVES THE NULL VALUES
SQL> 
SQL> 
SQL> REM DISPLAY YES FOR THOSE WHO GETS COMMISSION ,AND NO FOR REMAINING
SQL> 
SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL2 (COMMISSION_PCT ,'YES','NO') FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT NVL                                                                                                                                                                      
--------------- -------------- ---                                                                                                                                                                      
Steven                         NO                                                                                                                                                                       
Neena                          NO                                                                                                                                                                       
Lex                            NO                                                                                                                                                                       
Alexander                      NO                                                                                                                                                                       
Bruce                          NO                                                                                                                                                                       
Diana                          NO                                                                                                                                                                       
Kevin                          NO                                                                                                                                                                       
Trenna                         NO                                                                                                                                                                       
Curtis                         NO                                                                                                                                                                       
Randall                        NO                                                                                                                                                                       
Peter                          NO                                                                                                                                                                       
Eleni                       .2 YES                                                                                                                                                                      
Ellen                       .3 YES                                                                                                                                                                      
Jonathon                    .3 YES                                                                                                                                                                      
Kimerely                   .15 YES                                                                                                                                                                      
Jennifer                       NO                                                                                                                                                                       
Michael                        NO                                                                                                                                                                       
Pat                            NO                                                                                                                                                                       
Shelley                        NO                                                                                                                                                                       
William                        NO                                                                                                                                                                       

20 rows selected.

SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL2 (TO_CHAR(COMMISSION_PCT) ,'YES','NO') FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT NVL                                                                                                                                                                      
--------------- -------------- ---                                                                                                                                                                      
Steven                         NO                                                                                                                                                                       
Neena                          NO                                                                                                                                                                       
Lex                            NO                                                                                                                                                                       
Alexander                      NO                                                                                                                                                                       
Bruce                          NO                                                                                                                                                                       
Diana                          NO                                                                                                                                                                       
Kevin                          NO                                                                                                                                                                       
Trenna                         NO                                                                                                                                                                       
Curtis                         NO                                                                                                                                                                       
Randall                        NO                                                                                                                                                                       
Peter                          NO                                                                                                                                                                       
Eleni                       .2 YES                                                                                                                                                                      
Ellen                       .3 YES                                                                                                                                                                      
Jonathon                    .3 YES                                                                                                                                                                      
Kimerely                   .15 YES                                                                                                                                                                      
Jennifer                       NO                                                                                                                                                                       
Michael                        NO                                                                                                                                                                       
Pat                            NO                                                                                                                                                                       
Shelley                        NO                                                                                                                                                                       
William                        NO                                                                                                                                                                       

20 rows selected.

SQL> 
SQL> REM NVL2 IS WORK WITH DIFFERENT DATA TYPE OF THE ARGUMENTS
SQL> 
SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL2 (COMMISSION_PCT ,'YES',0) FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT NVL                                                                                                                                                                      
--------------- -------------- ---                                                                                                                                                                      
Steven                         0                                                                                                                                                                        
Neena                          0                                                                                                                                                                        
Lex                            0                                                                                                                                                                        
Alexander                      0                                                                                                                                                                        
Bruce                          0                                                                                                                                                                        
Diana                          0                                                                                                                                                                        
Kevin                          0                                                                                                                                                                        
Trenna                         0                                                                                                                                                                        
Curtis                         0                                                                                                                                                                        
Randall                        0                                                                                                                                                                        
Peter                          0                                                                                                                                                                        
Eleni                       .2 YES                                                                                                                                                                      
Ellen                       .3 YES                                                                                                                                                                      
Jonathon                    .3 YES                                                                                                                                                                      
Kimerely                   .15 YES                                                                                                                                                                      
Jennifer                       0                                                                                                                                                                        
Michael                        0                                                                                                                                                                        
Pat                            0                                                                                                                                                                        
Shelley                        0                                                                                                                                                                        
William                        0                                                                                                                                                                        

20 rows selected.

SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL2 (COMMISSION_PCT ,1,'NO') FROM EMPLOYEES;
SELECT FIRST_NAME,COMMISSION_PCT ,NVL2 (COMMISSION_PCT ,1,'NO') FROM EMPLOYEES
                                                          *
ERROR at line 1:
ORA-01722: invalid number 


SQL> REM NOW NOTE:
SQL> 
SQL> REM NVL2 TRIES TO CONVERT DATA TYPE OF 3RD ARGUMENT INTO DATA TYPE OF 2ND ARGUMENT
SQL> 
SQL> REM ANY DATA TYPE VALUES CAN BE CONVERED TO CHAR/CHARACTER DATA TYPE
SQL> 
SQL> ----------------------------------REM NULLIF:--------------
SQL> 
SQL> 
SQL> 
SQL> REM NULLIF: IT REQUIRES TWO ARGUMENTS ,IT WILL COMPARE BOTH ,IF BOTH ARE IDENTICAL/SAME IT WILL RETURN NULL,OTHERWISE IT WILL RETURN FIRST ARGUMENT
SQL> 
SQL> SELECT FIRST_NAME ,LAST_NAME ,SUBSTR(FIRST_NAME,2,1) ,SUBSTR(LAST_NAME,2,1) FROM EMPLOYEES;

FIRST_NAME      LAST_NAME       SUBS SUBS                                                                                                                                                               
--------------- --------------- ---- ----                                                                                                                                                               
Steven          King            t    i                                                                                                                                                                  
Neena           Kochhar         e    o                                                                                                                                                                  
Lex             De Haan         e    e                                                                                                                                                                  
Alexander       Hunold          l    u                                                                                                                                                                  
Bruce           Ernst           r    r                                                                                                                                                                  
Diana           Lorentz         i    o                                                                                                                                                                  
Kevin           Mourgos         e    o                                                                                                                                                                  
Trenna          Rajs            r    a                                                                                                                                                                  
Curtis          Davies          u    a                                                                                                                                                                  
Randall         Matos           a    a                                                                                                                                                                  
Peter           Vargas          e    a                                                                                                                                                                  
Eleni           Zlotkey         l    l                                                                                                                                                                  
Ellen           Abel            l    b                                                                                                                                                                  
Jonathon        Taylor          o    a                                                                                                                                                                  
Kimerely        Grant           i    r                                                                                                                                                                  
Jennifer        Whalen          e    h                                                                                                                                                                  
Michael         Hartstein       i    a                                                                                                                                                                  
Pat             Fay             a    a                                                                                                                                                                  
Shelley         Higgins         h    i                                                                                                                                                                  
William         Gietz           i    i                                                                                                                                                                  

20 rows selected.

SQL> SELECT FIRST_NAME ,LAST_NAME ,SUBSTR(FIRST_NAME,2,1) ,SUBSTR(LAST_NAME,2,1), FROM EMPLOYEES;
SELECT FIRST_NAME ,LAST_NAME ,SUBSTR(FIRST_NAME,2,1) ,SUBSTR(LAST_NAME,2,1), FROM EMPLOYEES
                                                                             *
ERROR at line 1:
ORA-00936: missing expression 


SQL> SELECT FIRST_NAME ,LAST_NAME ,SUBSTR(FIRST_NAME,2,1) ,SUBSTR(LAST_NAME,2,1) ,
  2  NULLIF (SUBSTR(FIRST_NAME,2,1) ,SUBSTR(LAST_NAME,2,1)) FROM EMPLOYEES;

FIRST_NAME      LAST_NAME       SUBS SUBS NULL                                                                                                                                                          
--------------- --------------- ---- ---- ----                                                                                                                                                          
Steven          King            t    i    t                                                                                                                                                             
Neena           Kochhar         e    o    e                                                                                                                                                             
Lex             De Haan         e    e                                                                                                                                                                  
Alexander       Hunold          l    u    l                                                                                                                                                             
Bruce           Ernst           r    r                                                                                                                                                                  
Diana           Lorentz         i    o    i                                                                                                                                                             
Kevin           Mourgos         e    o    e                                                                                                                                                             
Trenna          Rajs            r    a    r                                                                                                                                                             
Curtis          Davies          u    a    u                                                                                                                                                             
Randall         Matos           a    a                                                                                                                                                                  
Peter           Vargas          e    a    e                                                                                                                                                             
Eleni           Zlotkey         l    l                                                                                                                                                                  
Ellen           Abel            l    b    l                                                                                                                                                             
Jonathon        Taylor          o    a    o                                                                                                                                                             
Kimerely        Grant           i    r    i                                                                                                                                                             
Jennifer        Whalen          e    h    e                                                                                                                                                             
Michael         Hartstein       i    a    i                                                                                                                                                             
Pat             Fay             a    a                                                                                                                                                                  
Shelley         Higgins         h    i    h                                                                                                                                                             
William         Gietz           i    i                                                                                                                                                                  

20 rows selected.

SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL2 (COMMISSION_PCT ,TO_CHAR(1),'NO') FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT NV                                                                                                                                                                       
--------------- -------------- --                                                                                                                                                                       
Steven                         NO                                                                                                                                                                       
Neena                          NO                                                                                                                                                                       
Lex                            NO                                                                                                                                                                       
Alexander                      NO                                                                                                                                                                       
Bruce                          NO                                                                                                                                                                       
Diana                          NO                                                                                                                                                                       
Kevin                          NO                                                                                                                                                                       
Trenna                         NO                                                                                                                                                                       
Curtis                         NO                                                                                                                                                                       
Randall                        NO                                                                                                                                                                       
Peter                          NO                                                                                                                                                                       
Eleni                       .2 1                                                                                                                                                                        
Ellen                       .3 1                                                                                                                                                                        
Jonathon                    .3 1                                                                                                                                                                        
Kimerely                   .15 1                                                                                                                                                                        
Jennifer                       NO                                                                                                                                                                       
Michael                        NO                                                                                                                                                                       
Pat                            NO                                                                                                                                                                       
Shelley                        NO                                                                                                                                                                       
William                        NO                                                                                                                                                                       

20 rows selected.

SQL> SELECT FIRST_NAME,COMMISSION_PCT ,NVL2 (COMMISSION_PCT ,'1','NO') FROM EMPLOYEES;

FIRST_NAME      COMMISSION_PCT NV                                                                                                                                                                       
--------------- -------------- --                                                                                                                                                                       
Steven                         NO                                                                                                                                                                       
Neena                          NO                                                                                                                                                                       
Lex                            NO                                                                                                                                                                       
Alexander                      NO                                                                                                                                                                       
Bruce                          NO                                                                                                                                                                       
Diana                          NO                                                                                                                                                                       
Kevin                          NO                                                                                                                                                                       
Trenna                         NO                                                                                                                                                                       
Curtis                         NO                                                                                                                                                                       
Randall                        NO                                                                                                                                                                       
Peter                          NO                                                                                                                                                                       
Eleni                       .2 1                                                                                                                                                                        
Ellen                       .3 1                                                                                                                                                                        
Jonathon                    .3 1                                                                                                                                                                        
Kimerely                   .15 1                                                                                                                                                                        
Jennifer                       NO                                                                                                                                                                       
Michael                        NO                                                                                                                                                                       
Pat                            NO                                                                                                                                                                       
Shelley                        NO                                                                                                                                                                       
William                        NO                                                                                                                                                                       

20 rows selected.

SQL> 
SQL> 
SQL> REM ----------------------COALESCE -----------------
> 
SQL> REM COALESCE : IT ACCEPTS INFINITE ARGUMENTS
SQL> 
SQL> REM IF WILL CHECK FROM LEFT TO RIGHT
SQL> 
SQL> REM IT WILL RETURN FIRST NON-NULL VALUE FROM LIST OF ARGUMENTS
SQL> 
SQL> SELECT * FROM CONTACTNO;

NAME                     MOBILE     OPHONE     RPHONE                                                                                                                                                   
-------------------- ---------- ---------- ----------                                                                                                                                                   
AMIT                 1234567890 9876543210 1122334455                                                                                                                                                   
BIREN                6644882244            9876452316                                                                                                                                                   
CHETAN                          2277554488                                                                                                                                                              
DHIREN                                     6789054123                                                                                                                                                   
EKTA                                                                                                                                                                                                    

SQL> 
SQL> 
SQL> SELECT NAME,MOBILE CONTACTINFO FROM CONTACTNO;

NAME                 CONTACTINFO                                                                                                                                                                        
-------------------- -----------                                                                                                                                                                        
AMIT                  1234567890                                                                                                                                                                        
BIREN                 6644882244                                                                                                                                                                        
CHETAN                                                                                                                                                                                                  
DHIREN                                                                                                                                                                                                  
EKTA                                                                                                                                                                                                    

SQL> 
SQL> SELECT NAME ,COALESCE(MOBILE,OPHONE,RPHONE) FROM CONTACTNO;

NAME                 COALESCE(MOBILE,OPHONE,RPHONE)                                                                                                                                                     
-------------------- ------------------------------                                                                                                                                                     
AMIT                                     1234567890                                                                                                                                                     
BIREN                                    6644882244                                                                                                                                                     
CHETAN                                   2277554488                                                                                                                                                     
DHIREN                                   6789054123                                                                                                                                                     
EKTA                                                                                                                                                                                                    

SQL> 
SQL> SELECT NAME ,COALESCE(MOBILE,OPHONE,RPHONE,9834738632) FROM CONTACTNO;

NAME                 COALESCE(MOBILE,OPHONE,RPHONE,9834738632)                                                                                                                                          
-------------------- -----------------------------------------                                                                                                                                          
AMIT                                                1234567890                                                                                                                                          
BIREN                                               6644882244                                                                                                                                          
CHETAN                                              2277554488                                                                                                                                          
DHIREN                                              6789054123                                                                                                                                          
EKTA                                                9834738632                                                                                                                                          

SQL> REM IF ROWS HAVE ALL THE NULL VALUE THEN IT TAKE THE DEFAULT NULL VALUES FROM THE ARGUMENTS
SQL> 
SQL> 
SQL> REM NVL ,NVL2,NULLIF ,COALESCE
SQL> 
SQL> REM TRUNC ,ROUND : DATE :MONTH,Q,YEAR
SQL> 
SQL> 
SQL> SELECT NAME ,COALESCE(MOBILE,OPHONE,RPHONE,'NA') FROM CONTACTNO;
SELECT NAME ,COALESCE(MOBILE,OPHONE,RPHONE,'NA') FROM CONTACTNO
                                           *
ERROR at line 1:
ORA-00932: inconsistent datatypes: expected NUMBER got CHAR 


SQL> SELECT NAME ,COALESCE(TO_CHAR(MOBILE),TO_CHAR(OPHONE),TO_CHAR(RPHONE),'NA') FROM CONTACTNO;

NAME                 COALESCE(TO_CHAR(MOBILE),TO_CHAR(OPHONE)                                                                                                                                           
-------------------- ----------------------------------------                                                                                                                                           
AMIT                 1234567890                                                                                                                                                                         
BIREN                6644882244                                                                                                                                                                         
CHETAN               2277554488                                                                                                                                                                         
DHIREN               6789054123                                                                                                                                                                         
EKTA                 NA                                                                                                                                                                                 

SQL> 
SQL> 
SQL> 
SQL> SPOOL OFF;
