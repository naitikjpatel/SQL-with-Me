SQL> 
SQL> REM 1 DECODE 2 CASE ... WHEN ... THEN ... ELSE ... END  3 CASE WHEN ... THEN ... ELSE ... END
SQL> 
SQL> REM DECODE  AND CASE FIRST SYNTAX CAN DO ONLY EQALITY COMPARISON WHICH 'WHERE' CLAUSE SUPPRTS
SQL> 
SQL> REM COMPANY INCREMENT POLICY : +1500 INCREMENT AMOUNT
SQL> 
SQL> SELECT FIRST_NAME ,SALARY ,SALARY+1500 INCREMENT_SALARY FROM EMPLOYEES;

FIRST_NAME          SALARY INCREMENT_SALARY                                                                                                                                                             
--------------- ---------- ----------------                                                                                                                                                             
Steven               24000            25500                                                                                                                                                             
Neena                17000            18500                                                                                                                                                             
Lex                  17000            18500                                                                                                                                                             
Alexander             9000            10500                                                                                                                                                             
Bruce                 6000             7500                                                                                                                                                             
Diana                 4200             5700                                                                                                                                                             
Kevin                 5800             7300                                                                                                                                                             
Trenna                3500             5000                                                                                                                                                             
Curtis                3100             4600                                                                                                                                                             
Randall               2600             4100                                                                                                                                                             
Peter                 2500             4000                                                                                                                                                             
Eleni                10500            12000                                                                                                                                                             
Ellen                11000            12500                                                                                                                                                             
Jonathon              8600            10100                                                                                                                                                             
Kimerely              7000             8500                                                                                                                                                             
Jennifer              4400             5900                                                                                                                                                             
Michael              13000            14500                                                                                                                                                             
Pat                   6000             7500                                                                                                                                                             
Shelley              12000            13500                                                                                                                                                             
William               8300             9800                                                                                                                                                             

20 rows selected.

SQL> 
SQL> REM COMPANY INCREMENT POLICY : 20%
SQL> 
SQL> SELECT FIRST_NAME ,SALARY ,SALARY + SALARY *0.2 INCREMENTED_SALARY FROM EMPLOYEES;

FIRST_NAME          SALARY INCREMENTED_SALARY                                                                                                                                                           
--------------- ---------- ------------------                                                                                                                                                           
Steven               24000              28800                                                                                                                                                           
Neena                17000              20400                                                                                                                                                           
Lex                  17000              20400                                                                                                                                                           
Alexander             9000              10800                                                                                                                                                           
Bruce                 6000               7200                                                                                                                                                           
Diana                 4200               5040                                                                                                                                                           
Kevin                 5800               6960                                                                                                                                                           
Trenna                3500               4200                                                                                                                                                           
Curtis                3100               3720                                                                                                                                                           
Randall               2600               3120                                                                                                                                                           
Peter                 2500               3000                                                                                                                                                           
Eleni                10500              12600                                                                                                                                                           
Ellen                11000              13200                                                                                                                                                           
Jonathon              8600              10320                                                                                                                                                           
Kimerely              7000               8400                                                                                                                                                           
Jennifer              4400               5280                                                                                                                                                           
Michael              13000              15600                                                                                                                                                           
Pat                   6000               7200                                                                                                                                                           
Shelley              12000              14400                                                                                                                                                           
William               8300               9960                                                                                                                                                           

20 rows selected.

SQL> SELECT FIRST_NAME ,SALARY ,SALARY + SALARY *1.2 INCREMENTED_SALARY FROM EMPLOYEES;

FIRST_NAME          SALARY INCREMENTED_SALARY                                                                                                                                                           
--------------- ---------- ------------------                                                                                                                                                           
Steven               24000              52800                                                                                                                                                           
Neena                17000              37400                                                                                                                                                           
Lex                  17000              37400                                                                                                                                                           
Alexander             9000              19800                                                                                                                                                           
Bruce                 6000              13200                                                                                                                                                           
Diana                 4200               9240                                                                                                                                                           
Kevin                 5800              12760                                                                                                                                                           
Trenna                3500               7700                                                                                                                                                           
Curtis                3100               6820                                                                                                                                                           
Randall               2600               5720                                                                                                                                                           
Peter                 2500               5500                                                                                                                                                           
Eleni                10500              23100                                                                                                                                                           
Ellen                11000              24200                                                                                                                                                           
Jonathon              8600              18920                                                                                                                                                           
Kimerely              7000              15400                                                                                                                                                           
Jennifer              4400               9680                                                                                                                                                           
Michael              13000              28600                                                                                                                                                           
Pat                   6000              13200                                                                                                                                                           
Shelley              12000              26400                                                                                                                                                           
William               8300              18260                                                                                                                                                           

20 rows selected.

SQL> SELECT FIRST_NAME ,SALARY ,SALARY + (SALARY *0.2) INCREMENTED_SALARY FROM EMPLOYEES;

FIRST_NAME          SALARY INCREMENTED_SALARY                                                                                                                                                           
--------------- ---------- ------------------                                                                                                                                                           
Steven               24000              28800                                                                                                                                                           
Neena                17000              20400                                                                                                                                                           
Lex                  17000              20400                                                                                                                                                           
Alexander             9000              10800                                                                                                                                                           
Bruce                 6000               7200                                                                                                                                                           
Diana                 4200               5040                                                                                                                                                           
Kevin                 5800               6960                                                                                                                                                           
Trenna                3500               4200                                                                                                                                                           
Curtis                3100               3720                                                                                                                                                           
Randall               2600               3120                                                                                                                                                           
Peter                 2500               3000                                                                                                                                                           
Eleni                10500              12600                                                                                                                                                           
Ellen                11000              13200                                                                                                                                                           
Jonathon              8600              10320                                                                                                                                                           
Kimerely              7000               8400                                                                                                                                                           
Jennifer              4400               5280                                                                                                                                                           
Michael              13000              15600                                                                                                                                                           
Pat                   6000               7200                                                                                                                                                           
Shelley              12000              14400                                                                                                                                                           
William               8300               9960                                                                                                                                                           

20 rows selected.

SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM COMAPANY INCREMTNPOLICY BASED ON DEPARTMENT_ID : 50 +1500 ,20 +1200 , 60 +900 , REMAINING +400
SQL> 
SQL> SELECT FISRT_NAME ,DEPARTMENT_ID ,SALARY ,
  2  DECODE(DEPARTMENT_ID ,50 ,SALARY+1500
  3  			  ,20 ,SALARY+1200
  4  			  ,60 ,SALARY+900
  5  			  ,80 ,SALARY+600 ,SALARY +400) INCREMENTED_SALARY FROM EMPLOYEES;
SELECT FISRT_NAME ,DEPARTMENT_ID ,SALARY ,
       *
ERROR at line 1:
ORA-00904: "FISRT_NAME": invalid identifier 


SQL> SELECT FIRST_NAME ,DEPARTMENT_ID ,SALARY ,
  2  DECODE(DEPARTMENT_ID ,50 ,SALARY+1500
  3  			  ,20 ,SALARY+1200
  4  			  ,60 ,SALARY+900
  5  			  ,80 ,SALARY+600 ,SALARY +400) INCREMENTED_SALARY FROM EMPLOYEES;

FIRST_NAME      DEPARTMENT_ID     SALARY INCREMENTED_SALARY                                                                                                                                             
--------------- ------------- ---------- ------------------                                                                                                                                             
Steven                     90      24000              24400                                                                                                                                             
Neena                      90      17000              17400                                                                                                                                             
Lex                        90      17000              17400                                                                                                                                             
Alexander                  60       9000               9900                                                                                                                                             
Bruce                      60       6000               6900                                                                                                                                             
Diana                      60       4200               5100                                                                                                                                             
Kevin                      50       5800               7300                                                                                                                                             
Trenna                     50       3500               5000                                                                                                                                             
Curtis                     50       3100               4600                                                                                                                                             
Randall                    50       2600               4100                                                                                                                                             
Peter                      50       2500               4000                                                                                                                                             
Eleni                      80      10500              11100                                                                                                                                             
Ellen                      80      11000              11600                                                                                                                                             
Jonathon                   80       8600               9200                                                                                                                                             
Kimerely                            7000               7400                                                                                                                                             
Jennifer                   10       4400               4800                                                                                                                                             
Michael                    20      13000              14200                                                                                                                                             
Pat                        20       6000               7200                                                                                                                                             
Shelley                   110      12000              12400                                                                                                                                             
William                   110       8300               8700                                                                                                                                             

20 rows selected.

SQL> 
SQL> 
SQL> REM COMAPNY INCREMT POLICY BASED ON THE JOB_ID : IT_PROG 40% ,ST_CLERK 30% AD_VP 20% ,REMAINING 7.5%
SQL> 
SQL> 
SQL> SELECT FIRST_NAME ,DEPARTMENT_ID ,SALARY
  2  ,DECODE (JOB_ID ,'IT_PROG' ,SALARY *1.4
  3  		     ,'ST_CLERK',SALARY * 1.3
  4  		     ,'AD_VP',SALARY * 1.2 ,SALARY *1.075) INCREMENTED_SALARY FROM EMPLOYEES;

FIRST_NAME      DEPARTMENT_ID     SALARY INCREMENTED_SALARY                                                                                                                                             
--------------- ------------- ---------- ------------------                                                                                                                                             
Steven                     90      24000              25800                                                                                                                                             
Neena                      90      17000              20400                                                                                                                                             
Lex                        90      17000              20400                                                                                                                                             
Alexander                  60       9000              12600                                                                                                                                             
Bruce                      60       6000               8400                                                                                                                                             
Diana                      60       4200               5880                                                                                                                                             
Kevin                      50       5800               6235                                                                                                                                             
Trenna                     50       3500               4550                                                                                                                                             
Curtis                     50       3100               4030                                                                                                                                             
Randall                    50       2600               3380                                                                                                                                             
Peter                      50       2500               3250                                                                                                                                             
Eleni                      80      10500            11287.5                                                                                                                                             
Ellen                      80      11000              11825                                                                                                                                             
Jonathon                   80       8600               9245                                                                                                                                             
Kimerely                            7000               7525                                                                                                                                             
Jennifer                   10       4400               4730                                                                                                                                             
Michael                    20      13000              13975                                                                                                                                             
Pat                        20       6000               6450                                                                                                                                             
Shelley                   110      12000              12900                                                                                                                                             
William                   110       8300             8922.5                                                                                                                                             

20 rows selected.

SQL> REM COMAPNY INCREMT POLICY BASED ON THE JOB_ID : IT_PROG 40% ,ST_CLERK 30% AD_VP 20% ,REMAINING NO INCREMENT
SQL> 
SQL> SELECT FIRST_NAME ,DEPARTMENT_ID ,SALARY
  2  ,DECODE (JOB_ID ,'IT_PROG' ,SALARY *1.4
  3  		     ,'ST_CLERK',SALARY * 1.3
  4  		     ,'AD_VP',SALARY * 1.2) INCREMENTED_SALARY FROM EMPLOYEES;

FIRST_NAME      DEPARTMENT_ID     SALARY INCREMENTED_SALARY                                                                                                                                             
--------------- ------------- ---------- ------------------                                                                                                                                             
Steven                     90      24000                                                                                                                                                                
Neena                      90      17000              20400                                                                                                                                             
Lex                        90      17000              20400                                                                                                                                             
Alexander                  60       9000              12600                                                                                                                                             
Bruce                      60       6000               8400                                                                                                                                             
Diana                      60       4200               5880                                                                                                                                             
Kevin                      50       5800                                                                                                                                                                
Trenna                     50       3500               4550                                                                                                                                             
Curtis                     50       3100               4030                                                                                                                                             
Randall                    50       2600               3380                                                                                                                                             
Peter                      50       2500               3250                                                                                                                                             
Eleni                      80      10500                                                                                                                                                                
Ellen                      80      11000                                                                                                                                                                
Jonathon                   80       8600                                                                                                                                                                
Kimerely                            7000                                                                                                                                                                
Jennifer                   10       4400                                                                                                                                                                
Michael                    20      13000                                                                                                                                                                
Pat                        20       6000                                                                                                                                                                
Shelley                   110      12000                                                                                                                                                                
William                   110       8300                                                                                                                                                                

20 rows selected.

SQL> SELECT FIRST_NAME ,DEPARTMENT_ID ,SALARY
  2  ,DECODE (JOB_ID ,'IT_PROG' ,SALARY *1.4
  3  		     ,'ST_CLERK',SALARY * 1.3
  4  		     ,'AD_VP',SALARY * 1.2,SALARY) INCREMENTED_SALARY FROM EMPLOYEES;

FIRST_NAME      DEPARTMENT_ID     SALARY INCREMENTED_SALARY                                                                                                                                             
--------------- ------------- ---------- ------------------                                                                                                                                             
Steven                     90      24000              24000                                                                                                                                             
Neena                      90      17000              20400                                                                                                                                             
Lex                        90      17000              20400                                                                                                                                             
Alexander                  60       9000              12600                                                                                                                                             
Bruce                      60       6000               8400                                                                                                                                             
Diana                      60       4200               5880                                                                                                                                             
Kevin                      50       5800               5800                                                                                                                                             
Trenna                     50       3500               4550                                                                                                                                             
Curtis                     50       3100               4030                                                                                                                                             
Randall                    50       2600               3380                                                                                                                                             
Peter                      50       2500               3250                                                                                                                                             
Eleni                      80      10500              10500                                                                                                                                             
Ellen                      80      11000              11000                                                                                                                                             
Jonathon                   80       8600               8600                                                                                                                                             
Kimerely                            7000               7000                                                                                                                                             
Jennifer                   10       4400               4400                                                                                                                                             
Michael                    20      13000              13000                                                                                                                                             
Pat                        20       6000               6000                                                                                                                                             
Shelley                   110      12000              12000                                                                                                                                             
William                   110       8300               8300                                                                                                                                             

20 rows selected.

SQL> 
SQL> 
SQL> 
SQL> SELECT 140/100 FROM DUAL;

   140/100                                                                                                                                                                                              
----------                                                                                                                                                                                              
       1.4                                                                                                                                                                                              

SQL> 
SQL> 
SQL> SELECT SALARY ,SALARY*140/100 ,SALARY * 1.4 FROM EMPLOYEES;

    SALARY SALARY*140/100 SALARY*1.4                                                                                                                                                                    
---------- -------------- ----------                                                                                                                                                                    
     24000          33600      33600                                                                                                                                                                    
     17000          23800      23800                                                                                                                                                                    
     17000          23800      23800                                                                                                                                                                    
      9000          12600      12600                                                                                                                                                                    
      6000           8400       8400                                                                                                                                                                    
      4200           5880       5880                                                                                                                                                                    
      5800           8120       8120                                                                                                                                                                    
      3500           4900       4900                                                                                                                                                                    
      3100           4340       4340                                                                                                                                                                    
      2600           3640       3640                                                                                                                                                                    
      2500           3500       3500                                                                                                                                                                    
     10500          14700      14700                                                                                                                                                                    
     11000          15400      15400                                                                                                                                                                    
      8600          12040      12040                                                                                                                                                                    
      7000           9800       9800                                                                                                                                                                    
      4400           6160       6160                                                                                                                                                                    
     13000          18200      18200                                                                                                                                                                    
      6000           8400       8400                                                                                                                                                                    
     12000          16800      16800                                                                                                                                                                    
      8300          11620      11620                                                                                                                                                                    

20 rows selected.

SQL> 
SQL> 
SQL> REM -----------------------------CASE ---------------------------------
> 
SQL> 
SQL> REM CASE WHEN .... THEN ... ELSE.... END;
SQL> 
SQL> REM CASE WHEN CONDITION THEN ACTION ELSE ... ENDL
SQL> ;
  1* SELECT SALARY ,SALARY*140/100 ,SALARY * 1.4 FROM EMPLOYEES
SQL> 
SQL> 
SQL> REM INCREMENT POLICY IS BAESED ON SALARY RANGE : 0-6000 +2000 ,6001-9000 +1500 ,9001-13000 +1000 ,REMAINING +500
SQL> 
SQL> 
SQL> SELECT FIRST_NAME ,SALARY
  2  CASE WHEN SALARY BETWEEN 0 AND 6000 THEN SALARY +2000
  3  	  WHEN SALARY BETWEEN 6001 AND 9000 THEN SALARY+1500
  4  	  WHEN SALARY BETWEEN 9001 AND 13000 THEN SALARY + 1000
  5       ELSE SALARY+500 END INCREMENTED_SALARY
  6  FROM EMPLOYEES;
CASE WHEN SALARY BETWEEN 0 AND 6000 THEN SALARY +2000
     *
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT FIRST_NAME ,SALARY,
  2  CASE WHEN SALARY BETWEEN 0 AND 6000 THEN SALARY +2000
  3  	  WHEN SALARY BETWEEN 6001 AND 9000 THEN SALARY+1500
  4  	  WHEN SALARY BETWEEN 9001 AND 13000 THEN SALARY + 1000
  5       ELSE SALARY+500 END INCREMENTED_SALARY
  6  FROM EMPLOYEES;

FIRST_NAME          SALARY INCREMENTED_SALARY                                                                                                                                                           
--------------- ---------- ------------------                                                                                                                                                           
Steven               24000              24500                                                                                                                                                           
Neena                17000              17500                                                                                                                                                           
Lex                  17000              17500                                                                                                                                                           
Alexander             9000              10500                                                                                                                                                           
Bruce                 6000               8000                                                                                                                                                           
Diana                 4200               6200                                                                                                                                                           
Kevin                 5800               7800                                                                                                                                                           
Trenna                3500               5500                                                                                                                                                           
Curtis                3100               5100                                                                                                                                                           
Randall               2600               4600                                                                                                                                                           
Peter                 2500               4500                                                                                                                                                           
Eleni                10500              11500                                                                                                                                                           
Ellen                11000              12000                                                                                                                                                           
Jonathon              8600              10100                                                                                                                                                           
Kimerely              7000               8500                                                                                                                                                           
Jennifer              4400               6400                                                                                                                                                           
Michael              13000              14000                                                                                                                                                           
Pat                   6000               8000                                                                                                                                                           
Shelley              12000              13000                                                                                                                                                           
William               8300               9800                                                                                                                                                           

20 rows selected.

SQL> 
SQL> SELECT FIRST_NAME ,SALARY,
  2  CASE WHEN SALARY BETWEEN 0 AND 6000 THEN SALARY +2000
  3  	  WHEN SALARY BETWEEN 6001 AND 9000 THEN SALARY+1500
  4  	  WHEN SALARY BETWEEN 9001 AND 13000 THEN SALARY + 1000
  5       ELSE SALARY+500 END INCREMENTED_SALARY
  6  FROM EMPLOYEES ORDER BY 2;

FIRST_NAME          SALARY INCREMENTED_SALARY                                                                                                                                                           
--------------- ---------- ------------------                                                                                                                                                           
Peter                 2500               4500                                                                                                                                                           
Randall               2600               4600                                                                                                                                                           
Curtis                3100               5100                                                                                                                                                           
Trenna                3500               5500                                                                                                                                                           
Diana                 4200               6200                                                                                                                                                           
Jennifer              4400               6400                                                                                                                                                           
Kevin                 5800               7800                                                                                                                                                           
Bruce                 6000               8000                                                                                                                                                           
Pat                   6000               8000                                                                                                                                                           
Kimerely              7000               8500                                                                                                                                                           
William               8300               9800                                                                                                                                                           
Jonathon              8600              10100                                                                                                                                                           
Alexander             9000              10500                                                                                                                                                           
Eleni                10500              11500                                                                                                                                                           
Ellen                11000              12000                                                                                                                                                           
Shelley              12000              13000                                                                                                                                                           
Michael              13000              14000                                                                                                                                                           
Neena                17000              17500                                                                                                                                                           
Lex                  17000              17500                                                                                                                                                           
Steven               24000              24500                                                                                                                                                           

20 rows selected.

SQL> REM INCREMENT POLICY IS BASED ON JOB_ID : IT_PROG AD_VP SA_MAN 30% , ST_CLERK ST_MAN AD_ASST 20% , REMAINING 10%
SQL> 
SQL> 
SQL> 
SQL> SELECT FIRST_NAME, JOB_ID ,SALARY,
  2  CASE WHEN JOB_ID IN ('IT_PROG','AD_VP','SA_MAN') THEN SALARY *1.3
  3  	  WHEN JOB_ID IN ('ST_CLERK','ST_MAN','AD_ASST') THEN SALARY * 1.2
  4   	  ELSE SALARY *1.1 END INCREMENTED_SALRY FROM EMPLOYEES;

FIRST_NAME      JOB_ID         SALARY INCREMENTED_SALRY                                                                                                                                                 
--------------- ---------- ---------- -----------------                                                                                                                                                 
Steven          AD_PRES         24000             26400                                                                                                                                                 
Neena           AD_VP           17000             22100                                                                                                                                                 
Lex             AD_VP           17000             22100                                                                                                                                                 
Alexander       IT_PROG          9000             11700                                                                                                                                                 
Bruce           IT_PROG          6000              7800                                                                                                                                                 
Diana           IT_PROG          4200              5460                                                                                                                                                 
Kevin           ST_MAN           5800              6960                                                                                                                                                 
Trenna          ST_CLERK         3500              4200                                                                                                                                                 
Curtis          ST_CLERK         3100              3720                                                                                                                                                 
Randall         ST_CLERK         2600              3120                                                                                                                                                 
Peter           ST_CLERK         2500              3000                                                                                                                                                 
Eleni           SA_MAN          10500             13650                                                                                                                                                 
Ellen           SA_REP          11000             12100                                                                                                                                                 
Jonathon        SA_REP           8600              9460                                                                                                                                                 
Kimerely        SA_REP           7000              7700                                                                                                                                                 
Jennifer        AD_ASST          4400              5280                                                                                                                                                 
Michael         MK_MAN          13000             14300                                                                                                                                                 
Pat             MK_REP           6000              6600                                                                                                                                                 
Shelley         AC_MGR          12000             13200                                                                                                                                                 
William         AC_ACCOUNT       8300              9130                                                                                                                                                 

20 rows selected.

SQL> 
SQL> 
SQL> SPOOL OFF;
