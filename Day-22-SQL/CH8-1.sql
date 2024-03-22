SQL> 
SQL> REM SET OPERATORS:
SQL> 
SQL> REM SET OPERATORS: TO CLUB TWO RESULT SET VERTICALLY
SQL> 
SQL> REM ORACLE SUPPORTS : 4 SET OPERATORS
SQL> 
SQL> REM 1 UNION ALL 2 UNION 3 INTERSECT 4 MINUS
SQL> 
SQL> REM WHEN WE USE SET OPERATORS, THE STATEMENT IS CALLED COMPOUND STATEMENT
SQL> 
SQL> REM COMPOUND STATEMENT SYNTAX : SELECT . FROM . WHERE . GROUP BY . HAVING SET OPERATOR SELECT . FROM .WHERE .GROUP BY .HAVING ORDER BY .OFFSET .FETCH
SQL> 
SQL> REM UNION ALL : IS SIMPLY CLUBS BOTH THE RESULT SETS INCLUDING DUPLICATE ROWS
SQL> 
SQL> SELECT * FR0M MPSEMP;
SELECT * FR0M MPSEMP
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT JOB FROM MPSEMP;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
PRESIDENT                                                                                                                                                                                               
MANAGER                                                                                                                                                                                                 
MANAGER                                                                                                                                                                                                 
ANALYST                                                                                                                                                                                                 
MANAGER                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
ANALYST                                                                                                                                                                                                 
SALESMAN                                                                                                                                                                                                
CLERK                                                                                                                                                                                                   
CLERK                                                                                                                                                                                                   
CLERK                                                                                                                                                                                                   

14 rows selected.

SQL> SELECT * FROM MPSEMP;

     EMPNO ENAME      JOB               MGR HIREDATE         SAL       COMM     DEPTNO                                                                                                                  
---------- ---------- ---------- ---------- --------- ---------- ---------- ----------                                                                                                                  
      7839 KING       PRESIDENT             17-NOV-81       5000                    10                                                                                                                  
      7782 CLARK      MANAGER          7839 09-JUN-81       2450                    10                                                                                                                  
      7566 JONES      MANAGER          7839 02-APR-81       2975                    20                                                                                                                  
      7902 FORD       ANALYST          7566 04-DEC-81                  3000         20                                                                                                                  
      7698 BLAKE      MANAGER          7839 01-MAY-91       2850                    30                                                                                                                  
      7369 SMITH      CLERK            7902 17-DEC-80        800                    20                                                                                                                  
      7499 ALLEN      SALESMAN         7698 20-FEB-81       2100        300         30                                                                                                                  
      7521 WARD       SALESMAN         7698 22-FEB-81       1750        500         30                                                                                                                  
      7654 MARTIN     SALESMAN         7698 28-SEP-81       1750       1400         30                                                                                                                  
      7788 SCOTT      ANALYST          7566 09-DEC-82       3900                    20                                                                                                                  
      7844 TURNER     SALESMAN         7698 08-SEP-81       2000          0         30                                                                                                                  
      7876 ADAMS      CLERK            7788 12-JAN-89                  1100         20                                                                                                                  
      7900 JAMES      CLERK            7698 03-DEC-81                   950         30                                                                                                                  
      7934 MILLER     CLERK            7782 23-JAN-82       1300                    10                                                                                                                  

14 rows selected.

SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
PRESIDENT                                                                                                                                                                                               
MANAGER                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=20;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
MANAGER                                                                                                                                                                                                 
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
MANAGER                                                                                                                                                                                                 
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
CLERK                                                                                                                                                                                                   

6 rows selected.

SQL> 
SQL> REM UNION ALL
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10
  2  UNION ALL
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=20;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
PRESIDENT                                                                                                                                                                                               
MANAGER                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
MANAGER                                                                                                                                                                                                 
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

8 rows selected.

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=20
  2  UNION ALL
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=10;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
MANAGER                                                                                                                                                                                                 
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
PRESIDENT                                                                                                                                                                                               
MANAGER                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

8 rows selected.

SQL> 
SQL> 
SQL> REM REMAINING 3 SET OPERATORS PERFORM 2 COMMON TASKS :
SQL> 
SQL> REM 1 REMOVES DUPLICATE ROWS 2 SORT RESULT IN ASCENDING ORDER FIRST COLUMN ,SECOND COLUMN,..
SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
PRESIDENT                                                                                                                                                                                               
MANAGER                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=20;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
MANAGER                                                                                                                                                                                                 
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

SQL> 
SQL> REM UNION : IT PERFORMS ONLY TWO COMMON TASKS.
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
PRESIDENT                                                                                                                                                                                               
MANAGER                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10
  2  UNION
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=20;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
MANAGER                                                                                                                                                                                                 
PRESIDENT                                                                                                                                                                                               

SQL> 
SQL> 
SQL> REM Q1:
SQL> REM UNION : HOWMANY ROWS WILL GET DISPLAYED ?
SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=20;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
MANAGER                                                                                                                                                                                                 
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
MANAGER                                                                                                                                                                                                 
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
CLERK                                                                                                                                                                                                   

6 rows selected.

SQL> REM UNION : HOWMANY ROWS WILL GET DISPLAYED ?
SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=20
  2  UNION
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
MANAGER                                                                                                                                                                                                 
SALESMAN                                                                                                                                                                                                

SQL> 
SQL> 
SQL> REM INTERSECT : IT WILL RETURN ONLY COMMON ROWS OF BOTH RESULT SETS.
SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=20;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
MANAGER                                                                                                                                                                                                 
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

SQL> 
SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
MANAGER                                                                                                                                                                                                 
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
CLERK                                                                                                                                                                                                   

6 rows selected.

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=20
  2  INTERSECT
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
CLERK                                                                                                                                                                                                   
MANAGER                                                                                                                                                                                                 

SQL> 
SQL> 
SQL> REM HOWMANY ?
SQL> REM INTERSECT : HOW MANY ?
SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=20
  2  INTERSECT
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
CLERK                                                                                                                                                                                                   
MANAGER                                                                                                                                                                                                 

SQL> 
SQL> 
SQL> REM MINUS : IT WILL REMOVE COMMON ROWS FROM FIRST RESULT SET
SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
PRESIDENT                                                                                                                                                                                               
MANAGER                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=20;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
MANAGER                                                                                                                                                                                                 
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10
  2  MINUS
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=20;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
PRESIDENT                                                                                                                                                                                               

SQL> 
SQL> 
SQL> REM UNION ALL : HOW MANY ROWS ?
SQL> 
SQL> REM UNION : HOW MANY ROWS?
SQL> 
SQL> REM INTERSECT : HOW MANY ROWS?
SQL> 
SQL> REM MINUS : HOW MANY ROWS? : 10 MINUS 20 MINUS 30
SQL> REM MINUS : HOW MANY ROWS? : 20 MINUS 10 MINUS 30
SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10
  2  UNION ALL
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=20
  4  UNION ALL
  5  SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
PRESIDENT                                                                                                                                                                                               
MANAGER                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
MANAGER                                                                                                                                                                                                 
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
MANAGER                                                                                                                                                                                                 
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
SALESMAN                                                                                                                                                                                                
CLERK                                                                                                                                                                                                   

14 rows selected.

SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10
  2  UNION
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=20
  4  UNION
  5  SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
ANALYST                                                                                                                                                                                                 
CLERK                                                                                                                                                                                                   
MANAGER                                                                                                                                                                                                 
PRESIDENT                                                                                                                                                                                               
SALESMAN                                                                                                                                                                                                

SQL> 
SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10
  2  INTERSECT
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=20
  4  INTERSECT
  5  SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
CLERK                                                                                                                                                                                                   
MANAGER                                                                                                                                                                                                 

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=10
  2  MINUS
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=20
  4  MINUS
  5  SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
PRESIDENT                                                                                                                                                                                               

SQL> SELECT JOB FROM MPSEMP WHERE DEPTNO=20
  2  MINUS
  3  SELECT JOB FROM MPSEMP WHERE DEPTNO=10
  4  MINUS
  5  SELECT JOB FROM MPSEMP WHERE DEPTNO=30;

JOB                                                                                                                                                                                                     
----------                                                                                                                                                                                              
ANALYST                                                                                                                                                                                                 

SQL> 
SQL> REM EXPLORE MORE ABOUT THE SET OPERATORS
SQL> 
SQL> SPOOL OFF;
