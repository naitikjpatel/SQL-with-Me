SQL> 
SQL> REM NOW TODAY WE DISCUSS ABOUT THE FUNCTION
SQL> 
SQL> REM FUNCTION
SQL> SELECT POWER(10,3) FROM DUAL;

POWER(10,3)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
       1000                                                                                                                                                                                             

SQL> 
SQL> REM TYPES OF FUNCTION: 1 SINGLE ROW 2 MULTI ROW FUNCTION
SQL> 
SQL> REM SINGLE ROW/SCALAR FUNCTIONS : CHAPTER 3 AND 4
SQL> 
SQL> REM MULTI ROW FUNCTION : CHAPTER 5
SQL> 
SQL> REM TYPES OF SINGLE ROW FUNCTIONS : 1 CHARACTER 2 NUMBER 3 DATE 4 CONVERSION 5 GENERAL
SQL> 
SQL> REM CHAPTER 3: 1 CHARACTER 2 NUMBER 3 DATE
SQL> 
SQL> REM CHAPTER 4: 4 CONVERSION 5 GENERAL
SQL> 
SQL> 
SQL> REM TYPES OF CHARACTER FUNCTIONS: 1 CASE MANIPULATION 2 CHARACTER MANIPULATION
SQL> 
SQL> REM LIST OF CASE MANIPULATION FUNCTIONS: UPPER ,LOWER ,INITCAP
SQL> 
SQL> REM LIST OF CHARACTER MANIPULATION FUNCTIONS: CONCAT LPAD RPAD LTRIM RTRIM TRIM TRANSLATE REPLACE LENGTH SUBSTR INSTR
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

SQL> 
SQL> SELECT FIRST_NAME,UPPER(FIRST_NAME) FROM EMPLOYEES;

FIRST_NAME      UPPER(FIRST_NAM                                                                                                                                                                         
--------------- ---------------                                                                                                                                                                         
Steven          STEVEN                                                                                                                                                                                  
Neena           NEENA                                                                                                                                                                                   
Lex             LEX                                                                                                                                                                                     
Alexander       ALEXANDER                                                                                                                                                                               
Bruce           BRUCE                                                                                                                                                                                   
Diana           DIANA                                                                                                                                                                                   
Kevin           KEVIN                                                                                                                                                                                   
Trenna          TRENNA                                                                                                                                                                                  
Curtis          CURTIS                                                                                                                                                                                  
Randall         RANDALL                                                                                                                                                                                 
Peter           PETER                                                                                                                                                                                   
Eleni           ELENI                                                                                                                                                                                   
Ellen           ELLEN                                                                                                                                                                                   
Jonathon        JONATHON                                                                                                                                                                                
Kimerely        KIMERELY                                                                                                                                                                                
Jennifer        JENNIFER                                                                                                                                                                                
Michael         MICHAEL                                                                                                                                                                                 
Pat             PAT                                                                                                                                                                                     
Shelley         SHELLEY                                                                                                                                                                                 
William         WILLIAM                                                                                                                                                                                 

20 rows selected.

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
SQL> SELECT INITCAP('amAR AKbar anTHOny') FROM DUAL;

INITCAP('AMARAKBAR                                                                                                                                                                                      
------------------                                                                                                                                                                                      
Amar Akbar Anthony                                                                                                                                                                                      

SQL> 
SQL> SELECT INITCAP('amAR$AKbar$anTHOny') FROM DUAL;

INITCAP('AMAR$AKBA                                                                                                                                                                                      
------------------                                                                                                                                                                                      
Amar$Akbar$Anthony                                                                                                                                                                                      

SQL> SELECT INITCAP('amAR5AKbar7anTHOny') FROM DUAL;

INITCAP('AMAR5AKBA                                                                                                                                                                                      
------------------                                                                                                                                                                                      
Amar5akbar7anthony                                                                                                                                                                                      

SQL> 
SQL> REM IN INIT METHOD IT ALLOWS THE SPACE AND DOLLER
SQL> REM IT MEANS DOLLER AS COUNT AS A SPERATOR IN THE INTIT METHOD
SQL> 
SQL> REM LIST OF CHARACTER MANIPULATION FUNCTIONS: CONCAT LPAD RPAD LTRIM RTRIM TRIM TRANSLATE REPLACE LENGTH SUBSTR INSTR
SQL> 
SQL> REM CONCATE TAKES TWO ARGUMENTS/PARAMETERS/INPUT AND WILL JOIN BOTH INTO SINGLE
SQL> 
SQL> SELECT FIRST_NAME ,LAST_NAME FROM EMPLOYEES;

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

SQL> SELECT FIRST_NAME || LAST_NAME FULL_NAME FROM EMPLOYEES;

FULL_NAME                                                                                                                                                                                               
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
SQL> REM CONCAT METHOD
SQL> 
SQL> SELECT CONCAT(FIRST_NAME,LAST_NAME ) FROM EMPLOYEES;

CONCAT(FIRST_NAME,LAST_NAME)                                                                                                                                                                            
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
SQL> 
SQL> SELECT FIRST_NAME || ' '|| LAST_NAME FULL_NAME FROM EMPLOYEES;

FULL_NAME                                                                                                                                                                                               
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

SQL> SELECT CONCAT(FIRST_NAEM,' ',LAST_NAME) FROM EMPLOYEES;
SELECT CONCAT(FIRST_NAEM,' ',LAST_NAME) FROM EMPLOYEES
       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> REM IT MEANS WE DEFINE THE NOTE -> THAT IS CONCAT TAKES TWO ARGUMENT ONLY -> SO HERE WE NEED TO WRITE THE NESTED CONCAT
SQL> 
SQL> SELECT CONCAT(FIRST_NAME,CONCAT(' ',LAST_NAME)) FROM EMPLOYEES;

CONCAT(FIRST_NAME,CONCAT('',LAS                                                                                                                                                                         
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

SQL> SELECT CONCAT(FIRST_NAME || ' ',LAST_NAME)) FROM EMPLOYEES;
SELECT CONCAT(FIRST_NAME || ' ',LAST_NAME)) FROM EMPLOYEES
                                          *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT CONCAT(FIRST_NAME || ' ',LAST_NAME) FROM EMPLOYEES;

CONCAT(FIRST_NAME||'',LAST_NAME                                                                                                                                                                         
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

SQL> SELECT CONCAT(FIRST_NAME ' ',||LAST_NAME) FROM EMPLOYEES;
SELECT CONCAT(FIRST_NAME ' ',||LAST_NAME) FROM EMPLOYEES
       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT CONCAT(FIRST_NAME, ' ' || LAST_NAME) FROM EMPLOYEES;

CONCAT(FIRST_NAME,''||LAST_NAME                                                                                                                                                                         
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

SQL> 
SQL> REM NESTED FUNCTIONS : FUNCTION WITHIN FUNCTION ,OUTER AND INNCER FUNCTION MAY BE SAME OR DIFFERENT ,WE CAN NEST UPTO n LEVEL
SQL> 
SQL> REM WHEN WE NEST FUNCTION ,INNER FUNCTION GETS EXCUTED FIRST
SQL> 
SQL> 
SQL> 
SQL> SELECT CONCAT(FIRST_NAME,CONCAT(' ',LAST_NAME)) FROM EMPLOYEES;

CONCAT(FIRST_NAME,CONCAT('',LAS                                                                                                                                                                         
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

SQL> 
SQL> SELECT CONCAT(CONCAT(FIRST_NAME,' '),LAST_NAME) FROM EMPLOYEES;

CONCAT(CONCAT(FIRST_NAME,''),LA                                                                                                                                                                         
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

SQL> 
SQL> REM CHARACTER FUNCTION WORKS WITH ALL 3 BASIC DATA TYPE INPUTS : NUMBER CHARACTER DATE
SQL> 
SQL> SELECT CONCAT(FIRST_NAME ,CONCAT(HIRE_DATE,SALARY)) FROM EMPLOYEES;

CONCAT(FIRST_NAME,CONCAT(HIRE_DATE,SALARY))                                                                                                                                                             
-------------------------------------------------------------------------                                                                                                                               
Steven17-JUL-8724000                                                                                                                                                                                    
Neena21-SEP-8917000                                                                                                                                                                                     
Lex13-JAN-9317000                                                                                                                                                                                       
Alexander03-JAN-909000                                                                                                                                                                                  
Bruce21-MAY-916000                                                                                                                                                                                      
Diana07-FEB-994200                                                                                                                                                                                      
Kevin16-NOV-995800                                                                                                                                                                                      
Trenna17-OCT-953500                                                                                                                                                                                     
Curtis29-JAN-973100                                                                                                                                                                                     
Randall15-MAR-982600                                                                                                                                                                                    
Peter09-JUL-982500                                                                                                                                                                                      
Eleni29-JAN-0010500                                                                                                                                                                                     
Ellen11-MAY-9611000                                                                                                                                                                                     
Jonathon24-MAR-988600                                                                                                                                                                                   
Kimerely24-MAY-997000                                                                                                                                                                                   
Jennifer17-SEP-874400                                                                                                                                                                                   
Michael17-FEB-9613000                                                                                                                                                                                   
Pat17-AUG-976000                                                                                                                                                                                        
Shelley07-JUN-9412000                                                                                                                                                                                   
William07-JUN-948300                                                                                                                                                                                    

20 rows selected.

SQL> 
SQL> 
SQL> 
SQL> REM LPAD: LEFT PADDING ,IT WILL TAKE 2 OR 3 ARGUMENTS
SQL> 
SQL> SELECT SALARY ,LPAD(SALARY,10,'*') FROM EMPLOYEES;

    SALARY LPAD(SALARY,10,'*')                                                                                                                                                                          
---------- ----------------------------------------                                                                                                                                                     
     24000 *****24000                                                                                                                                                                                   
     17000 *****17000                                                                                                                                                                                   
     17000 *****17000                                                                                                                                                                                   
      9000 ******9000                                                                                                                                                                                   
      6000 ******6000                                                                                                                                                                                   
      4200 ******4200                                                                                                                                                                                   
      5800 ******5800                                                                                                                                                                                   
      3500 ******3500                                                                                                                                                                                   
      3100 ******3100                                                                                                                                                                                   
      2600 ******2600                                                                                                                                                                                   
      2500 ******2500                                                                                                                                                                                   
     10500 *****10500                                                                                                                                                                                   
     11000 *****11000                                                                                                                                                                                   
      8600 ******8600                                                                                                                                                                                   
      7000 ******7000                                                                                                                                                                                   
      4400 ******4400                                                                                                                                                                                   
     13000 *****13000                                                                                                                                                                                   
      6000 ******6000                                                                                                                                                                                   
     12000 *****12000                                                                                                                                                                                   
      8300 ******8300                                                                                                                                                                                   

20 rows selected.

SQL> SELECT SALARY ,LPAD(SALARY,10) FROM EMPLOYEES;

    SALARY LPAD(SALARY,10)                                                                                                                                                                              
---------- ----------------------------------------                                                                                                                                                     
     24000      24000                                                                                                                                                                                   
     17000      17000                                                                                                                                                                                   
     17000      17000                                                                                                                                                                                   
      9000       9000                                                                                                                                                                                   
      6000       6000                                                                                                                                                                                   
      4200       4200                                                                                                                                                                                   
      5800       5800                                                                                                                                                                                   
      3500       3500                                                                                                                                                                                   
      3100       3100                                                                                                                                                                                   
      2600       2600                                                                                                                                                                                   
      2500       2500                                                                                                                                                                                   
     10500      10500                                                                                                                                                                                   
     11000      11000                                                                                                                                                                                   
      8600       8600                                                                                                                                                                                   
      7000       7000                                                                                                                                                                                   
      4400       4400                                                                                                                                                                                   
     13000      13000                                                                                                                                                                                   
      6000       6000                                                                                                                                                                                   
     12000      12000                                                                                                                                                                                   
      8300       8300                                                                                                                                                                                   

20 rows selected.

SQL> SELECT SALARY ,LPAD(SALARY,10,'+-') FROM EMPLOYEES;

    SALARY LPAD(SALARY,10,'+-')                                                                                                                                                                         
---------- ----------------------------------------                                                                                                                                                     
     24000 +-+-+24000                                                                                                                                                                                   
     17000 +-+-+17000                                                                                                                                                                                   
     17000 +-+-+17000                                                                                                                                                                                   
      9000 +-+-+-9000                                                                                                                                                                                   
      6000 +-+-+-6000                                                                                                                                                                                   
      4200 +-+-+-4200                                                                                                                                                                                   
      5800 +-+-+-5800                                                                                                                                                                                   
      3500 +-+-+-3500                                                                                                                                                                                   
      3100 +-+-+-3100                                                                                                                                                                                   
      2600 +-+-+-2600                                                                                                                                                                                   
      2500 +-+-+-2500                                                                                                                                                                                   
     10500 +-+-+10500                                                                                                                                                                                   
     11000 +-+-+11000                                                                                                                                                                                   
      8600 +-+-+-8600                                                                                                                                                                                   
      7000 +-+-+-7000                                                                                                                                                                                   
      4400 +-+-+-4400                                                                                                                                                                                   
     13000 +-+-+13000                                                                                                                                                                                   
      6000 +-+-+-6000                                                                                                                                                                                   
     12000 +-+-+12000                                                                                                                                                                                   
      8300 +-+-+-8300                                                                                                                                                                                   

20 rows selected.

SQL> SELECT SALARY ,LPAD(SALARY,15) FROM EMPLOYEES;

    SALARY LPAD(SALARY,15)                                                                                                                                                                              
---------- ------------------------------------------------------------                                                                                                                                 
     24000           24000                                                                                                                                                                              
     17000           17000                                                                                                                                                                              
     17000           17000                                                                                                                                                                              
      9000            9000                                                                                                                                                                              
      6000            6000                                                                                                                                                                              
      4200            4200                                                                                                                                                                              
      5800            5800                                                                                                                                                                              
      3500            3500                                                                                                                                                                              
      3100            3100                                                                                                                                                                              
      2600            2600                                                                                                                                                                              
      2500            2500                                                                                                                                                                              
     10500           10500                                                                                                                                                                              
     11000           11000                                                                                                                                                                              
      8600            8600                                                                                                                                                                              
      7000            7000                                                                                                                                                                              
      4400            4400                                                                                                                                                                              
     13000           13000                                                                                                                                                                              
      6000            6000                                                                                                                                                                              
     12000           12000                                                                                                                                                                              
      8300            8300                                                                                                                                                                              

20 rows selected.

SQL> SELECT SALARY ,LPAD(SALARY,4,'*') FROM EMPLOYEES;

    SALARY LPAD(SALARY,4,'*                                                                                                                                                                             
---------- ----------------                                                                                                                                                                             
     24000 2400                                                                                                                                                                                         
     17000 1700                                                                                                                                                                                         
     17000 1700                                                                                                                                                                                         
      9000 9000                                                                                                                                                                                         
      6000 6000                                                                                                                                                                                         
      4200 4200                                                                                                                                                                                         
      5800 5800                                                                                                                                                                                         
      3500 3500                                                                                                                                                                                         
      3100 3100                                                                                                                                                                                         
      2600 2600                                                                                                                                                                                         
      2500 2500                                                                                                                                                                                         
     10500 1050                                                                                                                                                                                         
     11000 1100                                                                                                                                                                                         
      8600 8600                                                                                                                                                                                         
      7000 7000                                                                                                                                                                                         
      4400 4400                                                                                                                                                                                         
     13000 1300                                                                                                                                                                                         
      6000 6000                                                                                                                                                                                         
     12000 1200                                                                                                                                                                                         
      8300 8300                                                                                                                                                                                         

20 rows selected.

SQL> 
SQL> 
SQL> REM RPAD: RIGHT PADDDING ,IT WILL TAKE 2 OR 3 ARGUMENTS
SQL> 
SQL> SELECT SALARY,LPAD(SALARY,10,'*'),RPAD(SALARY,10,'*') FROM EMPLOYEES;

    SALARY LPAD(SALARY,10,'*')                      RPAD(SALARY,10,'*')                                                                                                                                 
---------- ---------------------------------------- ----------------------------------------                                                                                                            
     24000 *****24000                               24000*****                                                                                                                                          
     17000 *****17000                               17000*****                                                                                                                                          
     17000 *****17000                               17000*****                                                                                                                                          
      9000 ******9000                               9000******                                                                                                                                          
      6000 ******6000                               6000******                                                                                                                                          
      4200 ******4200                               4200******                                                                                                                                          
      5800 ******5800                               5800******                                                                                                                                          
      3500 ******3500                               3500******                                                                                                                                          
      3100 ******3100                               3100******                                                                                                                                          
      2600 ******2600                               2600******                                                                                                                                          
      2500 ******2500                               2500******                                                                                                                                          
     10500 *****10500                               10500*****                                                                                                                                          
     11000 *****11000                               11000*****                                                                                                                                          
      8600 ******8600                               8600******                                                                                                                                          
      7000 ******7000                               7000******                                                                                                                                          
      4400 ******4400                               4400******                                                                                                                                          
     13000 *****13000                               13000*****                                                                                                                                          
      6000 ******6000                               6000******                                                                                                                                          
     12000 *****12000                               12000*****                                                                                                                                          
      8300 ******8300                               8300******                                                                                                                                          

20 rows selected.

SQL> SELECT SALARY,LPAD(SALARY,10,'*'),RPAD(SALARY,10,'()') FROM EMPLOYEES;

    SALARY LPAD(SALARY,10,'*')                      RPAD(SALARY,10,'()')                                                                                                                                
---------- ---------------------------------------- ----------------------------------------                                                                                                            
     24000 *****24000                               24000()()(                                                                                                                                          
     17000 *****17000                               17000()()(                                                                                                                                          
     17000 *****17000                               17000()()(                                                                                                                                          
      9000 ******9000                               9000()()()                                                                                                                                          
      6000 ******6000                               6000()()()                                                                                                                                          
      4200 ******4200                               4200()()()                                                                                                                                          
      5800 ******5800                               5800()()()                                                                                                                                          
      3500 ******3500                               3500()()()                                                                                                                                          
      3100 ******3100                               3100()()()                                                                                                                                          
      2600 ******2600                               2600()()()                                                                                                                                          
      2500 ******2500                               2500()()()                                                                                                                                          
     10500 *****10500                               10500()()(                                                                                                                                          
     11000 *****11000                               11000()()(                                                                                                                                          
      8600 ******8600                               8600()()()                                                                                                                                          
      7000 ******7000                               7000()()()                                                                                                                                          
      4400 ******4400                               4400()()()                                                                                                                                          
     13000 *****13000                               13000()()(                                                                                                                                          
      6000 ******6000                               6000()()()                                                                                                                                          
     12000 *****12000                               12000()()(                                                                                                                                          
      8300 ******8300                               8300()()()                                                                                                                                          

20 rows selected.

SQL> SELECT SALARY,LPAD(SALARY,10,'*'),RPAD(SALARY,15) FROM EMPLOYEES;

    SALARY LPAD(SALARY,10,'*')                      RPAD(SALARY,15)                                                                                                                                     
---------- ---------------------------------------- ------------------------------------------------------------                                                                                        
     24000 *****24000                               24000                                                                                                                                               
     17000 *****17000                               17000                                                                                                                                               
     17000 *****17000                               17000                                                                                                                                               
      9000 ******9000                               9000                                                                                                                                                
      6000 ******6000                               6000                                                                                                                                                
      4200 ******4200                               4200                                                                                                                                                
      5800 ******5800                               5800                                                                                                                                                
      3500 ******3500                               3500                                                                                                                                                
      3100 ******3100                               3100                                                                                                                                                
      2600 ******2600                               2600                                                                                                                                                
      2500 ******2500                               2500                                                                                                                                                
     10500 *****10500                               10500                                                                                                                                               
     11000 *****11000                               11000                                                                                                                                               
      8600 ******8600                               8600                                                                                                                                                
      7000 ******7000                               7000                                                                                                                                                
      4400 ******4400                               4400                                                                                                                                                
     13000 *****13000                               13000                                                                                                                                               
      6000 ******6000                               6000                                                                                                                                                
     12000 *****12000                               12000                                                                                                                                               
      8300 ******8300                               8300                                                                                                                                                

20 rows selected.

SQL> SELECT SALARY,LPAD(SALARY,10,'*'),RPAD(SALARY,4) FROM EMPLOYEES;

    SALARY LPAD(SALARY,10,'*')                      RPAD(SALARY,4)                                                                                                                                      
---------- ---------------------------------------- ----------------                                                                                                                                    
     24000 *****24000                               2400                                                                                                                                                
     17000 *****17000                               1700                                                                                                                                                
     17000 *****17000                               1700                                                                                                                                                
      9000 ******9000                               9000                                                                                                                                                
      6000 ******6000                               6000                                                                                                                                                
      4200 ******4200                               4200                                                                                                                                                
      5800 ******5800                               5800                                                                                                                                                
      3500 ******3500                               3500                                                                                                                                                
      3100 ******3100                               3100                                                                                                                                                
      2600 ******2600                               2600                                                                                                                                                
      2500 ******2500                               2500                                                                                                                                                
     10500 *****10500                               1050                                                                                                                                                
     11000 *****11000                               1100                                                                                                                                                
      8600 ******8600                               8600                                                                                                                                                
      7000 ******7000                               7000                                                                                                                                                
      4400 ******4400                               4400                                                                                                                                                
     13000 *****13000                               1300                                                                                                                                                
      6000 ******6000                               6000                                                                                                                                                
     12000 *****12000                               1200                                                                                                                                                
      8300 ******8300                               8300                                                                                                                                                

20 rows selected.

SQL> 
SQL> 
SQL> REM LTRIM : IT IS USED REMOVE CHARACTER FROM LEFT
SQL> 
SQL> SELECT HIRE_DATE ,LTRIM(HIRE_DATE) FROM EMPLOYEE;
SELECT HIRE_DATE ,LTRIM(HIRE_DATE) FROM EMPLOYEE
                                        *
ERROR at line 1:
ORA-00942: table or view does not exist 


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

SQL> SELECT HIRE_DATE ,LTRIM(HIRE_DATE,'9') FROM EMPLOYEES;

HIRE_DATE LTRIM(HIRE_DATE,'9                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-JAN-93                                                                                                                                                                                     
03-JAN-90 03-JAN-90                                                                                                                                                                                     
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-JAN-97                                                                                                                                                                                     
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 09-JUL-98                                                                                                                                                                                     
29-JAN-00 29-JAN-00                                                                                                                                                                                     
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE ,LTRIM(HIRE_DATE,'1') FROM EMPLOYEES;

HIRE_DATE LTRIM(HIRE_DATE,'1                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 7-JUL-87                                                                                                                                                                                      
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 3-JAN-93                                                                                                                                                                                      
03-JAN-90 03-JAN-90                                                                                                                                                                                     
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 6-NOV-99                                                                                                                                                                                      
17-OCT-95 7-OCT-95                                                                                                                                                                                      
29-JAN-97 29-JAN-97                                                                                                                                                                                     
15-MAR-98 5-MAR-98                                                                                                                                                                                      
09-JUL-98 09-JUL-98                                                                                                                                                                                     
29-JAN-00 29-JAN-00                                                                                                                                                                                     
11-MAY-96 -MAY-96                                                                                                                                                                                       
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 7-SEP-87                                                                                                                                                                                      
17-FEB-96 7-FEB-96                                                                                                                                                                                      
17-AUG-97 7-AUG-97                                                                                                                                                                                      
07-JUN-94 07-JUN-94                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE ,LTRIM(HIRE_DATE,'12') FROM EMPLOYEES;

HIRE_DATE LTRIM(HIRE_DATE,'1                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 7-JUL-87                                                                                                                                                                                      
21-SEP-89 -SEP-89                                                                                                                                                                                       
13-JAN-93 3-JAN-93                                                                                                                                                                                      
03-JAN-90 03-JAN-90                                                                                                                                                                                     
21-MAY-91 -MAY-91                                                                                                                                                                                       
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 6-NOV-99                                                                                                                                                                                      
17-OCT-95 7-OCT-95                                                                                                                                                                                      
29-JAN-97 9-JAN-97                                                                                                                                                                                      
15-MAR-98 5-MAR-98                                                                                                                                                                                      
09-JUL-98 09-JUL-98                                                                                                                                                                                     
29-JAN-00 9-JAN-00                                                                                                                                                                                      
11-MAY-96 -MAY-96                                                                                                                                                                                       
24-MAR-98 4-MAR-98                                                                                                                                                                                      
24-MAY-99 4-MAY-99                                                                                                                                                                                      
17-SEP-87 7-SEP-87                                                                                                                                                                                      
17-FEB-96 7-FEB-96                                                                                                                                                                                      
17-AUG-97 7-AUG-97                                                                                                                                                                                      
07-JUN-94 07-JUN-94                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT LTRIM('12123', '12') FROM DUAL;

L                                                                                                                                                                                                       
-                                                                                                                                                                                                       
3                                                                                                                                                                                                       

SQL> 
SQL> REM RTRIM : IT IS USED REMOVE CHARACTERS FROM RIGHT
SQL> 
SQL> SELECT HIRE_DATE ,RTRIM(HIRE_DATE,'9') FROM EMPLOYEES;

HIRE_DATE RTRIM(HIRE_DATE,'9                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-8                                                                                                                                                                                      
13-JAN-93 13-JAN-93                                                                                                                                                                                     
03-JAN-90 03-JAN-90                                                                                                                                                                                     
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-                                                                                                                                                                                       
16-NOV-99 16-NOV-                                                                                                                                                                                       
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-JAN-97                                                                                                                                                                                     
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 09-JUL-98                                                                                                                                                                                     
29-JAN-00 29-JAN-00                                                                                                                                                                                     
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-                                                                                                                                                                                       
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE ,RTRIM(HIRE_DATE,'98') FROM EMPLOYEES;

HIRE_DATE RTRIM(HIRE_DATE,'9                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-                                                                                                                                                                                       
13-JAN-93 13-JAN-93                                                                                                                                                                                     
03-JAN-90 03-JAN-90                                                                                                                                                                                     
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-                                                                                                                                                                                       
16-NOV-99 16-NOV-                                                                                                                                                                                       
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-JAN-97                                                                                                                                                                                     
15-MAR-98 15-MAR-                                                                                                                                                                                       
09-JUL-98 09-JUL-                                                                                                                                                                                       
29-JAN-00 29-JAN-00                                                                                                                                                                                     
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-                                                                                                                                                                                       
24-MAY-99 24-MAY-                                                                                                                                                                                       
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> REM NOW WE DO NESTED LTRIM AND RTRIM FUNCTION:
SQL> 
SQL> 
SQL> SELECT HIRE_DATE,RTRIM(LTRIM(HIRE_DATE,'12'),'24') FROM EMPLOYEES;

HIRE_DATE RTRIM(LTRIM(HIRE_D                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 7-JUL-87                                                                                                                                                                                      
21-SEP-89 -SEP-89                                                                                                                                                                                       
13-JAN-93 3-JAN-93                                                                                                                                                                                      
03-JAN-90 03-JAN-90                                                                                                                                                                                     
21-MAY-91 -MAY-91                                                                                                                                                                                       
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 6-NOV-99                                                                                                                                                                                      
17-OCT-95 7-OCT-95                                                                                                                                                                                      
29-JAN-97 9-JAN-97                                                                                                                                                                                      
15-MAR-98 5-MAR-98                                                                                                                                                                                      
09-JUL-98 09-JUL-98                                                                                                                                                                                     
29-JAN-00 9-JAN-00                                                                                                                                                                                      
11-MAY-96 -MAY-96                                                                                                                                                                                       
24-MAR-98 4-MAR-98                                                                                                                                                                                      
24-MAY-99 4-MAY-99                                                                                                                                                                                      
17-SEP-87 7-SEP-87                                                                                                                                                                                      
17-FEB-96 7-FEB-96                                                                                                                                                                                      
17-AUG-97 7-AUG-97                                                                                                                                                                                      
07-JUN-94 07-JUN-9                                                                                                                                                                                      
07-JUN-94 07-JUN-9                                                                                                                                                                                      

20 rows selected.

SQL> 
SQL> 
SQL> 
SQL> REM TRIM : IT WILL REMOVE FROM BOTH THE SIDES ,BUT IT ALLOWS SINGLE CHARACTER TO BE TRIMMED
SQL> 
SQL> REM SYNTAX OF TRIM IS DIFFERENT THAN OTHER FUNCTIONS:
SQL> 
SQL> SELECT HIRE_DATE,TRIM('0' FROM HIRE_DATE) FROM EMPLOYEES;

HIRE_DATE TRIM('0'FROMHIRE_D                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-JAN-93                                                                                                                                                                                     
03-JAN-90 3-JAN-9                                                                                                                                                                                       
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 7-FEB-99                                                                                                                                                                                      
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-JAN-97                                                                                                                                                                                     
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 9-JUL-98                                                                                                                                                                                      
29-JAN-00 29-JAN-                                                                                                                                                                                       
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 7-JUN-94                                                                                                                                                                                      
07-JUN-94 7-JUN-94                                                                                                                                                                                      

20 rows selected.

SQL> SELECT HIRE_DATE,TRIM('01' FROM HIRE_DATE) FROM EMPLOYEES;
SELECT HIRE_DATE,TRIM('01' FROM HIRE_DATE) FROM EMPLOYEES
                 *
ERROR at line 1:
ORA-30001: trim set should have only one character 


SQL> REM IT MEANS TRIM IS NOT ALLOWD THE MULTIPLE CHARACTER FOR TRIM
SQL> 
SQL> SELECT HIRE_DATE,TRIM(LEADING '0' FROM HIRE_DATE) FROM EMPLOYEES;

HIRE_DATE TRIM(LEADING'0'FRO                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-JAN-93                                                                                                                                                                                     
03-JAN-90 3-JAN-90                                                                                                                                                                                      
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 7-FEB-99                                                                                                                                                                                      
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-JAN-97                                                                                                                                                                                     
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 9-JUL-98                                                                                                                                                                                      
29-JAN-00 29-JAN-00                                                                                                                                                                                     
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 7-JUN-94                                                                                                                                                                                      
07-JUN-94 7-JUN-94                                                                                                                                                                                      

20 rows selected.

SQL> SELECT HIRE_DATE,TRIM(TRAILING '0' FROM HIRE_DATE) FROM EMPLOYEES;

HIRE_DATE TRIM(TRAILING'0'FR                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-JAN-93                                                                                                                                                                                     
03-JAN-90 03-JAN-9                                                                                                                                                                                      
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-JAN-97                                                                                                                                                                                     
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 09-JUL-98                                                                                                                                                                                     
29-JAN-00 29-JAN-                                                                                                                                                                                       
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE,TRIM('0' FROM HIRE_DATE) FROM EMPLOYEES;

HIRE_DATE TRIM('0'FROMHIRE_D                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-JAN-93                                                                                                                                                                                     
03-JAN-90 3-JAN-9                                                                                                                                                                                       
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 7-FEB-99                                                                                                                                                                                      
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-JAN-97                                                                                                                                                                                     
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 9-JUL-98                                                                                                                                                                                      
29-JAN-00 29-JAN-                                                                                                                                                                                       
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 7-JUN-94                                                                                                                                                                                      
07-JUN-94 7-JUN-94                                                                                                                                                                                      

20 rows selected.

SQL> SELECT HIRE_DATE,TRIM(BOTH '0' FROM HIRE_DATE) FROM EMPLOYEES;

HIRE_DATE TRIM(BOTH'0'FROMHI                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-JAN-93                                                                                                                                                                                     
03-JAN-90 3-JAN-9                                                                                                                                                                                       
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 7-FEB-99                                                                                                                                                                                      
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-JAN-97                                                                                                                                                                                     
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 9-JUL-98                                                                                                                                                                                      
29-JAN-00 29-JAN-                                                                                                                                                                                       
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 7-JUN-94                                                                                                                                                                                      
07-JUN-94 7-JUN-94                                                                                                                                                                                      

20 rows selected.

SQL> 
SQL> 
SQL> REM LEADING MEANS IT WORKS AS A LTRIM
SQL> 
SQL> REM TRAILING MEANS IT WORKS AS A RTRIM
SQL> 
SQL> 
SQL> REM LOWER UPPER INITCAP
SQL> 
SQL> REM CONCAT LPAD RPAD LTRIM RTIM TRIM
SQL> 
SQL> REM ABOVE CHARACTER FUNCTION IS DONE UP TO THIS
SQL> 
SQL> REM NOW WE DISCUSS ABOUT THE LENGTH
SQL> 
SQL> SELECT FIRST_NAME,LENGTH(FIRST_NAME) FROM EMPLOYEES;

FIRST_NAME      LENGTH(FIRST_NAME)                                                                                                                                                                      
--------------- ------------------                                                                                                                                                                      
Steven                           6                                                                                                                                                                      
Neena                            5                                                                                                                                                                      
Lex                              3                                                                                                                                                                      
Alexander                        9                                                                                                                                                                      
Bruce                            5                                                                                                                                                                      
Diana                            5                                                                                                                                                                      
Kevin                            5                                                                                                                                                                      
Trenna                           6                                                                                                                                                                      
Curtis                           6                                                                                                                                                                      
Randall                          7                                                                                                                                                                      
Peter                            5                                                                                                                                                                      
Eleni                            5                                                                                                                                                                      
Ellen                            5                                                                                                                                                                      
Jonathon                         8                                                                                                                                                                      
Kimerely                         8                                                                                                                                                                      
Jennifer                         8                                                                                                                                                                      
Michael                          7                                                                                                                                                                      
Pat                              3                                                                                                                                                                      
Shelley                          7                                                                                                                                                                      
William                          7                                                                                                                                                                      

20 rows selected.

SQL> SELECT SALARY,LENGTH(SALARY) FROM EMPLOYEES;

    SALARY LENGTH(SALARY)                                                                                                                                                                               
---------- --------------                                                                                                                                                                               
     24000              5                                                                                                                                                                               
     17000              5                                                                                                                                                                               
     17000              5                                                                                                                                                                               
      9000              4                                                                                                                                                                               
      6000              4                                                                                                                                                                               
      4200              4                                                                                                                                                                               
      5800              4                                                                                                                                                                               
      3500              4                                                                                                                                                                               
      3100              4                                                                                                                                                                               
      2600              4                                                                                                                                                                               
      2500              4                                                                                                                                                                               
     10500              5                                                                                                                                                                               
     11000              5                                                                                                                                                                               
      8600              4                                                                                                                                                                               
      7000              4                                                                                                                                                                               
      4400              4                                                                                                                                                                               
     13000              5                                                                                                                                                                               
      6000              4                                                                                                                                                                               
     12000              5                                                                                                                                                                               
      8300              4                                                                                                                                                                               

20 rows selected.

SQL> SELECT HIRE_DATE ,LENGTH(HIRE_dATE) FROM EMPLOYEES;

HIRE_DATE LENGTH(HIRE_DATE)                                                                                                                                                                             
--------- -----------------                                                                                                                                                                             
17-JUL-87                 9                                                                                                                                                                             
21-SEP-89                 9                                                                                                                                                                             
13-JAN-93                 9                                                                                                                                                                             
03-JAN-90                 9                                                                                                                                                                             
21-MAY-91                 9                                                                                                                                                                             
07-FEB-99                 9                                                                                                                                                                             
16-NOV-99                 9                                                                                                                                                                             
17-OCT-95                 9                                                                                                                                                                             
29-JAN-97                 9                                                                                                                                                                             
15-MAR-98                 9                                                                                                                                                                             
09-JUL-98                 9                                                                                                                                                                             
29-JAN-00                 9                                                                                                                                                                             
11-MAY-96                 9                                                                                                                                                                             
24-MAR-98                 9                                                                                                                                                                             
24-MAY-99                 9                                                                                                                                                                             
17-SEP-87                 9                                                                                                                                                                             
17-FEB-96                 9                                                                                                                                                                             
17-AUG-97                 9                                                                                                                                                                             
07-JUN-94                 9                                                                                                                                                                             
07-JUN-94                 9                                                                                                                                                                             

20 rows selected.

SQL> 
SQL> REM DEFAULT DISPLAY FORMAT FOR DATE VALUES : DD-MON-RR
SQL> 
SQL> SELECT * FROM NLS_SESSION_PARAMETERS;

PARAMETER                                                                                                                                                                                               
------------------------------------------------------------------------------------------------------------------------                                                                                
VALUE                                                                                                                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------                                        
NLS_LANGUAGE                                                                                                                                                                                            
AMERICAN                                                                                                                                                                                                
                                                                                                                                                                                                        
NLS_TERRITORY                                                                                                                                                                                           
AMERICA                                                                                                                                                                                                 
                                                                                                                                                                                                        
NLS_CURRENCY                                                                                                                                                                                            
$                                                                                                                                                                                                       
                                                                                                                                                                                                        
NLS_ISO_CURRENCY                                                                                                                                                                                        
AMERICA                                                                                                                                                                                                 
                                                                                                                                                                                                        
NLS_NUMERIC_CHARACTERS                                                                                                                                                                                  
.,                                                                                                                                                                                                      
                                                                                                                                                                                                        
NLS_CALENDAR                                                                                                                                                                                            
GREGORIAN                                                                                                                                                                                               
                                                                                                                                                                                                        
NLS_DATE_FORMAT                                                                                                                                                                                         

PARAMETER                                                                                                                                                                                               
------------------------------------------------------------------------------------------------------------------------                                                                                
VALUE                                                                                                                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------                                        
DD-MON-RR                                                                                                                                                                                               
                                                                                                                                                                                                        
NLS_DATE_LANGUAGE                                                                                                                                                                                       
AMERICAN                                                                                                                                                                                                
                                                                                                                                                                                                        
NLS_SORT                                                                                                                                                                                                
BINARY                                                                                                                                                                                                  
                                                                                                                                                                                                        
NLS_TIME_FORMAT                                                                                                                                                                                         
HH.MI.SSXFF AM                                                                                                                                                                                          
                                                                                                                                                                                                        
NLS_TIMESTAMP_FORMAT                                                                                                                                                                                    
DD-MON-RR HH.MI.SSXFF AM                                                                                                                                                                                
                                                                                                                                                                                                        
NLS_TIME_TZ_FORMAT                                                                                                                                                                                      
HH.MI.SSXFF AM TZR                                                                                                                                                                                      
                                                                                                                                                                                                        
NLS_TIMESTAMP_TZ_FORMAT                                                                                                                                                                                 
DD-MON-RR HH.MI.SSXFF AM TZR                                                                                                                                                                            

PARAMETER                                                                                                                                                                                               
------------------------------------------------------------------------------------------------------------------------                                                                                
VALUE                                                                                                                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------                                        
                                                                                                                                                                                                        
NLS_DUAL_CURRENCY                                                                                                                                                                                       
$                                                                                                                                                                                                       
                                                                                                                                                                                                        
NLS_COMP                                                                                                                                                                                                
BINARY                                                                                                                                                                                                  
                                                                                                                                                                                                        
NLS_LENGTH_SEMANTICS                                                                                                                                                                                    
BYTE                                                                                                                                                                                                    
                                                                                                                                                                                                        
NLS_NCHAR_CONV_EXCP                                                                                                                                                                                     
FALSE                                                                                                                                                                                                   
                                                                                                                                                                                                        

17 rows selected.

SQL> 
SQL> 
SQL> 
SQL> REM NLS : NATIONAL LANGUAGE SUPPORT
SQL> 
SQL> COL PARAMETER FORMAT A30
SQL> 
SQL> COL VALUE FORMAT A30
SQL> 
SQL> SELECT * FROM NLS_SESSION_PARAMETER;
SELECT * FROM NLS_SESSION_PARAMETER
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> SELECT * FROM NLS_SESSION_PARAMETERS;

PARAMETER                      VALUE                                                                                                                                                                    
------------------------------ ------------------------------                                                                                                                                           
NLS_LANGUAGE                   AMERICAN                                                                                                                                                                 
NLS_TERRITORY                  AMERICA                                                                                                                                                                  
NLS_CURRENCY                   $                                                                                                                                                                        
NLS_ISO_CURRENCY               AMERICA                                                                                                                                                                  
NLS_NUMERIC_CHARACTERS         .,                                                                                                                                                                       
NLS_CALENDAR                   GREGORIAN                                                                                                                                                                
NLS_DATE_FORMAT                DD-MON-RR                                                                                                                                                                
NLS_DATE_LANGUAGE              AMERICAN                                                                                                                                                                 
NLS_SORT                       BINARY                                                                                                                                                                   
NLS_TIME_FORMAT                HH.MI.SSXFF AM                                                                                                                                                           
NLS_TIMESTAMP_FORMAT           DD-MON-RR HH.MI.SSXFF AM                                                                                                                                                 
NLS_TIME_TZ_FORMAT             HH.MI.SSXFF AM TZR                                                                                                                                                       
NLS_TIMESTAMP_TZ_FORMAT        DD-MON-RR HH.MI.SSXFF AM TZR                                                                                                                                             
NLS_DUAL_CURRENCY              $                                                                                                                                                                        
NLS_COMP                       BINARY                                                                                                                                                                   
NLS_LENGTH_SEMANTICS           BYTE                                                                                                                                                                     
NLS_NCHAR_CONV_EXCP            FALSE                                                                                                                                                                    

17 rows selected.

SQL> 
SQL> 
SQL> ALTER SESSION SET NLS_DATE_FORMAT ='DD-MONTH-RRRR';

Session altered.

SQL> 
SQL> SELECT HIRE_DATE FROM EMPLOYEES;

HIRE_DATE                                                                                                                                                                                               
-----------------                                                                                                                                                                                       
17-JULY     -1987                                                                                                                                                                                       
21-SEPTEMBER-1989                                                                                                                                                                                       
13-JANUARY  -1993                                                                                                                                                                                       
03-JANUARY  -1990                                                                                                                                                                                       
21-MAY      -1991                                                                                                                                                                                       
07-FEBRUARY -1999                                                                                                                                                                                       
16-NOVEMBER -1999                                                                                                                                                                                       
17-OCTOBER  -1995                                                                                                                                                                                       
29-JANUARY  -1997                                                                                                                                                                                       
15-MARCH    -1998                                                                                                                                                                                       
09-JULY     -1998                                                                                                                                                                                       
29-JANUARY  -2000                                                                                                                                                                                       
11-MAY      -1996                                                                                                                                                                                       
24-MARCH    -1998                                                                                                                                                                                       
24-MAY      -1999                                                                                                                                                                                       
17-SEPTEMBER-1987                                                                                                                                                                                       
17-FEBRUARY -1996                                                                                                                                                                                       
17-AUGUST   -1997                                                                                                                                                                                       
07-JUNE     -1994                                                                                                                                                                                       
07-JUNE     -1994                                                                                                                                                                                       

20 rows selected.

SQL> SELECT HIRE_DATE,LENGTH(HIRE_DATE) FROM EMPLOYEES;

HIRE_DATE         LENGTH(HIRE_DATE)                                                                                                                                                                     
----------------- -----------------                                                                                                                                                                     
17-JULY     -1987                17                                                                                                                                                                     
21-SEPTEMBER-1989                17                                                                                                                                                                     
13-JANUARY  -1993                17                                                                                                                                                                     
03-JANUARY  -1990                17                                                                                                                                                                     
21-MAY      -1991                17                                                                                                                                                                     
07-FEBRUARY -1999                17                                                                                                                                                                     
16-NOVEMBER -1999                17                                                                                                                                                                     
17-OCTOBER  -1995                17                                                                                                                                                                     
29-JANUARY  -1997                17                                                                                                                                                                     
15-MARCH    -1998                17                                                                                                                                                                     
09-JULY     -1998                17                                                                                                                                                                     
29-JANUARY  -2000                17                                                                                                                                                                     
11-MAY      -1996                17                                                                                                                                                                     
24-MARCH    -1998                17                                                                                                                                                                     
24-MAY      -1999                17                                                                                                                                                                     
17-SEPTEMBER-1987                17                                                                                                                                                                     
17-FEBRUARY -1996                17                                                                                                                                                                     
17-AUGUST   -1997                17                                                                                                                                                                     
07-JUNE     -1994                17                                                                                                                                                                     
07-JUNE     -1994                17                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> ALTER SESSION SET NLS_DATE_FORMAT ='DD-MONTH-RRRR DAY';

Session altered.

SQL> 
SQL> SELECT HIRE_DATE,LENGTH(HIRE_DATE) FROM EMPLOYEES;

HIRE_DATE                   LENGTH(HIRE_DATE)                                                                                                                                                           
--------------------------- -----------------                                                                                                                                                           
17-JULY     -1987 FRIDAY                   27                                                                                                                                                           
21-SEPTEMBER-1989 THURSDAY                 27                                                                                                                                                           
13-JANUARY  -1993 WEDNESDAY                27                                                                                                                                                           
03-JANUARY  -1990 WEDNESDAY                27                                                                                                                                                           
21-MAY      -1991 TUESDAY                  27                                                                                                                                                           
07-FEBRUARY -1999 SUNDAY                   27                                                                                                                                                           
16-NOVEMBER -1999 TUESDAY                  27                                                                                                                                                           
17-OCTOBER  -1995 TUESDAY                  27                                                                                                                                                           
29-JANUARY  -1997 WEDNESDAY                27                                                                                                                                                           
15-MARCH    -1998 SUNDAY                   27                                                                                                                                                           
09-JULY     -1998 THURSDAY                 27                                                                                                                                                           
29-JANUARY  -2000 SATURDAY                 27                                                                                                                                                           
11-MAY      -1996 SATURDAY                 27                                                                                                                                                           
24-MARCH    -1998 TUESDAY                  27                                                                                                                                                           
24-MAY      -1999 MONDAY                   27                                                                                                                                                           
17-SEPTEMBER-1987 THURSDAY                 27                                                                                                                                                           
17-FEBRUARY -1996 SATURDAY                 27                                                                                                                                                           
17-AUGUST   -1997 SUNDAY                   27                                                                                                                                                           
07-JUNE     -1994 TUESDAY                  27                                                                                                                                                           
07-JUNE     -1994 TUESDAY                  27                                                                                                                                                           

20 rows selected.

SQL> 
SQL> 
SQL> REM TODAY TOPIC COVERED IS :
SQL> 
SQL> REM CHARACTER FUNCTION :   CONCAT LPAD RPAD TRIM LTRIM RTRIM LENGTH
SQL> 
SQL> 
SQL> REM TRIM SYNTAX: SELECT HIRE_DATE ,TRIM('0' FROM HIRE_DATE) FROM EMPLOYEES;
SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM TODAY TOPIC COVERED IS :
SQL> 
SQL> REM LOWER UPPER INITCAP
SQL> 
SQL> REM CONCAT LAPD RPAD LTRIM RTRIM TRIM LENGTH
SQL> 
SQL> SPOOL OFF
