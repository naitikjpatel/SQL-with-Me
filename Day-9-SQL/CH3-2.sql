SQL> 
SQL> REM TODAY WE COVER THE MORE CHARACTER FUNCTION : TRANSLATE REPLACE SUBSTR INSTR
SQL> 
SQL> 
SQL> REM 1 TRANSLATE : DELETES AND/OR REPLACES CHARACTER BY CHARACTER BY CHARACTERS
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

SQL> SELECT HIRE_DATE ,TRANSLATE (HIRE_DATE,'JAN','jan') FROM  EMPLOYEES;

HIRE_DATE TRANSLATE(HIRE_DATE,'JAN','JAN')                                                                                                                                                              
--------- ------------------------------------------------------------------------                                                                                                                      
17-JUL-87 17-jUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-jan-93                                                                                                                                                                                     
03-JAN-90 03-jan-90                                                                                                                                                                                     
21-MAY-91 21-MaY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-nOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-jan-97                                                                                                                                                                                     
15-MAR-98 15-MaR-98                                                                                                                                                                                     
09-JUL-98 09-jUL-98                                                                                                                                                                                     
29-JAN-00 29-jan-00                                                                                                                                                                                     
11-MAY-96 11-MaY-96                                                                                                                                                                                     
24-MAR-98 24-MaR-98                                                                                                                                                                                     
24-MAY-99 24-MaY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-aUG-97                                                                                                                                                                                     
07-JUN-94 07-jUn-94                                                                                                                                                                                     
07-JUN-94 07-jUn-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE ,TRANSLATE (HIRE_DATE,'JAN','ja') FROM  EMPLOYEES;

HIRE_DATE TRANSLATE(HIRE_DATE,'JAN','JA')                                                                                                                                                               
--------- ------------------------------------------------------------------------                                                                                                                      
17-JUL-87 17-jUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-ja-93                                                                                                                                                                                      
03-JAN-90 03-ja-90                                                                                                                                                                                      
21-MAY-91 21-MaY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-OV-99                                                                                                                                                                                      
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-ja-97                                                                                                                                                                                      
15-MAR-98 15-MaR-98                                                                                                                                                                                     
09-JUL-98 09-jUL-98                                                                                                                                                                                     
29-JAN-00 29-ja-00                                                                                                                                                                                      
11-MAY-96 11-MaY-96                                                                                                                                                                                     
24-MAR-98 24-MaR-98                                                                                                                                                                                     
24-MAY-99 24-MaY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-aUG-97                                                                                                                                                                                     
07-JUN-94 07-jU-94                                                                                                                                                                                      
07-JUN-94 07-jU-94                                                                                                                                                                                      

20 rows selected.

SQL> SELECT HIRE_DATE ,TRANSLATE (HIRE_DATE,'JAN','january') FROM  EMPLOYEES;

HIRE_DATE TRANSLATE(HIRE_DATE,'JAN','JANUARY')                                                                                                                                                          
--------- ------------------------------------------------------------------------                                                                                                                      
17-JUL-87 17-jUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-jan-93                                                                                                                                                                                     
03-JAN-90 03-jan-90                                                                                                                                                                                     
21-MAY-91 21-MaY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-nOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-jan-97                                                                                                                                                                                     
15-MAR-98 15-MaR-98                                                                                                                                                                                     
09-JUL-98 09-jUL-98                                                                                                                                                                                     
29-JAN-00 29-jan-00                                                                                                                                                                                     
11-MAY-96 11-MaY-96                                                                                                                                                                                     
24-MAR-98 24-MaR-98                                                                                                                                                                                     
24-MAY-99 24-MaY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-aUG-97                                                                                                                                                                                     
07-JUN-94 07-jUn-94                                                                                                                                                                                     
07-JUN-94 07-jUn-94                                                                                                                                                                                     

20 rows selected.

SQL> SELECT HIRE_DATE ,TRANSLATE (HIRE_DATE,'JAN','XYZ') FROM  EMPLOYEES;

HIRE_DATE TRANSLATE(HIRE_DATE,'JAN','XYZ')                                                                                                                                                              
--------- ------------------------------------------------------------------------                                                                                                                      
17-JUL-87 17-XUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-XYZ-93                                                                                                                                                                                     
03-JAN-90 03-XYZ-90                                                                                                                                                                                     
21-MAY-91 21-MYY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-ZOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-XYZ-97                                                                                                                                                                                     
15-MAR-98 15-MYR-98                                                                                                                                                                                     
09-JUL-98 09-XUL-98                                                                                                                                                                                     
29-JAN-00 29-XYZ-00                                                                                                                                                                                     
11-MAY-96 11-MYY-96                                                                                                                                                                                     
24-MAR-98 24-MYR-98                                                                                                                                                                                     
24-MAY-99 24-MYY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-YUG-97                                                                                                                                                                                     
07-JUN-94 07-XUZ-94                                                                                                                                                                                     
07-JUN-94 07-XUZ-94                                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> SELECT HIRE_DATE,TRANSLATE(HIRE_DATE,'-ABCDEFGHIJKLMNOPQRSTUVWXYZ') FROM EMPLOYEES;
SELECT HIRE_DATE,TRANSLATE(HIRE_DATE,'-ABCDEFGHIJKLMNOPQRSTUVWXYZ') FROM EMPLOYEES
                 *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT HIRE_DATE,TRANSLATE(HIRE_DATE,'-ABCDEFGHIJKLMNOPQRSTUVWXYZ',' ') FROM EMPLOYEES;

HIRE_DATE TRANSLATE(HIRE_DATE,'-ABCDEFGHIJKLMNOPQRSTUVWXYZ','')                                                                                                                                         
--------- ------------------------------------------------------------------------                                                                                                                      
17-JUL-87 17  87                                                                                                                                                                                        
21-SEP-89 21  89                                                                                                                                                                                        
13-JAN-93 13  93                                                                                                                                                                                        
03-JAN-90 03  90                                                                                                                                                                                        
21-MAY-91 21  91                                                                                                                                                                                        
07-FEB-99 07  99                                                                                                                                                                                        
16-NOV-99 16  99                                                                                                                                                                                        
17-OCT-95 17  95                                                                                                                                                                                        
29-JAN-97 29  97                                                                                                                                                                                        
15-MAR-98 15  98                                                                                                                                                                                        
09-JUL-98 09  98                                                                                                                                                                                        
29-JAN-00 29  00                                                                                                                                                                                        
11-MAY-96 11  96                                                                                                                                                                                        
24-MAR-98 24  98                                                                                                                                                                                        
24-MAY-99 24  99                                                                                                                                                                                        
17-SEP-87 17  87                                                                                                                                                                                        
17-FEB-96 17  96                                                                                                                                                                                        
17-AUG-97 17  97                                                                                                                                                                                        
07-JUN-94 07  94                                                                                                                                                                                        
07-JUN-94 07  94                                                                                                                                                                                        

20 rows selected.

SQL> SELECT HIRE_DATE ,TRANSLATE (HIRE_DATE,'JAN','X') FROM  EMPLOYEES;

HIRE_DATE TRANSLATE(HIRE_DATE,'JAN','X')                                                                                                                                                                
--------- ------------------------------------------------------------------------                                                                                                                      
17-JUL-87 17-XUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-X-93                                                                                                                                                                                       
03-JAN-90 03-X-90                                                                                                                                                                                       
21-MAY-91 21-MY-91                                                                                                                                                                                      
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-OV-99                                                                                                                                                                                      
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-X-97                                                                                                                                                                                       
15-MAR-98 15-MR-98                                                                                                                                                                                      
09-JUL-98 09-XUL-98                                                                                                                                                                                     
29-JAN-00 29-X-00                                                                                                                                                                                       
11-MAY-96 11-MY-96                                                                                                                                                                                      
24-MAR-98 24-MR-98                                                                                                                                                                                      
24-MAY-99 24-MY-99                                                                                                                                                                                      
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-UG-97                                                                                                                                                                                      
07-JUN-94 07-XU-94                                                                                                                                                                                      
07-JUN-94 07-XU-94                                                                                                                                                                                      

20 rows selected.

SQL> SELECT HIRE_DATE ,TRANSLATE (HIRE_DATE,'ANJ','X') FROM  EMPLOYEES;

HIRE_DATE TRANSLATE(HIRE_DATE,'ANJ','X')                                                                                                                                                                
--------- ------------------------------------------------------------------------                                                                                                                      
17-JUL-87 17-UL-87                                                                                                                                                                                      
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-X-93                                                                                                                                                                                       
03-JAN-90 03-X-90                                                                                                                                                                                       
21-MAY-91 21-MXY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-OV-99                                                                                                                                                                                      
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-X-97                                                                                                                                                                                       
15-MAR-98 15-MXR-98                                                                                                                                                                                     
09-JUL-98 09-UL-98                                                                                                                                                                                      
29-JAN-00 29-X-00                                                                                                                                                                                       
11-MAY-96 11-MXY-96                                                                                                                                                                                     
24-MAR-98 24-MXR-98                                                                                                                                                                                     
24-MAY-99 24-MXY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-XUG-97                                                                                                                                                                                     
07-JUN-94 07-U-94                                                                                                                                                                                       
07-JUN-94 07-U-94                                                                                                                                                                                       

20 rows selected.

SQL> SELECT HIRE_DATE,TRANSLATE(HIRE_DATE,'-ABCDEFGHIJKLMNOPQRSTUVWXYZ',NULL) FROM EMPLOYEES;

HIRE_DATE TRANSLATE(HIRE_DATE,'-ABCDEFGHIJKLMNOPQRSTUVWXYZ',NULL)                                                                                                                                       
--------- ------------------------------------------------------------------------                                                                                                                      
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

SQL> SELECT TRANSLATE('hello', 'el', 'apple') FROM DUAL;

TRANS                                                                                                                                                                                                   
-----                                                                                                                                                                                                   
happo                                                                                                                                                                                                   

SQL> 
SQL> 
SQL> 
SQL> REM NOW WE DISCUSS ABOUT THE REPLACE FUNCTION OF THE CHARCTER FUNCTION
SQL> 
SQL> REM REPLACE : DELETES AND /OR REPLACES WORD BY WORD
SQL> 
SQL> SELECT  HIRE_DATE ,REPLACE(HIRE_DATE,'JAN','jan') FROM EMPLOYEES;

HIRE_DATE REPLACE(HIRE_DATE,'JAN','JAN')                                                                                                                                                                
--------- ------------------------------------------------------                                                                                                                                        
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-jan-93                                                                                                                                                                                     
03-JAN-90 03-jan-90                                                                                                                                                                                     
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-jan-97                                                                                                                                                                                     
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 09-JUL-98                                                                                                                                                                                     
29-JAN-00 29-jan-00                                                                                                                                                                                     
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> REM TRANSLATE : IT REPLACE OR DELETE CHARACTER BY CHARACTER
SQL> 
SQL> REM REPLACE : IT REPLACE OR DELETE WORD BY WORD
SQL> 
SQL> SELECT HIRE_DATE,REPLACE(HIRE_DATE,'JAN','january') FROM EMPLOYEES;

HIRE_DATE REPLACE(HIRE_DATE,'JAN','JANUARY')                                                                                                                                                            
--------- ------------------------------------------------------------------------------------------------------------------------------                                                                
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-january-93                                                                                                                                                                                 
03-JAN-90 03-january-90                                                                                                                                                                                 
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-january-97                                                                                                                                                                                 
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 09-JUL-98                                                                                                                                                                                     
29-JAN-00 29-january-00                                                                                                                                                                                 
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> REM IN REPLACE WE NEED TO MATCH WHOLE WORD FOR MATCHING
SQL> 
SQL> SELECT HIRE_DATE ,REPLACE(HIRE_DATE,'JAN','01') FROM EMPLOYEES;

HIRE_DATE REPLACE(HIRE_DATE,'JAN','01')                                                                                                                                                                 
--------- ------------------------------------                                                                                                                                                          
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-01-93                                                                                                                                                                                      
03-JAN-90 03-01-90                                                                                                                                                                                      
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-01-97                                                                                                                                                                                      
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 09-JUL-98                                                                                                                                                                                     
29-JAN-00 29-01-00                                                                                                                                                                                      
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> 
SQL> SELECT HIRE_DATE ,REPLACE(HIRE_DATE,'JAN') FROM EMPLOYEES;

HIRE_DATE REPLACE(HIRE_DATE,                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 17-JUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13--93                                                                                                                                                                                        
03-JAN-90 03--90                                                                                                                                                                                        
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29--97                                                                                                                                                                                        
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 09-JUL-98                                                                                                                                                                                     
29-JAN-00 29--00                                                                                                                                                                                        
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     
07-JUN-94 07-JUN-94                                                                                                                                                                                     

20 rows selected.

SQL> REM IN ABOVE QUERY IT REPLACE WITH BLANK
SQL> 
SQL> SELECT HIRE_DATE ,REPLACE(HIRE_DATE,'J','j') FROM EMPLOYEES;

HIRE_DATE REPLACE(HIRE_DATE,                                                                                                                                                                            
--------- ------------------                                                                                                                                                                            
17-JUL-87 17-jUL-87                                                                                                                                                                                     
21-SEP-89 21-SEP-89                                                                                                                                                                                     
13-JAN-93 13-jAN-93                                                                                                                                                                                     
03-JAN-90 03-jAN-90                                                                                                                                                                                     
21-MAY-91 21-MAY-91                                                                                                                                                                                     
07-FEB-99 07-FEB-99                                                                                                                                                                                     
16-NOV-99 16-NOV-99                                                                                                                                                                                     
17-OCT-95 17-OCT-95                                                                                                                                                                                     
29-JAN-97 29-jAN-97                                                                                                                                                                                     
15-MAR-98 15-MAR-98                                                                                                                                                                                     
09-JUL-98 09-jUL-98                                                                                                                                                                                     
29-JAN-00 29-jAN-00                                                                                                                                                                                     
11-MAY-96 11-MAY-96                                                                                                                                                                                     
24-MAR-98 24-MAR-98                                                                                                                                                                                     
24-MAY-99 24-MAY-99                                                                                                                                                                                     
17-SEP-87 17-SEP-87                                                                                                                                                                                     
17-FEB-96 17-FEB-96                                                                                                                                                                                     
17-AUG-97 17-AUG-97                                                                                                                                                                                     
07-JUN-94 07-jUN-94                                                                                                                                                                                     
07-JUN-94 07-jUN-94                                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> 
SQL> SELECT TRANSLATE('ORACLE','O','MI') FROM DUAL;

TRANSL                                                                                                                                                                                                  
------                                                                                                                                                                                                  
MRACLE                                                                                                                                                                                                  

SQL> SELECT REPLACE('ORACLE','O','MI') FROM DUAL;

REPLACE                                                                                                                                                                                                 
-------                                                                                                                                                                                                 
MIRACLE                                                                                                                                                                                                 

SQL> 
SQL> 
SQL> REM NOW WE DISCUSS ABOUT SUBSTR FUNCTION OF THE CHARACTER FUNCTION
SQL> 
SQL> REM SUBSTR: IT USED TO SEPRATE WORD FROM LEFT ,RIGHT OR MIDDLE
SQL> 
SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',7,4) FROM DUAL;

SUBS                                                                                                                                                                                                    
----                                                                                                                                                                                                    
Shiv                                                                                                                                                                                                    

SQL> REM IT POINTER GOES TO 7th POSTION OF THE STRING AND IT PRINTING THE 4 CHARCTER OF THAT STRING
SQL> 
SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',11,3) FROM DUAL;

SUB                                                                                                                                                                                                     
---                                                                                                                                                                                                     
Ram                                                                                                                                                                                                     

SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',1,6) FROM DUAL;

SUBSTR                                                                                                                                                                                                  
------                                                                                                                                                                                                  
Laxman                                                                                                                                                                                                  

SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',14) FROM DUAL;

SUBSTR('                                                                                                                                                                                                
--------                                                                                                                                                                                                
Krishnan                                                                                                                                                                                                

SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',11) FROM DUAL;

SUBSTR('LAX                                                                                                                                                                                             
-----------                                                                                                                                                                                             
RamKrishnan                                                                                                                                                                                             

SQL> REM WHEN WE NOT DEFINE THE STOP POINT THEN IT'S GO THE END OF THE STRING
SQL> 
SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',11,10) FROM DUAL;

SUBSTR('LA                                                                                                                                                                                              
----------                                                                                                                                                                                              
RamKrishna                                                                                                                                                                                              

SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',-8,10) FROM DUAL;

SUBSTR('                                                                                                                                                                                                
--------                                                                                                                                                                                                
Krishnan                                                                                                                                                                                                

SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',-8,5) FROM DUAL;

SUBST                                                                                                                                                                                                   
-----                                                                                                                                                                                                   
Krish                                                                                                                                                                                                   

SQL> REM HERE WE HAVE THE NEGATIVE INDEX FROM RIGHT TO LEFT
SQL> 
SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',-8) FROM DUAL;

SUBSTR('                                                                                                                                                                                                
--------                                                                                                                                                                                                
Krishnan                                                                                                                                                                                                

SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',-11,3) FROM DUAL;

SUB                                                                                                                                                                                                     
---                                                                                                                                                                                                     
Ram                                                                                                                                                                                                     

SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',11,3) FROM DUAL;

SUB                                                                                                                                                                                                     
---                                                                                                                                                                                                     
Ram                                                                                                                                                                                                     

SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',7,7) FROM DUAL;

SUBSTR(                                                                                                                                                                                                 
-------                                                                                                                                                                                                 
ShivRam                                                                                                                                                                                                 

SQL> SELECT SUBSTR('LaxmanShivRamKrishnan',-15,7) FROM DUAL;

SUBSTR(                                                                                                                                                                                                 
-------                                                                                                                                                                                                 
ShivRam                                                                                                                                                                                                 

SQL> SELECT LENGTH('LaxmanShivRamKrishnan') FROM DUAL;

LENGTH('LAXMANSHIVRAMKRISHNAN')                                                                                                                                                                         
-------------------------------                                                                                                                                                                         
                             21                                                                                                                                                                         

SQL> 
SQL> 
SQL> SELECT REPLACE('LaxmanShivRamKrishnan','Shiv') FROM DUAL;

REPLACE('LAXMANSH                                                                                                                                                                                       
-----------------                                                                                                                                                                                       
LaxmanRamKrishnan                                                                                                                                                                                       

SQL> SELECT REPLACE(REPLACE('LaxmanShivRamKrishnan','Shiv'),'Ram') FROM DUAL;

REPLACE(REPLAC                                                                                                                                                                                          
--------------                                                                                                                                                                                          
LaxmanKrishnan                                                                                                                                                                                          

SQL> 
SQL> 
SQL> REM INSTR: TO FIND POSITION OF STRING WITHIN ANOTHER STRING
SQL> 
SQL> REM INSTR: TO FIND POSITION OF CHARACTER/STRING WITHIN ANOTHER STRING
SQL> 
SQL> 
SQL> SELECT INSTR('NEELKAMAL','L') FROM DUAL;

INSTR('NEELKAMAL','L')                                                                                                                                                                                  
----------------------                                                                                                                                                                                  
                     4                                                                                                                                                                                  

SQL> 
SQL> SELECT INSTR('NEELKAMAL','L',5) FROM DUAL;

INSTR('NEELKAMAL','L',5)                                                                                                                                                                                
------------------------                                                                                                                                                                                
                       9                                                                                                                                                                                

SQL> SELECT INSTR('NEELKAMAL','L',6) FROM DUAL;

INSTR('NEELKAMAL','L',6)                                                                                                                                                                                
------------------------                                                                                                                                                                                
                       9                                                                                                                                                                                

SQL> SELECT INSTR('NEELKAMAL','L',3,2) FROM DUAL;

INSTR('NEELKAMAL','L',3,2)                                                                                                                                                                              
--------------------------                                                                                                                                                                              
                         9                                                                                                                                                                              

SQL> SELECT INSTR('NEELKAMAL','L',1,2) FROM DUAL;

INSTR('NEELKAMAL','L',1,2)                                                                                                                                                                              
--------------------------                                                                                                                                                                              
                         9                                                                                                                                                                              

SQL> SELECT INSTR('NEELKAMAL','L',1,3) FROM DUAL;

INSTR('NEELKAMAL','L',1,3)                                                                                                                                                                              
--------------------------                                                                                                                                                                              
                         0                                                                                                                                                                              

SQL> 
SQL> REM
SQL> REM The first argument is the input string.
SQL> The second argument ('L') is the substring being searched.
SP2-0734: unknown command beginning "The second..." - rest of line ignored.
SQL> The third argument (3) is the starting position for the search within the input string.
SP2-0734: unknown command beginning "The third ..." - rest of line ignored.
SQL> The fourth argument (2) is the occurrence number to find.
SP2-0734: unknown command beginning "The fourth..." - rest of line ignored.
SQL> 
SQL> 
SQL> 
SQL> REM The first argument is the input string.
SQL> REM The second argument ('L') is the substring being searched.
SQL> REM The third argument (3) is the starting position for the search within the input string.
SQL> REM The fourth argument (2) is the occurrence number to find.
SQL> 
SQL> 
SQL> REM WHICH OCCURANCE YOU WANT THAT WE DEFINED IN THE FOURTH ARGUMENT
SQL> 
SQL> SELECT INSTR('NEELKAMAL','KAM') FROM DUAL;

INSTR('NEELKAMAL','KAM')                                                                                                                                                                                
------------------------                                                                                                                                                                                
                       5                                                                                                                                                                                

SQL> SELECT INSTR('NEELKAMAL','MA') FROM DUAL;

INSTR('NEELKAMAL','MA')                                                                                                                                                                                 
-----------------------                                                                                                                                                                                 
                      7                                                                                                                                                                                 

SQL> SELECT INSTR('NEELKAMAL','A') FROM DUAL;

INSTR('NEELKAMAL','A')                                                                                                                                                                                  
----------------------                                                                                                                                                                                  
                     6                                                                                                                                                                                  

SQL> SELECT INSTR('NEELKAMAL','A',7) FROM DUAL;

INSTR('NEELKAMAL','A',7)                                                                                                                                                                                
------------------------                                                                                                                                                                                
                       8                                                                                                                                                                                

SQL> SELECT INSTR('NEELKAMAL','A',9) FROM DUAL;

INSTR('NEELKAMAL','A',9)                                                                                                                                                                                
------------------------                                                                                                                                                                                
                       0                                                                                                                                                                                

SQL> SELECT INSTR('NEELKAMAL','A',-1) FROM DUAL;

INSTR('NEELKAMAL','A',-1)                                                                                                                                                                               
-------------------------                                                                                                                                                                               
                        8                                                                                                                                                                               

SQL> 
SQL> REM The third argument (-1) is the starting position for the search within the input string. When the starting position is negative, the search starts from the end of the string.
SQL> 
SQL> SELECT INSTR('NEELKAMAL','A',-4) FROM DUAL;

INSTR('NEELKAMAL','A',-4)                                                                                                                                                                               
-------------------------                                                                                                                                                                               
                        6                                                                                                                                                                               

SQL> SELECT INSTR('NEELKAMAL','A',-5) FROM DUAL;

INSTR('NEELKAMAL','A',-5)                                                                                                                                                                               
-------------------------                                                                                                                                                                               
                        0                                                                                                                                                                               

SQL> SELECT INSTR('NEELKAMAL','E',-2,2) FROM DUAL;

INSTR('NEELKAMAL','E',-2,2)                                                                                                                                                                             
---------------------------                                                                                                                                                                             
                          2                                                                                                                                                                             

SQL> SELECT INSTR('NEELKAMAL','N') FROM DUAL;

INSTR('NEELKAMAL','N')                                                                                                                                                                                  
----------------------                                                                                                                                                                                  
                     1                                                                                                                                                                                  

SQL> SELECT INSTR('NEELKAMAL','E',-2,2) FROM DUAL;

INSTR('NEELKAMAL','E',-2,2)                                                                                                                                                                             
---------------------------                                                                                                                                                                             
                          2                                                                                                                                                                             

SQL> REM HERE IT COUNT 2ND OCCURANCE FROM THE LEFT NOT FROM THE RIGHT .WHEN WE USE THE -VE STARING POINT IT GOES TO LEFT TO RIGHT NOT RIGHT TO LEFT SO CAREFULLY
SQL> 
SQL> 
SQL> 
SQL> REM CHARCTER: TRANSALTE ,REPLACE ,SUBSTR,INSTR
SQL> 
SQL> REM NUMBER FUNCTIONS : POWER SQRT MOD FLOOR CEIL TRUNC ROUND
SQL> 
SQL> 
SQL> 
SQL> REM POWER:
SQL> 
SQL> SELECT POWER(5,2) FROM DUAL;

POWER(5,2)                                                                                                                                                                                              
----------                                                                                                                                                                                              
        25                                                                                                                                                                                              

SQL> 
SQL> SELECT POWER(5,3) FROM DUAL;L
  2  ;
SELECT POWER(5,3) FROM DUAL;L
                           *
ERROR at line 1:
ORA-00911: invalid character 


SQL> 
SQL> SELECT POWER(5,3) FROM DUAL
  2  ;

POWER(5,3)                                                                                                                                                                                              
----------                                                                                                                                                                                              
       125                                                                                                                                                                                              

SQL> 
SQL> SELECT POWER(25,1/2) FROM DUAL;

POWER(25,1/2)                                                                                                                                                                                           
-------------                                                                                                                                                                                           
            5                                                                                                                                                                                           

SQL> 
SQL> SELECT POWER(5.3,2.45) FROM DUAL;

POWER(5.3,2.45)                                                                                                                                                                                         
---------------                                                                                                                                                                                         
     59.4943714                                                                                                                                                                                         

SQL> SELECT POWER(-5.3,2.45) FROM DUAL;
SELECT POWER(-5.3,2.45) FROM DUAL
             *
ERROR at line 1:
ORA-01428: argument '-5.3' is out of range 


SQL> SELECT POWER(-5.3,2) FROM DUAL;

POWER(-5.3,2)                                                                                                                                                                                           
-------------                                                                                                                                                                                           
        28.09                                                                                                                                                                                           

SQL> SELECT POWER(-5.3,3) FROM DUAL;

POWER(-5.3,3)                                                                                                                                                                                           
-------------                                                                                                                                                                                           
     -148.877                                                                                                                                                                                           

SQL> SELECT POWER(-5.3,3.4) FROM DUAL;
SELECT POWER(-5.3,3.4) FROM DUAL
             *
ERROR at line 1:
ORA-01428: argument '-5.3' is out of range 


SQL> SELECT 1/POWER(5,3) FROM DUAL
  2  ;

1/POWER(5,3)                                                                                                                                                                                            
------------                                                                                                                                                                                            
        .008                                                                                                                                                                                            

SQL> SELECT POWER(POWER(5,2),2) FROM DUAL
  2  ;

POWER(POWER(5,2),2)                                                                                                                                                                                     
-------------------                                                                                                                                                                                     
                625                                                                                                                                                                                     

SQL> 
SQL> 
SQL> SELECT POWER(5,4) FROM DUAL;

POWER(5,4)                                                                                                                                                                                              
----------                                                                                                                                                                                              
       625                                                                                                                                                                                              

SQL> SELECT POWER(-25,1/2) FROM DUAL;
SELECT POWER(-25,1/2) FROM DUAL
             *
ERROR at line 1:
ORA-01428: argument '-25' is out of range 


SQL> 
SQL> 
SQL> 
SQL> REM SQRT:
SQL> 
SQL> 
SQL> SELECT SQRT(36) FROM DUAL;

  SQRT(36)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         6                                                                                                                                                                                              

SQL> SELECT SQRT(36.93O3475) FROM DUAL;
SELECT SQRT(36.93O3475) FROM DUAL
                 *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> SELECT SQRT(36.93) FROM DUAL;

SQRT(36.93)                                                                                                                                                                                             
-----------                                                                                                                                                                                             
 6.07700584                                                                                                                                                                                             

SQL> SELECT SQRT(-36) FROM DUAL;
SELECT SQRT(-36) FROM DUAL
            *
ERROR at line 1:
ORA-01428: argument '-36' is out of range 


SQL> 
SQL> 
SQL> 
SQL> REM MOD : IT RETURNS REMAINDER
SQL> 
SQL> SELECT MOD(20,8) FROM DUAL;

 MOD(20,8)                                                                                                                                                                                              
----------                                                                                                                                                                                              
         4                                                                                                                                                                                              

SQL> SELECT MOD(20.45,8) FROM DUAL;

MOD(20.45,8)                                                                                                                                                                                            
------------                                                                                                                                                                                            
        4.45                                                                                                                                                                                            

SQL> SELECT MOD(20.45,8.75) FROM DUAL;

MOD(20.45,8.75)                                                                                                                                                                                         
---------------                                                                                                                                                                                         
           2.95                                                                                                                                                                                         

SQL> SELECT MOD(-20.45,8.75) FROM DUAL;

MOD(-20.45,8.75)                                                                                                                                                                                        
----------------                                                                                                                                                                                        
           -2.95                                                                                                                                                                                        

SQL> SELECT MOD(-20.45,-8.75) FROM DUAL;

MOD(-20.45,-8.75)                                                                                                                                                                                       
-----------------                                                                                                                                                                                       
            -2.95                                                                                                                                                                                       

SQL> SELECT MOD(20.45,-8.75) FROM DUAL;

MOD(20.45,-8.75)                                                                                                                                                                                        
----------------                                                                                                                                                                                        
            2.95                                                                                                                                                                                        

SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM FLOOR ,CEIL
SQL> 
SQL> 
SQL> SELECT FLOOR(4),CEIL(4) FROM DUAL;

  FLOOR(4)    CEIL(4)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
         4          4                                                                                                                                                                                   

SQL> SELECT FLOOR(4.01),CEIL(4.01) FROM DUAL;

FLOOR(4.01) CEIL(4.01)                                                                                                                                                                                  
----------- ----------                                                                                                                                                                                  
          4          5                                                                                                                                                                                  

SQL> SELECT FLOOR(4.000000000000000000001),CEIL(4.000000000000000000001) FROM DUAL;

FLOOR(4.000000000000000000001) CEIL(4.000000000000000000001)                                                                                                                                            
------------------------------ -----------------------------                                                                                                                                            
                             4                             5                                                                                                                                            

SQL> SELECT FLOOR(4.999999999999999999999999999),CEIL(4.999999999999999999999999999) FROM DUAL;

FLOOR(4.999999999999999999999999999) CEIL(4.999999999999999999999999999)                                                                                                                                
------------------------------------ -----------------------------------                                                                                                                                
                                   4                                   5                                                                                                                                

SQL> 
SQL> 
SQL> 
SQL> SELECT FLOOR(-4),CEIL(-4) FROM DUAL;

 FLOOR(-4)   CEIL(-4)                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
        -4         -4                                                                                                                                                                                   

SQL> SELECT FLOOR(-4.01),CEIL(-4.01) FROM DUAL;

FLOOR(-4.01) CEIL(-4.01)                                                                                                                                                                                
------------ -----------                                                                                                                                                                                
          -5          -4                                                                                                                                                                                

SQL> SELECT FLOOR(4.0000000000000000000000000000),CEIL(4.00000000000000000000000000000) FROM DUAL;

FLOOR(4.0000000000000000000000000000) CEIL(4.00000000000000000000000000000)                                                                                                                             
------------------------------------- -------------------------------------                                                                                                                             
                                    4                                     4                                                                                                                             

SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM TRUNC /ROUND :
SQL> 
SQL> SELECT 4827.91 ,TRUNC(4827.91) FROM DUAL;

   4827.91 TRUNC(4827.91)                                                                                                                                                                               
---------- --------------                                                                                                                                                                               
   4827.91           4827                                                                                                                                                                               

SQL> 
SQL> SELECT 4827.91 ,TRUNC(4827.91,0) FROM DUAL;

   4827.91 TRUNC(4827.91,0)                                                                                                                                                                             
---------- ----------------                                                                                                                                                                             
   4827.91             4827                                                                                                                                                                             

SQL> SELECT 4827.91 ,TRUNC(4827.91,1) FROM DUAL;

   4827.91 TRUNC(4827.91,1)                                                                                                                                                                             
---------- ----------------                                                                                                                                                                             
   4827.91           4827.9                                                                                                                                                                             

SQL> SELECT 4827.91 ,TRUNC(4827.9174,1) FROM DUAL;

   4827.91 TRUNC(4827.9174,1)                                                                                                                                                                           
---------- ------------------                                                                                                                                                                           
   4827.91             4827.9                                                                                                                                                                           

SQL> SELECT 4827.91 ,TRUNC(4827.9174,2) FROM DUAL;

   4827.91 TRUNC(4827.9174,2)                                                                                                                                                                           
---------- ------------------                                                                                                                                                                           
   4827.91            4827.91                                                                                                                                                                           

SQL> SELECT 4827.91 ,TRUNC(4827.9174,6) FROM DUAL;

   4827.91 TRUNC(4827.9174,6)                                                                                                                                                                           
---------- ------------------                                                                                                                                                                           
   4827.91          4827.9174                                                                                                                                                                           

SQL> 
SQL> 
SQL> 
SQL> SELECT 4827.91 ,TRUNC(4827.91,-1) FROM DUAL;

   4827.91 TRUNC(4827.91,-1)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91              4820                                                                                                                                                                            

SQL> SELECT 4827.91 ,TRUNC(4827.91,-2) FROM DUAL;

   4827.91 TRUNC(4827.91,-2)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91              4800                                                                                                                                                                            

SQL> SELECT 4827.91 ,TRUNC(4827.91,-3) FROM DUAL;

   4827.91 TRUNC(4827.91,-3)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91              4000                                                                                                                                                                            

SQL> SELECT 4827.91 ,TRUNC(4827.91,-4) FROM DUAL;

   4827.91 TRUNC(4827.91,-4)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91                 0                                                                                                                                                                            

SQL> 
SQL> 
SQL> REM NOW WE DISCUSS ABOUT THE ROUND FUNCTION
SQL> 
SQL> 
SQL> 
SQL> REM ROUND:
SQL> 
SQL> REM DECIMAL NUMBER SYATEM : BASE 10
SQL> 
SQL> REM AVIALABLE DEGITS : 0 1 2 3 4 5 6 7 8 9
SQL> 
SQL> REM FIRST HALFT: 0 1 2 3 4
SQL> 
SQL> REM SECOND HALF : 5 6 7 8 9
SQL> 
SQL> REM IF DIGIT TO BE COMPARED FALLS IN FIRST HALF ,NO CHANGE WILL BE APPLIED
SQL> 
SQL> REM IF DIHIT TO BE COMARED FALLS IN SECOND HALF ,ADD 1 TO PREVIOUS DIGIT
SQL> 
SQL> 
SQL> SELECT 4827.91 ,ROUND(4827.91) FROM DUAL;

   4827.91 ROUND(4827.91)                                                                                                                                                                               
---------- --------------                                                                                                                                                                               
   4827.91           4828                                                                                                                                                                               

SQL> 
SQL> SELECT 4827.91 ,ROUND(4827.1) FROM DUAL;

   4827.91 ROUND(4827.1)                                                                                                                                                                                
---------- -------------                                                                                                                                                                                
   4827.91          4827                                                                                                                                                                                

SQL> SELECT 4827.91 ,ROUND(4827.91,0) FROM DUAL;

   4827.91 ROUND(4827.91,0)                                                                                                                                                                             
---------- ----------------                                                                                                                                                                             
   4827.91             4828                                                                                                                                                                             

SQL> SELECT 4827.91 ,ROUND(4827.91,1) FROM DUAL;

   4827.91 ROUND(4827.91,1)                                                                                                                                                                             
---------- ----------------                                                                                                                                                                             
   4827.91           4827.9                                                                                                                                                                             

SQL> SELECT 4827.91 ,ROUND(4827.91,-1) FROM DUAL;

   4827.91 ROUND(4827.91,-1)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91              4830                                                                                                                                                                            

SQL> SELECT 4827.91 ,ROUND(4827.91,-2) FROM DUAL;

   4827.91 ROUND(4827.91,-2)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91              4800                                                                                                                                                                            

SQL> SELECT 4827.91 ,ROUND(4827.91,-3) FROM DUAL;

   4827.91 ROUND(4827.91,-3)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91              5000                                                                                                                                                                            

SQL> SELECT 4827.91 ,ROUND(6827.91,-3) FROM DUAL;

   4827.91 ROUND(6827.91,-3)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91              7000                                                                                                                                                                            

SQL> SELECT 4827.91 ,ROUND(4827.91,-4) FROM DUAL;

   4827.91 ROUND(4827.91,-4)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91                 0                                                                                                                                                                            

SQL> SELECT 4827.91 ,ROUND(6827.91,3) FROM DUAL;

   4827.91 ROUND(6827.91,3)                                                                                                                                                                             
---------- ----------------                                                                                                                                                                             
   4827.91          6827.91                                                                                                                                                                             

SQL> SELECT 4827.91 ,ROUND(6827.91,-5) FROM DUAL;

   4827.91 ROUND(6827.91,-5)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91                 0                                                                                                                                                                            

SQL> SELECT 4827.91 ,ROUND(6827.91,-2) FROM DUAL;

   4827.91 ROUND(6827.91,-2)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91              6800                                                                                                                                                                            

SQL> SELECT 4827.91 ,ROUND(6827.91,-3) FROM DUAL;

   4827.91 ROUND(6827.91,-3)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91              7000                                                                                                                                                                            

SQL> SELECT 4827.91 ,ROUND(6827.91,-1) FROM DUAL;

   4827.91 ROUND(6827.91,-1)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91              6830                                                                                                                                                                            

SQL> SELECT 4827.91 ,ROUND(6827.91,-4) FROM DUAL;

   4827.91 ROUND(6827.91,-4)                                                                                                                                                                            
---------- -----------------                                                                                                                                                                            
   4827.91             10000                                                                                                                                                                            

SQL> SPOOL OFF;
