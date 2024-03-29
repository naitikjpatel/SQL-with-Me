SQL> 
SQL> REM DATE : TRUNC ,ROUND
SQL> 
SQL> REM TRUNC DATE : 1 MONTH  2Q/UARTER 3 YEAR
SQL> 
SQL> REM ROUND DATE WITH : 1MONTH 2 Q/QUARTER 3 YEAR
SQL> 
SQL> 
SQL> REM TRUNC DATE WITH MONTH : IT WILL RETURN SAME MONTH'S FIRST_DATE
SQL> 
SQL> REM TRUNC DATE WITH Q/QUARTER : IT WILL RETURN SAME QUARTER'S FIRST DATE
SQL> 
SQL> REM TRUNC DATE WITH YEAR : IT WILL RETURN SAME YEAR'S FIRST DATE
SQL> 
SQL> REM 01-JAN, 01-FEB .. 01-DEC : 12 POSIBILITIES
SQL> 
SQL> 
SQL> REM 1 YEAR : 4 QUARTERS
SQL> 
SQL> REM Q1 : 01-JAN TO 31-MAR
SQL> 
SQL> REM Q2 : 01-APR TO 30-JUN
SQL> 
SQL> REM Q3 : 01-JUL TO 30-SEP
SQL> 
SQL> REM Q4 : 01-OCT TO 31-DEC
SQL> 
SQL> 
SQL> REM TRUNC DATE WITH Q : 4 POSIBILITITES : 01-JAN ,01-APR ,01-JUL,01-OCT
SQL> 
SQL> REM TRUNC DATE WITH YEAR : 1 POSIBILITITES : 01-JAN
SQL> 
SQL> 
SQL> SELECT HIRE_DATE ,TRUNC (HIRE_DATE,'MONTH') FROM EMPLOYEES;

HIRE_DATE TRUNC(HIR                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 01-JUL-87                                                                                                                                                                                     
21-SEP-89 01-SEP-89                                                                                                                                                                                     
13-JAN-93 01-JAN-93                                                                                                                                                                                     
03-JAN-90 01-JAN-90                                                                                                                                                                                     
21-MAY-91 01-MAY-91                                                                                                                                                                                     
07-FEB-99 01-FEB-99                                                                                                                                                                                     
16-NOV-99 01-NOV-99                                                                                                                                                                                     
17-OCT-95 01-OCT-95                                                                                                                                                                                     
29-JAN-97 01-JAN-97                                                                                                                                                                                     
15-MAR-98 01-MAR-98                                                                                                                                                                                     
09-JUL-98 01-JUL-98                                                                                                                                                                                     
29-JAN-00 01-JAN-00                                                                                                                                                                                     
11-MAY-96 01-MAY-96                                                                                                                                                                                     
24-MAR-98 01-MAR-98                                                                                                                                                                                     
24-MAY-99 01-MAY-99                                                                                                                                                                                     
17-SEP-87 01-SEP-87                                                                                                                                                                                     
17-FEB-96 01-FEB-96                                                                                                                                                                                     
17-AUG-97 01-AUG-97                                                                                                                                                                                     
07-JUN-94 01-JUN-94                                                                                                                                                                                     
07-JUN-94 01-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE ,TRUNC (HIRE_DATE,'Q') FROM EMPLOYEES;

HIRE_DATE TRUNC(HIR                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 01-JUL-87                                                                                                                                                                                     
21-SEP-89 01-JUL-89                                                                                                                                                                                     
13-JAN-93 01-JAN-93                                                                                                                                                                                     
03-JAN-90 01-JAN-90                                                                                                                                                                                     
21-MAY-91 01-APR-91                                                                                                                                                                                     
07-FEB-99 01-JAN-99                                                                                                                                                                                     
16-NOV-99 01-OCT-99                                                                                                                                                                                     
17-OCT-95 01-OCT-95                                                                                                                                                                                     
29-JAN-97 01-JAN-97                                                                                                                                                                                     
15-MAR-98 01-JAN-98                                                                                                                                                                                     
09-JUL-98 01-JUL-98                                                                                                                                                                                     
29-JAN-00 01-JAN-00                                                                                                                                                                                     
11-MAY-96 01-APR-96                                                                                                                                                                                     
24-MAR-98 01-JAN-98                                                                                                                                                                                     
24-MAY-99 01-APR-99                                                                                                                                                                                     
17-SEP-87 01-JUL-87                                                                                                                                                                                     
17-FEB-96 01-JAN-96                                                                                                                                                                                     
17-AUG-97 01-JUL-97                                                                                                                                                                                     
07-JUN-94 01-APR-94                                                                                                                                                                                     
07-JUN-94 01-APR-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE ,TRUNC (HIRE_DATE,'YEAR') FROM EMPLOYEES;

HIRE_DATE TRUNC(HIR                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 01-JAN-87                                                                                                                                                                                     
21-SEP-89 01-JAN-89                                                                                                                                                                                     
13-JAN-93 01-JAN-93                                                                                                                                                                                     
03-JAN-90 01-JAN-90                                                                                                                                                                                     
21-MAY-91 01-JAN-91                                                                                                                                                                                     
07-FEB-99 01-JAN-99                                                                                                                                                                                     
16-NOV-99 01-JAN-99                                                                                                                                                                                     
17-OCT-95 01-JAN-95                                                                                                                                                                                     
29-JAN-97 01-JAN-97                                                                                                                                                                                     
15-MAR-98 01-JAN-98                                                                                                                                                                                     
09-JUL-98 01-JAN-98                                                                                                                                                                                     
29-JAN-00 01-JAN-00                                                                                                                                                                                     
11-MAY-96 01-JAN-96                                                                                                                                                                                     
24-MAR-98 01-JAN-98                                                                                                                                                                                     
24-MAY-99 01-JAN-99                                                                                                                                                                                     
17-SEP-87 01-JAN-87                                                                                                                                                                                     
17-FEB-96 01-JAN-96                                                                                                                                                                                     
17-AUG-97 01-JAN-97                                                                                                                                                                                     
07-JUN-94 01-JAN-94                                                                                                                                                                                     
07-JUN-94 01-JAN-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE ,TRUNC (HIRE_DATE,'MONTH') FROM EMPLOYEES;

HIRE_DATE TRUNC(HIR                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 01-JUL-87                                                                                                                                                                                     
21-SEP-89 01-SEP-89                                                                                                                                                                                     
13-JAN-93 01-JAN-93                                                                                                                                                                                     
03-JAN-90 01-JAN-90                                                                                                                                                                                     
21-MAY-91 01-MAY-91                                                                                                                                                                                     
07-FEB-99 01-FEB-99                                                                                                                                                                                     
16-NOV-99 01-NOV-99                                                                                                                                                                                     
17-OCT-95 01-OCT-95                                                                                                                                                                                     
29-JAN-97 01-JAN-97                                                                                                                                                                                     
15-MAR-98 01-MAR-98                                                                                                                                                                                     
09-JUL-98 01-JUL-98                                                                                                                                                                                     
29-JAN-00 01-JAN-00                                                                                                                                                                                     
11-MAY-96 01-MAY-96                                                                                                                                                                                     
24-MAR-98 01-MAR-98                                                                                                                                                                                     
24-MAY-99 01-MAY-99                                                                                                                                                                                     
17-SEP-87 01-SEP-87                                                                                                                                                                                     
17-FEB-96 01-FEB-96                                                                                                                                                                                     
17-AUG-97 01-AUG-97                                                                                                                                                                                     
07-JUN-94 01-JUN-94                                                                                                                                                                                     
07-JUN-94 01-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE ,TRUNC (HIRE_DATE,'MM') FROM EMPLOYEES;

HIRE_DATE TRUNC(HIR                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 01-JUL-87                                                                                                                                                                                     
21-SEP-89 01-SEP-89                                                                                                                                                                                     
13-JAN-93 01-JAN-93                                                                                                                                                                                     
03-JAN-90 01-JAN-90                                                                                                                                                                                     
21-MAY-91 01-MAY-91                                                                                                                                                                                     
07-FEB-99 01-FEB-99                                                                                                                                                                                     
16-NOV-99 01-NOV-99                                                                                                                                                                                     
17-OCT-95 01-OCT-95                                                                                                                                                                                     
29-JAN-97 01-JAN-97                                                                                                                                                                                     
15-MAR-98 01-MAR-98                                                                                                                                                                                     
09-JUL-98 01-JUL-98                                                                                                                                                                                     
29-JAN-00 01-JAN-00                                                                                                                                                                                     
11-MAY-96 01-MAY-96                                                                                                                                                                                     
24-MAR-98 01-MAR-98                                                                                                                                                                                     
24-MAY-99 01-MAY-99                                                                                                                                                                                     
17-SEP-87 01-SEP-87                                                                                                                                                                                     
17-FEB-96 01-FEB-96                                                                                                                                                                                     
17-AUG-97 01-AUG-97                                                                                                                                                                                     
07-JUN-94 01-JUN-94                                                                                                                                                                                     
07-JUN-94 01-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE ,TRUNC (HIRE_DATE,'Q') FROM EMPLOYEES;

HIRE_DATE TRUNC(HIR                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 01-JUL-87                                                                                                                                                                                     
21-SEP-89 01-JUL-89                                                                                                                                                                                     
13-JAN-93 01-JAN-93                                                                                                                                                                                     
03-JAN-90 01-JAN-90                                                                                                                                                                                     
21-MAY-91 01-APR-91                                                                                                                                                                                     
07-FEB-99 01-JAN-99                                                                                                                                                                                     
16-NOV-99 01-OCT-99                                                                                                                                                                                     
17-OCT-95 01-OCT-95                                                                                                                                                                                     
29-JAN-97 01-JAN-97                                                                                                                                                                                     
15-MAR-98 01-JAN-98                                                                                                                                                                                     
09-JUL-98 01-JUL-98                                                                                                                                                                                     
29-JAN-00 01-JAN-00                                                                                                                                                                                     
11-MAY-96 01-APR-96                                                                                                                                                                                     
24-MAR-98 01-JAN-98                                                                                                                                                                                     
24-MAY-99 01-APR-99                                                                                                                                                                                     
17-SEP-87 01-JUL-87                                                                                                                                                                                     
17-FEB-96 01-JAN-96                                                                                                                                                                                     
17-AUG-97 01-JUL-97                                                                                                                                                                                     
07-JUN-94 01-APR-94                                                                                                                                                                                     
07-JUN-94 01-APR-94                                                                                                                                                                                     

20 rows selected.

SQL> REM 1 YEAR : 4 QUARTERS
SQL> 
SQL> REM Q1 : 01-JAN TO 31-MAR
SQL> 
SQL> REM Q2 : 01-APR TO 30-JUN
SQL> 
SQL> REM Q3 : 01-JUL TO 30-SEP
SQL> 
SQL> REM Q4 : 01-OCT TO 31-DEC
SQL> 
SQL> REM TRUNC DATE WITH Q : 4 POSIBILITITES : 01-JAN ,01-APR ,01-JUL,01-OCT
SQL> 
SQL> 
SQL> 
SQL> SELECT HIRE_DATE ,TRUNC (HIRE_DATE,'YEAR') FROM EMPLOYEES;

HIRE_DATE TRUNC(HIR                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 01-JAN-87                                                                                                                                                                                     
21-SEP-89 01-JAN-89                                                                                                                                                                                     
13-JAN-93 01-JAN-93                                                                                                                                                                                     
03-JAN-90 01-JAN-90                                                                                                                                                                                     
21-MAY-91 01-JAN-91                                                                                                                                                                                     
07-FEB-99 01-JAN-99                                                                                                                                                                                     
16-NOV-99 01-JAN-99                                                                                                                                                                                     
17-OCT-95 01-JAN-95                                                                                                                                                                                     
29-JAN-97 01-JAN-97                                                                                                                                                                                     
15-MAR-98 01-JAN-98                                                                                                                                                                                     
09-JUL-98 01-JAN-98                                                                                                                                                                                     
29-JAN-00 01-JAN-00                                                                                                                                                                                     
11-MAY-96 01-JAN-96                                                                                                                                                                                     
24-MAR-98 01-JAN-98                                                                                                                                                                                     
24-MAY-99 01-JAN-99                                                                                                                                                                                     
17-SEP-87 01-JAN-87                                                                                                                                                                                     
17-FEB-96 01-JAN-96                                                                                                                                                                                     
17-AUG-97 01-JAN-97                                                                                                                                                                                     
07-JUN-94 01-JAN-94                                                                                                                                                                                     
07-JUN-94 01-JAN-94                                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> 
SQL> REM ROUND DATE WITH : 1 MONTH 2 Q/QUARTER 3 YEAR
SQL> 
SQL> SELECT ROUND(3.2) FORM DUAL;
SELECT ROUND(3.2) FORM DUAL
                       *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT ROUND(3.2) FROM DUAL;

ROUND(3.2)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         3                                                                                                                                                                                              

SQL> SELECT ROUND(3.6) FROM DUAL;

ROUND(3.6)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         4                                                                                                                                                                                              

SQL> 
SQL> REM FIRST HALF :  0 1 2 3 4
SQL> REM SECOND HALF : 5 6 7 8 9
SQL> 
SQL> REM IF DIGIT IN FIRST HALF NO CHANGE
SQL> 
SQL> REM IF DIGIT IN SECOND HALF ADD 1 TO PREVIOUS DIGIT
SQL> 
SQL> REM 1 MONTH = ?? DAYS 28/29/30/31
SQL> 
SQL> REM FIRST HALF: 1 TO 15
SQL> 
SQL> REM SECOND HALF : 16 TO ...
SQL> 
SQL> 
SQL> REM SECOND HALF : 16 TO ...(28/29/30/31)
SQL> 
SQL> REM IF WE ROUND DATE WITH MONTH ,IF DATE FALLS IN FIRST_HALF ,IT WILL RETURN SAME MONTH'S FIRST DATE
SQL> 
SQL> REM IF WE ROUND DATE WITH MONTH ,IF DATE FALLS IN SECOND HALF ,IT WILL RETURN NEXT MONTH'S FIRST DATE
SQL> 
SQL> SELECT HIRE_DATE ,ROUND(HIRE_DATE,'MONTH') FROM EMPLOYEES;

HIRE_DATE ROUND(HIR                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 01-AUG-87                                                                                                                                                                                     
21-SEP-89 01-OCT-89                                                                                                                                                                                     
13-JAN-93 01-JAN-93                                                                                                                                                                                     
03-JAN-90 01-JAN-90                                                                                                                                                                                     
21-MAY-91 01-JUN-91                                                                                                                                                                                     
07-FEB-99 01-FEB-99                                                                                                                                                                                     
16-NOV-99 01-DEC-99                                                                                                                                                                                     
17-OCT-95 01-NOV-95                                                                                                                                                                                     
29-JAN-97 01-FEB-97                                                                                                                                                                                     
15-MAR-98 01-MAR-98                                                                                                                                                                                     
09-JUL-98 01-JUL-98                                                                                                                                                                                     
29-JAN-00 01-FEB-00                                                                                                                                                                                     
11-MAY-96 01-MAY-96                                                                                                                                                                                     
24-MAR-98 01-APR-98                                                                                                                                                                                     
24-MAY-99 01-JUN-99                                                                                                                                                                                     
17-SEP-87 01-OCT-87                                                                                                                                                                                     
17-FEB-96 01-MAR-96                                                                                                                                                                                     
17-AUG-97 01-SEP-97                                                                                                                                                                                     
07-JUN-94 01-JUN-94                                                                                                                                                                                     
07-JUN-94 01-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> 
SQL> REM ROUND DATE WITH Q/QUARTER:
SQL> 
SQL> REM 1 YEAR = 4 QUARTERS
SQL> 
SQL> REM Q1 : 01-JAN TO 31-MAR : FIRST HALF : 01-JAN TO 15-FEB , SECONF HALF : 16-FEB TO 31-MAR
SQL> 
SQL> REM Q2 : 01-APR TO 30-JUN : FIRST HALF : 01-APR TO 15-MAY , SECOND HALF : 16-MAY TO 30-JUN
SQL> 
SQL> REM Q3 : 01-JUL TO 30-SEP : FIRST HALF : 01-JUL TO 15-AUG , SECOND HALF : 16-AUG TO 30-SEP
SQL> 
SQL> REM Q4 : 01-OCT TO 31-DEC : FIRST HALF : 01-OCT TO 15-NOV , SECOND HALF : 16-NOV TO 31-DEC
SQL> 
SQL> 
SQL> REM IF WE ROUND DATE WITH Q/QUARTER, IF DATE FALLS IN FIRST HALF, IT WILL RETURN SAME QUARTER'S FIRST DATE
SQL> 
SQL> REM IF WE ROUND DATE WITH Q/QUARTER, IF DATE FALLS IN SECOND HALF, IT WILL RETURN NEXT QUARTER'S FIRST DATE
SQL> 
SQL> 
SQL> 
SQL> SELECT HIRE_DATE,ROUND(HIRE_DATE,'Q') FROM EMPLOYEES;

HIRE_DATE ROUND(HIR                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 01-JUL-87                                                                                                                                                                                     
21-SEP-89 01-OCT-89                                                                                                                                                                                     
13-JAN-93 01-JAN-93                                                                                                                                                                                     
03-JAN-90 01-JAN-90                                                                                                                                                                                     
21-MAY-91 01-JUL-91                                                                                                                                                                                     
07-FEB-99 01-JAN-99                                                                                                                                                                                     
16-NOV-99 01-JAN-00                                                                                                                                                                                     
17-OCT-95 01-OCT-95                                                                                                                                                                                     
29-JAN-97 01-JAN-97                                                                                                                                                                                     
15-MAR-98 01-APR-98                                                                                                                                                                                     
09-JUL-98 01-JUL-98                                                                                                                                                                                     
29-JAN-00 01-JAN-00                                                                                                                                                                                     
11-MAY-96 01-APR-96                                                                                                                                                                                     
24-MAR-98 01-APR-98                                                                                                                                                                                     
24-MAY-99 01-JUL-99                                                                                                                                                                                     
17-SEP-87 01-OCT-87                                                                                                                                                                                     
17-FEB-96 01-APR-96                                                                                                                                                                                     
17-AUG-97 01-OCT-97                                                                                                                                                                                     
07-JUN-94 01-JUL-94                                                                                                                                                                                     
07-JUN-94 01-JUL-94                                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> REM ROUND DATE WITH YEAR:
SQL> REM 1 YEAR =12 MONTHS
SQL> 
SQL> REM FIRST HALF : 01-JAN TO 30-JUN
SQL> 
SQL> REM SECOND HALF: 01-JUL TO 31-DEC
SQL> 
SQL> 
SQL> REM IF WE ROUND DATE WITH YEAR, IF DATE FALLS IN FIRST HALF, IT WILL RETURN SAME YEAR'S FIRST DATE
SQL> 
SQL> 
SQL> REM IF WE ROUND DATE WITH YEAR, IF DATE FALLS IN SECOND HALF, IT WILL RETURN NEXT YEAR'S FIRST DATE
SQL> 
SQL> 
SQL> SELECT HIRE_DATE,ROUND(HIRE_DATE,'YEAR') FROM EMPLOYEES;

HIRE_DATE ROUND(HIR                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
17-JUL-87 01-JAN-88                                                                                                                                                                                     
21-SEP-89 01-JAN-90                                                                                                                                                                                     
13-JAN-93 01-JAN-93                                                                                                                                                                                     
03-JAN-90 01-JAN-90                                                                                                                                                                                     
21-MAY-91 01-JAN-91                                                                                                                                                                                     
07-FEB-99 01-JAN-99                                                                                                                                                                                     
16-NOV-99 01-JAN-00                                                                                                                                                                                     
17-OCT-95 01-JAN-96                                                                                                                                                                                     
29-JAN-97 01-JAN-97                                                                                                                                                                                     
15-MAR-98 01-JAN-98                                                                                                                                                                                     
09-JUL-98 01-JAN-99                                                                                                                                                                                     
29-JAN-00 01-JAN-00                                                                                                                                                                                     
11-MAY-96 01-JAN-96                                                                                                                                                                                     
24-MAR-98 01-JAN-98                                                                                                                                                                                     
24-MAY-99 01-JAN-99                                                                                                                                                                                     
17-SEP-87 01-JAN-88                                                                                                                                                                                     
17-FEB-96 01-JAN-96                                                                                                                                                                                     
17-AUG-97 01-JAN-98                                                                                                                                                                                     
07-JUN-94 01-JAN-94                                                                                                                                                                                     
07-JUN-94 01-JAN-94                                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> REM CHARACTER FUNCTION :14
SQL> 
SQL> REM NUMBER FUNCTIONS: 7
SQL> 
SQL> REM DATE FUNCTIONS: 8
SQL> 
SQL> SPOOL OFF;
