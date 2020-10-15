SELECT  COUNT(SQLCODE) as "Deadlock/Timeout",MONTH(INTERVAL_START)  as "Month"             
FROM PTI.PDT_SQLERROR_160                                                  
WHERE ( SQLCODE IN ( - 911 , - 913 )                                        
AND AUTHID = 'V1FPLMP'                                                    
AND "COLLID" <> 'NULLID' )                                                
AND DATE ( INTERVAL_START ) >= '2018-09-01'   
AND DATE  ( INTERVAL_START) <= '2020-09-29'
AND PROGRAM NOT LIKE 'GA%'
AND PROGRAM = 'PIPF7AAE'
AND SQL_CALL = 'UPDATE'
AND PLANNAME = 'DISTSERV'
AND SECT# IN (16,17)
GROUP BY MONTH(INTERVAL_START)
WITH UR;                         