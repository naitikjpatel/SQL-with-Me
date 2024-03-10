SQL> 
SQL> 
SQL> REM TODAY WE DISCUSS ABOUT THE DATE ARITHMETIC + DATE FUNCTIONS
SQL> 
SQL> REM LIST OF DATE FUNCTIONS: SYSDATE CURRENT_DATE ADD_MONTHS MONTHS_BETWEEN LAST_DAY NEXT_DAY TRUNC ROUND
SQL> 
SQL> REM SYSDATE : SERVER MACHINE'S DATE AND TIME INFO.
SQL> 
SQL> REM CURRENT_DATE : CURRENT/LOCAL/CLIENT MACHINE'S DATE AND TIME INFO
SQL> 
SQL> SELECT SYSDATE,CURRENT_DATE FROM DUAL;

SYSDATE   CURRENT_D                                                                                                                                                                                     
--------- ---------                                                                                                                                                                                     
07-MAR-24 07-MAR-24                                                                                                                                                                                     

SQL> 
SQL> REM DATE DEFAULT FORMATE IS : DD-MON-RR
SQL> 
SQL> COL PARAMETER A30
SP2-0158: unknown COLUMN option "A30"
SQL> COL PARAMETER  FORMAT A30
SQL> 
SQL> COL VALUE FORMAT A30
SQL> 
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
SQL> REM NLS: NATIONAL LANGUAGE SUPPORT
SQL> 
SQL> ALTER SESSION SET NLS_DATE_FORMATE ='DD-MON-RRRR HH24:MI:SS';
ALTER SESSION SET NLS_DATE_FORMATE ='DD-MON-RRRR HH24:MI:SS'
*
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> ALTER SESSION SET NLS_DATE_FORMATE ='DD-MON-RRRR HH24:MI.SS';
ALTER SESSION SET NLS_DATE_FORMATE ='DD-MON-RRRR HH24:MI.SS'
*
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> 
SQL> 
SQL> ALTER SESSION SET NLS_DATE_FORMAT ='DD-MON-RRRR HH24:MI.SS';

Session altered.

SQL> 
SQL> SELECT * FROM NLS_SESSION_PARAMETERS;

PARAMETER                      VALUE                                                                                                                                                                    
------------------------------ ------------------------------                                                                                                                                           
NLS_LANGUAGE                   AMERICAN                                                                                                                                                                 
NLS_TERRITORY                  AMERICA                                                                                                                                                                  
NLS_CURRENCY                   $                                                                                                                                                                        
NLS_ISO_CURRENCY               AMERICA                                                                                                                                                                  
NLS_NUMERIC_CHARACTERS         .,                                                                                                                                                                       
NLS_CALENDAR                   GREGORIAN                                                                                                                                                                
NLS_DATE_FORMAT                DD-MON-RRRR HH24:MI.SS                                                                                                                                                   
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

SQL> REM IN ABOVE TABLE U CAN SEE THE CHANGES INTO THE DATE_FORMATE
SQL> 
SQL> 
SQL> SELECT SYSDATE,CURRENT_DATE FROM DUAL;

SYSDATE              CURRENT_DATE                                                                                                                                                                       
-------------------- --------------------                                                                                                                                                               
07-MAR-2024 23:17.47 07-MAR-2024 23:17.47                                                                                                                                                               

SQL> 
SQL> ALTER SESSION SET NLS_DATE_FORMAT ='DD-MON-RRRR HH24:MI.SS AM';
ERROR:
ORA-01818: 'HH24' precludes use of meridian indicator 


SQL> ALTER SESSION SET NLS_DATE_FORMAT ='DD-MON-RRRR HH:MI.SS AM';

Session altered.

SQL> SELECT SYSDATE,CURRENT_DATE FROM DUAL;

SYSDATE                 CURRENT_DATE                                                                                                                                                                    
----------------------- -----------------------                                                                                                                                                         
07-MAR-2024 11:18.03 PM 07-MAR-2024 11:18.03 PM                                                                                                                                                         

SQL> 
SQL> 
SQL> REM DATE HAS 7 COMPONENTS/PARTS
SQL> 
SQL> REM CENTURY YEAR MONTH DATE/DAY HOUR?(24) MINUTE SECOND
SQL> 
SQL> REM 20	23	3	7	11	18	03
SQL> 
SQL> 
SQL> 
SQL> REM WE CAN ADD/SUBTRACT ALL 7 INTERNAL VALUES TO/FROM DATE
SQL> 
SQL> 
SQL> SELECT SYSDATE ,SAYDATE+3 ,SYSDATE-3 FROM DUAL'
  2  ;
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> SELECT SYSDATE ,SAYDATE+3 ,SYSDATE-3 FROM DUAL;
SELECT SYSDATE ,SAYDATE+3 ,SYSDATE-3 FROM DUAL
                *
ERROR at line 1:
ORA-00904: "SAYDATE": invalid identifier 


SQL> SELECT SYSDATE ,SAYDATE + 3 ,SYSDATE - 3 FROM DUAL;
SELECT SYSDATE ,SAYDATE + 3 ,SYSDATE - 3 FROM DUAL
                *
ERROR at line 1:
ORA-00904: "SAYDATE": invalid identifier 


SQL> SELECT SYSDATE ,SYSDATE + 3 ,SYSDATE - 3 FROM DUAL;

SYSDATE                 SYSDATE+3               SYSDATE-3                                                                                                                                               
----------------------- ----------------------- -----------------------                                                                                                                                 
07-MAR-2024 11:20.25 PM 10-MAR-2024 11:20.25 PM 04-MAR-2024 11:20.25 PM                                                                                                                                 

SQL> 
SQL> 
SQL> REM 1 DAY= 24 HOURS =24 * 60= 1440 MINUTES =24*60*60 =864000 SECONDS
SQL> 
SQL> REM 1 DAY=24 HOURS =1440 MINUTES =864000 SECONDS
SQL> 
SQL> SELECT SYSDATE ,SYSDATE + (3/24),SYSDATE-(3-24) FROM DUAL;

SYSDATE                 SYSDATE+(3/24)          SYSDATE-(3-24)                                                                                                                                          
----------------------- ----------------------- -----------------------                                                                                                                                 
07-MAR-2024 11:22.13 PM 08-MAR-2024 02:22.13 AM 28-MAR-2024 11:22.13 PM                                                                                                                                 

SQL> SELECT SYSDATE ,SYSDATE + (3/24),SYSDATE-(3/24) FROM DUAL;

SYSDATE                 SYSDATE+(3/24)          SYSDATE-(3/24)                                                                                                                                          
----------------------- ----------------------- -----------------------                                                                                                                                 
07-MAR-2024 11:22.25 PM 08-MAR-2024 02:22.25 AM 07-MAR-2024 08:22.25 PM                                                                                                                                 

SQL> 
SQL> 
SQL> 
SQL> SELECT SYSDATE ,SYSDATE + (3/(24*60)),SYSDATE-(5/1440) FROM DUAL;

SYSDATE                 SYSDATE+(3/(24*60))     SYSDATE-(5/1440)                                                                                                                                        
----------------------- ----------------------- -----------------------                                                                                                                                 
07-MAR-2024 11:23.09 PM 07-MAR-2024 11:26.09 PM 07-MAR-2024 11:18.09 PM                                                                                                                                 

SQL> SELECT SYSDATE ,SYSDATE + (3/(24*60*60)),SYSDATE-(5/86400) FROM DUAL;

SYSDATE                 SYSDATE+(3/(24*60*60))  SYSDATE-(5/86400)                                                                                                                                       
----------------------- ----------------------- -----------------------                                                                                                                                 
07-MAR-2024 11:23.39 PM 07-MAR-2024 11:23.42 PM 07-MAR-2024 11:23.34 PM                                                                                                                                 

SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM NOW I WANT TO ADD 4 DAYS AND 20 MINUTES IN SYSDATE
SQL> 
SQL> SELECT SYSDATE ,SYSDATE +4 +(20/1440) FROM DUAL;

SYSDATE                 SYSDATE+4+(20/1440)                                                                                                                                                             
----------------------- -----------------------                                                                                                                                                         
07-MAR-2024 11:24.43 PM 11-MAR-2024 11:44.43 PM                                                                                                                                                         

SQL> 
SQL> 
SQL> REM 1 MONTH = ?? DAYS 28/29/30/31
SQL> 
SQL> REM ADD_MONTHS : WE CAN ADD/SUBTRACT MONTHS/YEARS/CENTURIES
SQL> 
SQL> 
SQL> 
SQL> SELECT SYSDATE ,ADD_MONTHS(SYSDATE,3) ,ADD_MONTHS(SYSDATE,-2) FROM DUAL;

SYSDATE                 ADD_MONTHS(SYSDATE,3)   ADD_MONTHS(SYSDATE,-2)                                                                                                                                  
----------------------- ----------------------- -----------------------                                                                                                                                 
07-MAR-2024 11:30.02 PM 07-JUN-2024 11:30.02 PM 07-JAN-2024 11:30.02 PM                                                                                                                                 

SQL> SELECT SYSDATE ,ADD_MONTHS(SYSDATE,3) ,ADD_MONTHS(SYSDATE,-5) FROM DUAL;

SYSDATE                 ADD_MONTHS(SYSDATE,3)   ADD_MONTHS(SYSDATE,-5)                                                                                                                                  
----------------------- ----------------------- -----------------------                                                                                                                                 
07-MAR-2024 11:30.10 PM 07-JUN-2024 11:30.10 PM 07-OCT-2023 11:30.10 PM                                                                                                                                 

SQL> 
SQL> 
SQL> REM 1 YEAR : 12 MONTHS
SQL> 
SQL> SELECT SYSDATE, ADD_MONTHS(SYSDATE,12) ,ADD_MONTHS(SYSDATE,-12) FROM DUAL;

SYSDATE                 ADD_MONTHS(SYSDATE,12)  ADD_MONTHS(SYSDATE,-12)                                                                                                                                 
----------------------- ----------------------- -----------------------                                                                                                                                 
07-MAR-2024 11:31.02 PM 07-MAR-2025 11:31.02 PM 07-MAR-2023 11:31.02 PM                                                                                                                                 

SQL> 
SQL> SELECT SYSDATE, ADD_MONTHS(SYSDATE,12*3) ,ADD_MONTHS(SYSDATE,-12*3) FROM DUAL;

SYSDATE                 ADD_MONTHS(SYSDATE,12*3 ADD_MONTHS(SYSDATE,-12*                                                                                                                                 
----------------------- ----------------------- -----------------------                                                                                                                                 
07-MAR-2024 11:31.19 PM 07-MAR-2027 11:31.19 PM 07-MAR-2021 11:31.19 PM                                                                                                                                 

SQL> 
SQL> 
SQL> REM 1 CENTURY=100 YEARS
SQL> 
SQL> REM 1 YEAR =12 MONTHS
SQL> 
SQL> REM 1 CENTURY =100 YEARS =12*100 =1200 MONTHS
SQL> 
SQL> 
SQL> SELECT SYSDATE ,ADD_MONTHS(SYSDATE ,12*100) ,ADD_MONTHS(SYSDATE,-12*100) FROM DUAL;

SYSDATE                 ADD_MONTHS(SYSDATE,12*1 ADD_MONTHS(SYSDATE,-12*                                                                                                                                 
----------------------- ----------------------- -----------------------                                                                                                                                 
07-MAR-2024 11:32.37 PM 07-MAR-2124 11:32.37 PM 07-MAR-1924 11:32.37 PM                                                                                                                                 

SQL> 
SQL> 
SQL> 
SQL> 
SQL> REM NOW I WANT TO ADD THE 5 YEAR ,10 DAYS ,15 SECONDS
SQL> 
SQL> SELECT SYSDATE ,ADD_MONTHS(SYSDATE) + 10 +(15/86400) FROM DUAL;;
SELECT SYSDATE ,ADD_MONTHS(SYSDATE) + 10 +(15/86400) FROM DUAL;
                *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT SYSDATE ,ADD_MONTHS(SYSDATE,12*5) + 10 +(15/86400) FROM DUAL;;
SELECT SYSDATE ,ADD_MONTHS(SYSDATE,12*5) + 10 +(15/86400) FROM DUAL;
                                                                   *
ERROR at line 1:
ORA-00911: invalid character 


SQL> SELECT SYSDATE ,ADD_MONTHS(SYSDATE,12*5) + 10 +(15/86400) FROM DUAL;

SYSDATE                 ADD_MONTHS(SYSDATE,12*5                                                                                                                                                         
----------------------- -----------------------                                                                                                                                                         
07-MAR-2024 11:34.00 PM 17-MAR-2029 11:34.15 PM                                                                                                                                                         

SQL> 
SQL> 
SQL> 
SQL> SELECT SYSDATE,SYSDATE +49 FROM DUAL;

SYSDATE                 SYSDATE+49                                                                                                                                                                      
----------------------- -----------------------                                                                                                                                                         
07-MAR-2024 11:34.14 PM 25-APR-2024 11:34.14 PM                                                                                                                                                         

SQL> 
SQL> REM BY DEFAULT IS ADD THE NUMBER OF THE DAYS WHEN WE ADD OR SUBTRACT
SQL> 
SQL> 
SQL> 
SQL> REM SYSDATE CURRENT_DATE ADD_MONTHS
SQL> 
SQL> REM MONTHS_BETWEEN : IT WILL RETURN NO.OF MONTHS BETWEEN TWO DATES
SQL> 
SQL> SELECT FIRST_NAME,SYSDATE,HIRE_DATE ,MONTHS_BETWEEN (SYSDATE,HIRE_DATE) FROM EMPLOYEES;

FIRST_NAME      SYSDATE                 HIRE_DATE               MONTHS_BETWEEN(SYSDATE,HIRE_DATE)                                                                                                       
--------------- ----------------------- ----------------------- ---------------------------------                                                                                                       
Steven          07-MAR-2024 11:36.31 PM 17-JUL-1987 12:00.00 AM                        439.709151                                                                                                       
Neena           07-MAR-2024 11:36.31 PM 21-SEP-1989 12:00.00 AM                        413.580119                                                                                                       
Lex             07-MAR-2024 11:36.31 PM 13-JAN-1993 12:00.00 AM                        373.838184                                                                                                       
Alexander       07-MAR-2024 11:36.31 PM 03-JAN-1990 12:00.00 AM                        410.160764                                                                                                       
Bruce           07-MAR-2024 11:36.31 PM 21-MAY-1991 12:00.00 AM                        393.580119                                                                                                       
Diana           07-MAR-2024 11:36.31 PM 07-FEB-1999 12:00.00 AM                               301                                                                                                       
Kevin           07-MAR-2024 11:36.31 PM 16-NOV-1999 12:00.00 AM                        291.741409                                                                                                       
Trenna          07-MAR-2024 11:36.31 PM 17-OCT-1995 12:00.00 AM                        340.709151                                                                                                       
Curtis          07-MAR-2024 11:36.31 PM 29-JAN-1997 12:00.00 AM                        325.322055                                                                                                       
Randall         07-MAR-2024 11:36.31 PM 15-MAR-1998 12:00.00 AM                        311.773667                                                                                                       
Peter           07-MAR-2024 11:36.31 PM 09-JUL-1998 12:00.00 AM                        307.967216                                                                                                       
Eleni           07-MAR-2024 11:36.31 PM 29-JAN-2000 12:00.00 AM                        289.322055                                                                                                       
Ellen           07-MAR-2024 11:36.31 PM 11-MAY-1996 12:00.00 AM                          333.9027                                                                                                       
Jonathon        07-MAR-2024 11:36.31 PM 24-MAR-1998 12:00.00 AM                        311.483345                                                                                                       
Kimerely        07-MAR-2024 11:36.31 PM 24-MAY-1999 12:00.00 AM                        297.483345                                                                                                       
Jennifer        07-MAR-2024 11:36.31 PM 17-SEP-1987 12:00.00 AM                        437.709151                                                                                                       
Michael         07-MAR-2024 11:36.31 PM 17-FEB-1996 12:00.00 AM                        336.709151                                                                                                       
Pat             07-MAR-2024 11:36.31 PM 17-AUG-1997 12:00.00 AM                        318.709151                                                                                                       
Shelley         07-MAR-2024 11:36.31 PM 07-JUN-1994 12:00.00 AM                               357                                                                                                       
William         07-MAR-2024 11:36.31 PM 07-JUN-1994 12:00.00 AM                               357                                                                                                       

20 rows selected.

SQL> 
SQL> REM MONTHS_BETWEEN :  IT COUNTS THE NUMBER OF THE MONTHS IN TOW DATES:
SQL> 
SQL> 
SQL> SELECT FIRST_NAME,SYSDATE ,HIRE_DATE ,TRUNC(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)) FROM EMPLOYEES;

FIRST_NAME      SYSDATE                 HIRE_DATE               TRUNC(MONTHS_BETWEEN(SYSDATE,HIRE_DATE))                                                                                                
--------------- ----------------------- ----------------------- ----------------------------------------                                                                                                
Steven          07-MAR-2024 11:37.46 PM 17-JUL-1987 12:00.00 AM                                      439                                                                                                
Neena           07-MAR-2024 11:37.46 PM 21-SEP-1989 12:00.00 AM                                      413                                                                                                
Lex             07-MAR-2024 11:37.46 PM 13-JAN-1993 12:00.00 AM                                      373                                                                                                
Alexander       07-MAR-2024 11:37.46 PM 03-JAN-1990 12:00.00 AM                                      410                                                                                                
Bruce           07-MAR-2024 11:37.46 PM 21-MAY-1991 12:00.00 AM                                      393                                                                                                
Diana           07-MAR-2024 11:37.46 PM 07-FEB-1999 12:00.00 AM                                      301                                                                                                
Kevin           07-MAR-2024 11:37.46 PM 16-NOV-1999 12:00.00 AM                                      291                                                                                                
Trenna          07-MAR-2024 11:37.46 PM 17-OCT-1995 12:00.00 AM                                      340                                                                                                
Curtis          07-MAR-2024 11:37.46 PM 29-JAN-1997 12:00.00 AM                                      325                                                                                                
Randall         07-MAR-2024 11:37.46 PM 15-MAR-1998 12:00.00 AM                                      311                                                                                                
Peter           07-MAR-2024 11:37.46 PM 09-JUL-1998 12:00.00 AM                                      307                                                                                                
Eleni           07-MAR-2024 11:37.46 PM 29-JAN-2000 12:00.00 AM                                      289                                                                                                
Ellen           07-MAR-2024 11:37.46 PM 11-MAY-1996 12:00.00 AM                                      333                                                                                                
Jonathon        07-MAR-2024 11:37.46 PM 24-MAR-1998 12:00.00 AM                                      311                                                                                                
Kimerely        07-MAR-2024 11:37.46 PM 24-MAY-1999 12:00.00 AM                                      297                                                                                                
Jennifer        07-MAR-2024 11:37.46 PM 17-SEP-1987 12:00.00 AM                                      437                                                                                                
Michael         07-MAR-2024 11:37.46 PM 17-FEB-1996 12:00.00 AM                                      336                                                                                                
Pat             07-MAR-2024 11:37.46 PM 17-AUG-1997 12:00.00 AM                                      318                                                                                                
Shelley         07-MAR-2024 11:37.46 PM 07-JUN-1994 12:00.00 AM                                      357                                                                                                
William         07-MAR-2024 11:37.46 PM 07-JUN-1994 12:00.00 AM                                      357                                                                                                

20 rows selected.

SQL> SELECT FIRST_NAME,SYSDATE ,HIRE_DATE ,TRUNC(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)) COMPLETED MONTHS FROM EMPLOYEES;
SELECT FIRST_NAME,SYSDATE ,HIRE_DATE ,TRUNC(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)) COMPLETED MONTHS FROM EMPLOYEES
                                                                                         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT FIRST_NAME,SYSDATE ,HIRE_DATE ,TRUNC(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)) 'COMPLETED MONTHS' FROM EMPLOYEES;
SELECT FIRST_NAME,SYSDATE ,HIRE_DATE ,TRUNC(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)) 'COMPLETED MONTHS' FROM EMPLOYEES
                                                                               *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT FIRST_NAME,SYSDATE ,HIRE_DATE ,TRUNC(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)) "COMPLETED MONTHS" FROM EMPLOYEES;

FIRST_NAME      SYSDATE                 HIRE_DATE               COMPLETED MONTHS                                                                                                                        
--------------- ----------------------- ----------------------- ----------------                                                                                                                        
Steven          07-MAR-2024 11:38.14 PM 17-JUL-1987 12:00.00 AM              439                                                                                                                        
Neena           07-MAR-2024 11:38.14 PM 21-SEP-1989 12:00.00 AM              413                                                                                                                        
Lex             07-MAR-2024 11:38.14 PM 13-JAN-1993 12:00.00 AM              373                                                                                                                        
Alexander       07-MAR-2024 11:38.14 PM 03-JAN-1990 12:00.00 AM              410                                                                                                                        
Bruce           07-MAR-2024 11:38.14 PM 21-MAY-1991 12:00.00 AM              393                                                                                                                        
Diana           07-MAR-2024 11:38.14 PM 07-FEB-1999 12:00.00 AM              301                                                                                                                        
Kevin           07-MAR-2024 11:38.14 PM 16-NOV-1999 12:00.00 AM              291                                                                                                                        
Trenna          07-MAR-2024 11:38.14 PM 17-OCT-1995 12:00.00 AM              340                                                                                                                        
Curtis          07-MAR-2024 11:38.14 PM 29-JAN-1997 12:00.00 AM              325                                                                                                                        
Randall         07-MAR-2024 11:38.14 PM 15-MAR-1998 12:00.00 AM              311                                                                                                                        
Peter           07-MAR-2024 11:38.14 PM 09-JUL-1998 12:00.00 AM              307                                                                                                                        
Eleni           07-MAR-2024 11:38.14 PM 29-JAN-2000 12:00.00 AM              289                                                                                                                        
Ellen           07-MAR-2024 11:38.14 PM 11-MAY-1996 12:00.00 AM              333                                                                                                                        
Jonathon        07-MAR-2024 11:38.14 PM 24-MAR-1998 12:00.00 AM              311                                                                                                                        
Kimerely        07-MAR-2024 11:38.14 PM 24-MAY-1999 12:00.00 AM              297                                                                                                                        
Jennifer        07-MAR-2024 11:38.14 PM 17-SEP-1987 12:00.00 AM              437                                                                                                                        
Michael         07-MAR-2024 11:38.14 PM 17-FEB-1996 12:00.00 AM              336                                                                                                                        
Pat             07-MAR-2024 11:38.14 PM 17-AUG-1997 12:00.00 AM              318                                                                                                                        
Shelley         07-MAR-2024 11:38.14 PM 07-JUN-1994 12:00.00 AM              357                                                                                                                        
William         07-MAR-2024 11:38.14 PM 07-JUN-1994 12:00.00 AM              357                                                                                                                        

20 rows selected.

SQL> REM LATES DATE IS CONSIDERED AS BIGGEST/HIGHEST DATE
SQL> 
SQL> REM EARLIEST DATE IS CONSIDERED AS SMALLEST/LOWEST DATE
SQL> 
SQL> SELECT FIRST_NAME,SYSDATE ,HIRE_DATE ,TRUNC(MONTHS_BETWEEN(HIRE_DATE-SYSDATE)) "COMPLETED MONTHS" FROM EMPLOYEES;
SELECT FIRST_NAME,SYSDATE ,HIRE_DATE ,TRUNC(MONTHS_BETWEEN(HIRE_DATE-SYSDATE)) "COMPLETED MONTHS" FROM EMPLOYEES
                                            *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT FIRST_NAME,SYSDATE ,HIRE_DATE ,TRUNC(MONTHS_BETWEEN(HIRE_DATE, SYSDATE)) "COMPLETED MONTHS" FROM EMPLOYEES;

FIRST_NAME      SYSDATE                 HIRE_DATE               COMPLETED MONTHS                                                                                                                        
--------------- ----------------------- ----------------------- ----------------                                                                                                                        
Steven          07-MAR-2024 11:39.52 PM 17-JUL-1987 12:00.00 AM             -439                                                                                                                        
Neena           07-MAR-2024 11:39.52 PM 21-SEP-1989 12:00.00 AM             -413                                                                                                                        
Lex             07-MAR-2024 11:39.52 PM 13-JAN-1993 12:00.00 AM             -373                                                                                                                        
Alexander       07-MAR-2024 11:39.52 PM 03-JAN-1990 12:00.00 AM             -410                                                                                                                        
Bruce           07-MAR-2024 11:39.52 PM 21-MAY-1991 12:00.00 AM             -393                                                                                                                        
Diana           07-MAR-2024 11:39.52 PM 07-FEB-1999 12:00.00 AM             -301                                                                                                                        
Kevin           07-MAR-2024 11:39.52 PM 16-NOV-1999 12:00.00 AM             -291                                                                                                                        
Trenna          07-MAR-2024 11:39.52 PM 17-OCT-1995 12:00.00 AM             -340                                                                                                                        
Curtis          07-MAR-2024 11:39.52 PM 29-JAN-1997 12:00.00 AM             -325                                                                                                                        
Randall         07-MAR-2024 11:39.52 PM 15-MAR-1998 12:00.00 AM             -311                                                                                                                        
Peter           07-MAR-2024 11:39.52 PM 09-JUL-1998 12:00.00 AM             -307                                                                                                                        
Eleni           07-MAR-2024 11:39.52 PM 29-JAN-2000 12:00.00 AM             -289                                                                                                                        
Ellen           07-MAR-2024 11:39.52 PM 11-MAY-1996 12:00.00 AM             -333                                                                                                                        
Jonathon        07-MAR-2024 11:39.52 PM 24-MAR-1998 12:00.00 AM             -311                                                                                                                        
Kimerely        07-MAR-2024 11:39.52 PM 24-MAY-1999 12:00.00 AM             -297                                                                                                                        
Jennifer        07-MAR-2024 11:39.52 PM 17-SEP-1987 12:00.00 AM             -437                                                                                                                        
Michael         07-MAR-2024 11:39.52 PM 17-FEB-1996 12:00.00 AM             -336                                                                                                                        
Pat             07-MAR-2024 11:39.52 PM 17-AUG-1997 12:00.00 AM             -318                                                                                                                        
Shelley         07-MAR-2024 11:39.52 PM 07-JUN-1994 12:00.00 AM             -357                                                                                                                        
William         07-MAR-2024 11:39.52 PM 07-JUN-1994 12:00.00 AM             -357                                                                                                                        

20 rows selected.

SQL> 
SQL> 
SQL> REM LAST_DAT: IT WILL RETURN LAST DAY OD THE SAME MONTH FOR INPUT DATE
SQL> 
SQL> SELECT SYSDATE FROM DUAL;

SYSDATE                                                                                                                                                                                                 
-----------------------                                                                                                                                                                                 
07-MAR-2024 11:40.28 PM                                                                                                                                                                                 

SQL> 
SQL> SELECT SYSDATE ,LAST_DAY(SYSDATE) FROM DUAL;

SYSDATE                 LAST_DAY(SYSDATE)                                                                                                                                                               
----------------------- -----------------------                                                                                                                                                         
07-MAR-2024 11:40.42 PM 31-MAR-2024 11:40.42 PM                                                                                                                                                         

SQL> 
SQL> SELECT SYSDATE ,LAST_DAY(SYSDATE) FROM DUAL;

SYSDATE                 LAST_DAY(SYSDATE)                                                                                                                                                               
----------------------- -----------------------                                                                                                                                                         
07-MAR-2024 11:40.51 PM 31-MAR-2024 11:40.51 PM                                                                                                                                                         

SQL> 
SQL> 
SQL> SELECT FIRST_NAME ,HIRE_DATE , LAST_DAY(HIRE_DATE) FROM EMPLOYEES;

FIRST_NAME      HIRE_DATE LAST_DAY(                                                                                                                                                                     
--------------- --------- ---------                                                                                                                                                                     
Steven          17-JUL-87 31-JUL-87                                                                                                                                                                     
Neena           21-SEP-89 30-SEP-89                                                                                                                                                                     
Lex             13-JAN-93 31-JAN-93                                                                                                                                                                     
Alexander       03-JAN-90 31-JAN-90                                                                                                                                                                     
Bruce           21-MAY-91 31-MAY-91                                                                                                                                                                     
Diana           07-FEB-99 28-FEB-99                                                                                                                                                                     
Kevin           16-NOV-99 30-NOV-99                                                                                                                                                                     
Trenna          17-OCT-95 31-OCT-95                                                                                                                                                                     
Curtis          29-JAN-97 31-JAN-97                                                                                                                                                                     
Randall         15-MAR-98 31-MAR-98                                                                                                                                                                     
Peter           09-JUL-98 31-JUL-98                                                                                                                                                                     
Eleni           29-JAN-00 31-JAN-00                                                                                                                                                                     
Ellen           11-MAY-96 31-MAY-96                                                                                                                                                                     
Jonathon        24-MAR-98 31-MAR-98                                                                                                                                                                     
Kimerely        24-MAY-99 31-MAY-99                                                                                                                                                                     
Jennifer        17-SEP-87 30-SEP-87                                                                                                                                                                     
Michael         17-FEB-96 29-FEB-96                                                                                                                                                                     
Pat             17-AUG-97 31-AUG-97                                                                                                                                                                     
Shelley         07-JUN-94 30-JUN-94                                                                                                                                                                     
William         07-JUN-94 30-JUN-94                                                                                                                                                                     

20 rows selected.

SQL> 
SQL> 
SQL> REM NEXT_DAY : IT WILL RETURN DATE ON WHICH SPECIFIED DAY FALLS.
SQL> 
SQL> ALTER SESSION SET NLS_DATE_FORMAT ='DD-MON-RR DAY';

Session altered.

SQL> 
SQL> SELECT SYSDATE FROM DUAL;

SYSDATE                                                                                                                                                                                                 
-------------------                                                                                                                                                                                     
07-MAR-24 THURSDAY                                                                                                                                                                                      

SQL> 
SQL> SELECT SYSDATE ,NEXT_DAY(SYSDATE) FROM DUAL;
SELECT SYSDATE ,NEXT_DAY(SYSDATE) FROM DUAL
                *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> SELECT SYSDATE ,NEXT_DAY(SYSDATE,'FRI') FROM DUAL;

SYSDATE             NEXT_DAY(SYSDATE,'F                                                                                                                                                                 
------------------- -------------------                                                                                                                                                                 
07-MAR-24 THURSDAY  08-MAR-24 FRIDAY                                                                                                                                                                    

SQL> SELECT HIRE_DATE ,NEXT_DAY(HIRE_DATE,'MON') FROM EMPLOYEES;

HIRE_DATE           NEXT_DAY(HIRE_DATE,                                                                                                                                                                 
------------------- -------------------                                                                                                                                                                 
17-JUL-87 FRIDAY    20-JUL-87 MONDAY                                                                                                                                                                    
21-SEP-89 THURSDAY  25-SEP-89 MONDAY                                                                                                                                                                    
13-JAN-93 WEDNESDAY 18-JAN-93 MONDAY                                                                                                                                                                    
03-JAN-90 WEDNESDAY 08-JAN-90 MONDAY                                                                                                                                                                    
21-MAY-91 TUESDAY   27-MAY-91 MONDAY                                                                                                                                                                    
07-FEB-99 SUNDAY    08-FEB-99 MONDAY                                                                                                                                                                    
16-NOV-99 TUESDAY   22-NOV-99 MONDAY                                                                                                                                                                    
17-OCT-95 TUESDAY   23-OCT-95 MONDAY                                                                                                                                                                    
29-JAN-97 WEDNESDAY 03-FEB-97 MONDAY                                                                                                                                                                    
15-MAR-98 SUNDAY    16-MAR-98 MONDAY                                                                                                                                                                    
09-JUL-98 THURSDAY  13-JUL-98 MONDAY                                                                                                                                                                    
29-JAN-00 SATURDAY  31-JAN-00 MONDAY                                                                                                                                                                    
11-MAY-96 SATURDAY  13-MAY-96 MONDAY                                                                                                                                                                    
24-MAR-98 TUESDAY   30-MAR-98 MONDAY                                                                                                                                                                    
24-MAY-99 MONDAY    31-MAY-99 MONDAY                                                                                                                                                                    
17-SEP-87 THURSDAY  21-SEP-87 MONDAY                                                                                                                                                                    
17-FEB-96 SATURDAY  19-FEB-96 MONDAY                                                                                                                                                                    
17-AUG-97 SUNDAY    18-AUG-97 MONDAY                                                                                                                                                                    
07-JUN-94 TUESDAY   13-JUN-94 MONDAY                                                                                                                                                                    
07-JUN-94 TUESDAY   13-JUN-94 MONDAY                                                                                                                                                                    

20 rows selected.

SQL> 
SQL> REM TRUNC ,ROUND : DATE : YES TO BE FINISHED
SQL> 
SQL> REM DUAL : IS DUMMY TABLE
SQL> 
SQL> REM DUAL IS SYSTEM GENERATED TABLE
SQL> 
SQL> SPOOL OFF;

