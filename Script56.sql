SELECT SUM(NBR_OF_CALLS), VIEW,MONTH(LOGDATE),USERID     
FROM U1DPH0.TXCDLOG                               
WHERE LOGDATE > '2020-07-31'  
AND LOGDATE < '2020-09-01'
AND USERID = 'RCSCI1'                    
AND IPCLIENT = 'EUPWREQ_1'      
AND VIEW NOT IN ( 'PIPCXKF'   , 'PIPCYCJ' , 'PJPCWB2'   , 'PJPCWL5')          
GROUP BY VIEW,MONTH(LOGDATE),USERID                      
HAVING SUM(NBR_OF_CALLS) > 1                 
WITH UR;    


                                     
                                                  