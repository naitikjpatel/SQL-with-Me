SQL> 
SQL> REM CONVERSION FUNCTION : 1 TO_NUMBER 2 TO_DATE 3 TO_CHAR
SQL> 
SQL> REM TO_NUMBER : IS USED TO CONVERT CHARACTER TYPE VALUE INTO NUMBER TYPE VALUE
SQL> 
SQL> REM TO_DATE : IS USED TO CONVERT CHARACTER TYPE VALUE INTO DATE TYPE VALUE
SQL> 
SQL> REM TO_CHAR : IS USED TO CONVERT NUMBER/DATE TYPE VALUE INTO CHARACTER TYPE VALUE
SQL> 
SQL> 
SQL> REM TO_NUMBER : PUPOSE : 1 FOR CALCULATION 2 FOR COMPARISIONO
SQL> 
SQL> REM TO_DATE : PUPOSE : 1 FOR CALCULATION 2 FOR COMPARSON
SQL> 
SQL> REM TO_CHAR : PUPOSE: FOR DISPLAYING NUMBER/DATE TYPE VALUES IN USER DEFINED/NON-DEFAULT FORMAT
SQL> 
SQL> 
SQL> REM TO_NUMBER : FOR CALCULATION
SQL> 
SQL> SELECT 200 + 1234 FROM DUAL;

  200+1234                                                                                                                                                                                              
----------                                                                                                                                                                                              
      1434                                                                                                                                                                                              

SQL> 
SQL> SELECT 200+'1234' FROM DUAL;

200+'1234'                                                                                                                                                                                              
----------                                                                                                                                                                                              
      1434                                                                                                                                                                                              

SQL> 
SQL> SELECT 200+'1234.34' FROM DUAL;

200+'1234.34'                                                                                                                                                                                           
-------------                                                                                                                                                                                           
      1434.34                                                                                                                                                                                           

SQL> 
SQL> REM TYPES OF CONVERSIONS : 1 IMPLICIT/AUTOMATIC 2 EXPLICIT/MENNUAL USING ANY OF THE ABOVE CONVERSION FUNCTION
SQL> 
SQL> REM IN ABOVE 2 CASES ,IMPLICIT CONVERSION WAS PERFORMED
SQL> 
SQL> SELECT 200+'1,234.34' FROM DUAL;
SELECT 200+'1,234.34' FROM DUAL
           *
ERROR at line 1:
ORA-01722: invalid number 


SQL> SELECT 200+'$1234.34' FROM DUAL;
SELECT 200+'$1234.34' FROM DUAL
           *
ERROR at line 1:
ORA-01722: invalid number 


SQL> 
SQL> SELECT 200 + TO_NUMBER ('1,234.34','9,999.99') FROM DUAL;

200+TO_NUMBER('1,234.34','9,999.99')                                                                                                                                                                    
------------------------------------                                                                                                                                                                    
                             1434.34                                                                                                                                                                    

SQL> SELECT 200 + TO_NUMBER ('1,234.34','0,000.00') FROM DUAL;

200+TO_NUMBER('1,234.34','0,000.00')                                                                                                                                                                    
------------------------------------                                                                                                                                                                    
                             1434.34                                                                                                                                                                    

SQL> SELECT 200 + TO_NUMBER ('1,234.34','0,099.00') FROM DUAL;

200+TO_NUMBER('1,234.34','0,099.00')                                                                                                                                                                    
------------------------------------                                                                                                                                                                    
                             1434.34                                                                                                                                                                    

SQL> SELECT 200 + TO_NUMBER ('1,234.34','0,099.77') FROM DUAL;
SELECT 200 + TO_NUMBER ('1,234.34','0,099.77') FROM DUAL
                                   *
ERROR at line 1:
ORA-01481: invalid number format model 


SQL> 
SQL> 
SQL> SELECT 200 + TO_NUMBER ('$1,234.34','$0,000.00') FROM DUAL;

200+TO_NUMBER('$1,234.34','$0,000.00')                                                                                                                                                                  
--------------------------------------                                                                                                                                                                  
                               1434.34                                                                                                                                                                  

SQL> SELECT 200 + TO_NUMBER ('$1234.34','$0000.00') FROM DUAL;

200+TO_NUMBER('$1234.34','$0000.00')                                                                                                                                                                    
------------------------------------                                                                                                                                                                    
                             1434.34                                                                                                                                                                    

SQL> 
SQL> REM TO_NUMBER : FOR COMPARISON
SQL> 
SQL> SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >1000;

FIRST_NAME      LAST_NAME           SALARY                                                                                                                                                              
--------------- --------------- ----------                                                                                                                                                              
Steven          King                 24000                                                                                                                                                              
Neena           Kochhar              17000                                                                                                                                                              
Lex             De Haan              17000                                                                                                                                                              
Alexander       Hunold                9000                                                                                                                                                              
Bruce           Ernst                 6000                                                                                                                                                              
Diana           Lorentz               4200                                                                                                                                                              
Kevin           Mourgos               5800                                                                                                                                                              
Trenna          Rajs                  3500                                                                                                                                                              
Curtis          Davies                3100                                                                                                                                                              
Randall         Matos                 2600                                                                                                                                                              
Peter           Vargas                2500                                                                                                                                                              
Eleni           Zlotkey              10500                                                                                                                                                              
Ellen           Abel                 11000                                                                                                                                                              
Jonathon        Taylor                8600                                                                                                                                                              
Kimerely        Grant                 7000                                                                                                                                                              
Jennifer        Whalen                4400                                                                                                                                                              
Michael         Hartstein            13000                                                                                                                                                              
Pat             Fay                   6000                                                                                                                                                              
Shelley         Higgins              12000                                                                                                                                                              
William         Gietz                 8300                                                                                                                                                              

20 rows selected.

SQL> SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >'10000';

FIRST_NAME      LAST_NAME           SALARY                                                                                                                                                              
--------------- --------------- ----------                                                                                                                                                              
Steven          King                 24000                                                                                                                                                              
Neena           Kochhar              17000                                                                                                                                                              
Lex             De Haan              17000                                                                                                                                                              
Eleni           Zlotkey              10500                                                                                                                                                              
Ellen           Abel                 11000                                                                                                                                                              
Michael         Hartstein            13000                                                                                                                                                              
Shelley         Higgins              12000                                                                                                                                                              

7 rows selected.

SQL> SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >'10000.00';

FIRST_NAME      LAST_NAME           SALARY                                                                                                                                                              
--------------- --------------- ----------                                                                                                                                                              
Steven          King                 24000                                                                                                                                                              
Neena           Kochhar              17000                                                                                                                                                              
Lex             De Haan              17000                                                                                                                                                              
Eleni           Zlotkey              10500                                                                                                                                                              
Ellen           Abel                 11000                                                                                                                                                              
Michael         Hartstein            13000                                                                                                                                                              
Shelley         Higgins              12000                                                                                                                                                              

7 rows selected.

SQL> SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >'10,000.00';
SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >'10,000.00'
                                                                *
ERROR at line 1:
ORA-01722: invalid number 


SQL> SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >'$10,000.00';
SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >'$10,000.00'
                                                                *
ERROR at line 1:
ORA-01722: invalid number 


SQL> SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >TO_NUMBER('10,000.00','99,999.99');

FIRST_NAME      LAST_NAME           SALARY                                                                                                                                                              
--------------- --------------- ----------                                                                                                                                                              
Steven          King                 24000                                                                                                                                                              
Neena           Kochhar              17000                                                                                                                                                              
Lex             De Haan              17000                                                                                                                                                              
Eleni           Zlotkey              10500                                                                                                                                                              
Ellen           Abel                 11000                                                                                                                                                              
Michael         Hartstein            13000                                                                                                                                                              
Shelley         Higgins              12000                                                                                                                                                              

7 rows selected.

SQL> SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >TO_NUMBER('10,000.00','00,000.00');

FIRST_NAME      LAST_NAME           SALARY                                                                                                                                                              
--------------- --------------- ----------                                                                                                                                                              
Steven          King                 24000                                                                                                                                                              
Neena           Kochhar              17000                                                                                                                                                              
Lex             De Haan              17000                                                                                                                                                              
Eleni           Zlotkey              10500                                                                                                                                                              
Ellen           Abel                 11000                                                                                                                                                              
Michael         Hartstein            13000                                                                                                                                                              
Shelley         Higgins              12000                                                                                                                                                              

7 rows selected.

SQL> SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES WHERE SALARY >TO_NUMBER('$10,000.00','$00,000.00');

FIRST_NAME      LAST_NAME           SALARY                                                                                                                                                              
--------------- --------------- ----------                                                                                                                                                              
Steven          King                 24000                                                                                                                                                              
Neena           Kochhar              17000                                                                                                                                                              
Lex             De Haan              17000                                                                                                                                                              
Eleni           Zlotkey              10500                                                                                                                                                              
Ellen           Abel                 11000                                                                                                                                                              
Michael         Hartstein            13000                                                                                                                                                              
Shelley         Higgins              12000                                                                                                                                                              

7 rows selected.

SQL> 
SQL> 
SQL> REM TO_DATE : 1 FOR CALCULATION 2 FOR COMPARISON
SQL> 
SQL> REM TO_DATE : FOR CALCULATION
SQL> 
SQL> SELECT SYSDATE,HIRE_DATE,SYSDATE-HIRE_dATE FROM EMPLOYEES;

SYSDATE   HIRE_DATE SYSDATE-HIRE_DATE                                                                                                                                                                   
--------- --------- -----------------                                                                                                                                                                   
12-MAR-24 17-JUL-87             13389                                                                                                                                                                   
12-MAR-24 21-SEP-89             12592                                                                                                                                                                   
12-MAR-24 13-JAN-93             11382                                                                                                                                                                   
12-MAR-24 03-JAN-90             12488                                                                                                                                                                   
12-MAR-24 21-MAY-91             11985                                                                                                                                                                   
12-MAR-24 07-FEB-99        9165.99999                                                                                                                                                                   
12-MAR-24 16-NOV-99        8883.99999                                                                                                                                                                   
12-MAR-24 17-OCT-95             10375                                                                                                                                                                   
12-MAR-24 29-JAN-97        9904.99999                                                                                                                                                                   
12-MAR-24 15-MAR-98        9494.99999                                                                                                                                                                   
12-MAR-24 09-JUL-98        9378.99999                                                                                                                                                                   
12-MAR-24 29-JAN-00        8809.99999                                                                                                                                                                   
12-MAR-24 11-MAY-96             10168                                                                                                                                                                   
12-MAR-24 24-MAR-98        9485.99999                                                                                                                                                                   
12-MAR-24 24-MAY-99        9059.99999                                                                                                                                                                   
12-MAR-24 17-SEP-87             13327                                                                                                                                                                   
12-MAR-24 17-FEB-96             10252                                                                                                                                                                   
12-MAR-24 17-AUG-97        9704.99999                                                                                                                                                                   
12-MAR-24 07-JUN-94             10872                                                                                                                                                                   
12-MAR-24 07-JUN-94             10872                                                                                                                                                                   

20 rows selected.

SQL> 
SQL> SELECT '12-MAR-73'-'20-APR-03' FROM DUAL;
SELECT '12-MAR-73'-'20-APR-03' FROM DUAL
       *
ERROR at line 1:
ORA-01722: invalid number 


SQL> 
SQL> REM IMPLICIT CONVERSION IS NOT RELIABLE
SQL> 
SQL> REM WHEN IMPLICIT CONVERSION CAN'T BE DONE,WE NEED TO DO IT EXPLICITLY
SQL> 
SQL> SELECT TO_DATE('12-MAR-73')-TO_DATE('20-APR-03') FROM DUAL;

TO_DATE('12-MAR-73')-TO_DATE('20-APR-03')                                                                                                                                                               
-----------------------------------------                                                                                                                                                               
                                   -10996                                                                                                                                                               

SQL> 
SQL> REM IF DATE IS IN DEFAULT OR COMPATIBLE FORMAT,WE DON'T NEED TO SUPPLY SECOND ARGUMENT IN TO_DATE FUNCTION.
SQL> 
SQL> SELECT TO_DATE('12-MAR-73')-TO_DATE('20APR03') FROM DUAL;

TO_DATE('12-MAR-73')-TO_DATE('20APR03')                                                                                                                                                                 
---------------------------------------                                                                                                                                                                 
                                 -10996                                                                                                                                                                 

SQL> SELECT TO_DATE('12-MAR-73')-TO_DATE('15-01-71') FROM DUAL;
SELECT TO_DATE('12-MAR-73')-TO_DATE('15-01-71') FROM DUAL
                                    *
ERROR at line 1:
ORA-01843: not a valid month 


SQL> SELECT TO_DATE('12-MAR-73')-TO_DATE('15-01-71','DD-MM-RR') FROM DUAL;

TO_DATE('12-MAR-73')-TO_DATE('15-01-71','DD-MM-RR')                                                                                                                                                     
---------------------------------------------------                                                                                                                                                     
                                                787                                                                                                                                                     

SQL> SELECT TO_DATE('12-MAR-73')-TO_DATE('15-01-71','DD-MM-YY') FROM DUAL;

TO_DATE('12-MAR-73')-TO_DATE('15-01-71','DD-MM-YY')                                                                                                                                                     
---------------------------------------------------                                                                                                                                                     
                                             -35738                                                                                                                                                     

SQL> 
SQL> REM YY ALWAYS PICKS AND ATTACH CURRENT CENTURY VALUE : 71 :2071
SQL> 
SQL> REM RR IS SMARTER FORMAT:
SQL> 
SQL> REM RR CENTURY :100 YEARS
SQL> 
SQL> REM RR CENTURY :CURRENT 50 YEARS + PREVIOUS 50 YEARS
SQL> 
SQL> REM RR CENTURY : 2000-2049       + 1950-1999
SQL> 
SQL> REM RR WORKS FINE IF OUR DATES FALL IN RR CENTURY RANGE : 1950 TO 2049
SQL> 
SQL> REM 31-MAY-44 : 31-MAY-2044
SQL> 
SQL> REM TO_DATE: FOR COMPARISON
SQL> 
SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > '31-DEC-95';

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

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > '31-DECEMBER-95';

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

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > '31DECEMBER/95';

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

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > 'DEC-31-95';
SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > 'DEC-31-95'
                                                             *
ERROR at line 1:
ORA-01858: a non-numeric character was found where a numeric was expected 


SQL> 
SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('DEC-31-95','MON-DD-RR');

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

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('DEC-31-95','MON/DD\RR');

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

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('10-31-95','MON/DD\RR');
SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('10-31-95','MON/DD\RR')
                                                                     *
ERROR at line 1:
ORA-01843: not a valid month 


SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('10-31-95','MM/DD\RR');

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

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('DEC-31-1995','MON-DD-RRRR');

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

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('DEC-31-1995','MON-DD-RR');

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

SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('DEC-31-1995','FXDD-MM-RRRR');
SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('DEC-31-1995','FXDD-MM-RRRR')
                                                                     *
ERROR at line 1:
ORA-01858: a non-numeric character was found where a numeric was expected 


SQL> SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE > TO_DATE('31-12-1995','FXDD-MM-RRRR');

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
SQL> REM TO_CHAR : NUMBER TO CHAR
SQL> 
SQL> REM TO_CHAR : DATE TO CHAR
SQL> 
SQL> REM NUMBER VALID FORMAT CHARACTERS : 9  0 .  , D G $ L U S MI PR EEEE OR eeee V
SQL> 
SQL> SELECT SALARY FROM EMPLOYEES;

    SALARY                                                                                                                                                                                              
----------                                                                                                                                                                                              
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
     10500                                                                                                                                                                                              
     11000                                                                                                                                                                                              
      8600                                                                                                                                                                                              
      7000                                                                                                                                                                                              
      4400                                                                                                                                                                                              
     13000                                                                                                                                                                                              
      6000                                                                                                                                                                                              
     12000                                                                                                                                                                                              
      8300                                                                                                                                                                                              

20 rows selected.

SQL> 
SQL> REM 10 SPACES
SQL> 
SQL> SHOW NUMW
numwidth 10
SQL> 
SQL> SELECT SALARY ,TO_CHAR(SALARY ,'99999') FROM EMPLOYEES;

    SALARY TO_CHA                                                                                                                                                                                       
---------- ------                                                                                                                                                                                       
     24000  24000                                                                                                                                                                                       
     17000  17000                                                                                                                                                                                       
     17000  17000                                                                                                                                                                                       
      9000   9000                                                                                                                                                                                       
      6000   6000                                                                                                                                                                                       
      4200   4200                                                                                                                                                                                       
      5800   5800                                                                                                                                                                                       
      3500   3500                                                                                                                                                                                       
      3100   3100                                                                                                                                                                                       
      2600   2600                                                                                                                                                                                       
      2500   2500                                                                                                                                                                                       
     10500  10500                                                                                                                                                                                       
     11000  11000                                                                                                                                                                                       
      8600   8600                                                                                                                                                                                       
      7000   7000                                                                                                                                                                                       
      4400   4400                                                                                                                                                                                       
     13000  13000                                                                                                                                                                                       
      6000   6000                                                                                                                                                                                       
     12000  12000                                                                                                                                                                                       
      8300   8300                                                                                                                                                                                       

20 rows selected.

SQL> SELECT SALARY ,TO_CHAR(SALARY ,'000000') FROM EMPLOYEES;

    SALARY TO_CHAR                                                                                                                                                                                      
---------- -------                                                                                                                                                                                      
     24000  024000                                                                                                                                                                                      
     17000  017000                                                                                                                                                                                      
     17000  017000                                                                                                                                                                                      
      9000  009000                                                                                                                                                                                      
      6000  006000                                                                                                                                                                                      
      4200  004200                                                                                                                                                                                      
      5800  005800                                                                                                                                                                                      
      3500  003500                                                                                                                                                                                      
      3100  003100                                                                                                                                                                                      
      2600  002600                                                                                                                                                                                      
      2500  002500                                                                                                                                                                                      
     10500  010500                                                                                                                                                                                      
     11000  011000                                                                                                                                                                                      
      8600  008600                                                                                                                                                                                      
      7000  007000                                                                                                                                                                                      
      4400  004400                                                                                                                                                                                      
     13000  013000                                                                                                                                                                                      
      6000  006000                                                                                                                                                                                      
     12000  012000                                                                                                                                                                                      
      8300  008300                                                                                                                                                                                      

20 rows selected.

SQL> SELECT SALARY ,TO_CHAR(SALARY ,'OOOOOO') FROM EMPLOYEES;
SELECT SALARY ,TO_CHAR(SALARY ,'OOOOOO') FROM EMPLOYEES
                               *
ERROR at line 1:
ORA-01481: invalid number format model 


SQL> 
SQL> SELECT SALARY ,TO_CHAR(SALARY ,'99099') FROM EMPLOYEES;

    SALARY TO_CHA                                                                                                                                                                                       
---------- ------                                                                                                                                                                                       
     24000  24000                                                                                                                                                                                       
     17000  17000                                                                                                                                                                                       
     17000  17000                                                                                                                                                                                       
      9000   9000                                                                                                                                                                                       
      6000   6000                                                                                                                                                                                       
      4200   4200                                                                                                                                                                                       
      5800   5800                                                                                                                                                                                       
      3500   3500                                                                                                                                                                                       
      3100   3100                                                                                                                                                                                       
      2600   2600                                                                                                                                                                                       
      2500   2500                                                                                                                                                                                       
     10500  10500                                                                                                                                                                                       
     11000  11000                                                                                                                                                                                       
      8600   8600                                                                                                                                                                                       
      7000   7000                                                                                                                                                                                       
      4400   4400                                                                                                                                                                                       
     13000  13000                                                                                                                                                                                       
      6000   6000                                                                                                                                                                                       
     12000  12000                                                                                                                                                                                       
      8300   8300                                                                                                                                                                                       

20 rows selected.

SQL> SELECT SALARY ,TO_CHAR(SALARY ,'99099999') FROM EMPLOYEES;

    SALARY TO_CHAR(S                                                                                                                                                                                    
---------- ---------                                                                                                                                                                                    
     24000    024000                                                                                                                                                                                    
     17000    017000                                                                                                                                                                                    
     17000    017000                                                                                                                                                                                    
      9000    009000                                                                                                                                                                                    
      6000    006000                                                                                                                                                                                    
      4200    004200                                                                                                                                                                                    
      5800    005800                                                                                                                                                                                    
      3500    003500                                                                                                                                                                                    
      3100    003100                                                                                                                                                                                    
      2600    002600                                                                                                                                                                                    
      2500    002500                                                                                                                                                                                    
     10500    010500                                                                                                                                                                                    
     11000    011000                                                                                                                                                                                    
      8600    008600                                                                                                                                                                                    
      7000    007000                                                                                                                                                                                    
      4400    004400                                                                                                                                                                                    
     13000    013000                                                                                                                                                                                    
      6000    006000                                                                                                                                                                                    
     12000    012000                                                                                                                                                                                    
      8300    008300                                                                                                                                                                                    

20 rows selected.

SQL> SELECT SALARY ,TO_CHAR(SALARY ,'990999.99') FROM EMPLOYEES;

    SALARY TO_CHAR(SA                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
     24000   24000.00                                                                                                                                                                                   
     17000   17000.00                                                                                                                                                                                   
     17000   17000.00                                                                                                                                                                                   
      9000    9000.00                                                                                                                                                                                   
      6000    6000.00                                                                                                                                                                                   
      4200    4200.00                                                                                                                                                                                   
      5800    5800.00                                                                                                                                                                                   
      3500    3500.00                                                                                                                                                                                   
      3100    3100.00                                                                                                                                                                                   
      2600    2600.00                                                                                                                                                                                   
      2500    2500.00                                                                                                                                                                                   
     10500   10500.00                                                                                                                                                                                   
     11000   11000.00                                                                                                                                                                                   
      8600    8600.00                                                                                                                                                                                   
      7000    7000.00                                                                                                                                                                                   
      4400    4400.00                                                                                                                                                                                   
     13000   13000.00                                                                                                                                                                                   
      6000    6000.00                                                                                                                                                                                   
     12000   12000.00                                                                                                                                                                                   
      8300    8300.00                                                                                                                                                                                   

20 rows selected.

SQL> SELECT SALARY ,TO_CHAR(SALARY ,'99,0999.99') FROM EMPLOYEES;

    SALARY TO_CHAR(SAL                                                                                                                                                                                  
---------- -----------                                                                                                                                                                                  
     24000   2,4000.00                                                                                                                                                                                  
     17000   1,7000.00                                                                                                                                                                                  
     17000   1,7000.00                                                                                                                                                                                  
      9000     9000.00                                                                                                                                                                                  
      6000     6000.00                                                                                                                                                                                  
      4200     4200.00                                                                                                                                                                                  
      5800     5800.00                                                                                                                                                                                  
      3500     3500.00                                                                                                                                                                                  
      3100     3100.00                                                                                                                                                                                  
      2600     2600.00                                                                                                                                                                                  
      2500     2500.00                                                                                                                                                                                  
     10500   1,0500.00                                                                                                                                                                                  
     11000   1,1000.00                                                                                                                                                                                  
      8600     8600.00                                                                                                                                                                                  
      7000     7000.00                                                                                                                                                                                  
      4400     4400.00                                                                                                                                                                                  
     13000   1,3000.00                                                                                                                                                                                  
      6000     6000.00                                                                                                                                                                                  
     12000   1,2000.00                                                                                                                                                                                  
      8300     8300.00                                                                                                                                                                                  

20 rows selected.

SQL> REM NUMBER VALID FORMAT CHARACTERS : 9  0 .  , D G $ L U S MI PR EEEE OR eeee V
SQL> 
SQL> SELECT SALARY ,TO_CHAR(SALARY ,'99G999D99') FROM EMPLOYEES;

    SALARY TO_CHAR(SA                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
     24000  24,000.00                                                                                                                                                                                   
     17000  17,000.00                                                                                                                                                                                   
     17000  17,000.00                                                                                                                                                                                   
      9000   9,000.00                                                                                                                                                                                   
      6000   6,000.00                                                                                                                                                                                   
      4200   4,200.00                                                                                                                                                                                   
      5800   5,800.00                                                                                                                                                                                   
      3500   3,500.00                                                                                                                                                                                   
      3100   3,100.00                                                                                                                                                                                   
      2600   2,600.00                                                                                                                                                                                   
      2500   2,500.00                                                                                                                                                                                   
     10500  10,500.00                                                                                                                                                                                   
     11000  11,000.00                                                                                                                                                                                   
      8600   8,600.00                                                                                                                                                                                   
      7000   7,000.00                                                                                                                                                                                   
      4400   4,400.00                                                                                                                                                                                   
     13000  13,000.00                                                                                                                                                                                   
      6000   6,000.00                                                                                                                                                                                   
     12000  12,000.00                                                                                                                                                                                   
      8300   8,300.00                                                                                                                                                                                   

20 rows selected.

SQL> 
SQL> REM D = DECIMAL SEPARATOR
SQL> 
SQL> REM G = GROUP SEPARATOR
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
SQL> COL PARAMETER FORMAT A30
SQL> 
SQL> COL VALUE FORMAT A30
SQL> 
SQL> R
  1* SELECT * FROM NLS_SESSION_PARAMETERS

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
SQL> SPOOL OFF;
