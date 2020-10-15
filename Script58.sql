SELECT MONTH(TLG.STAMP) AS LOG_MTH , TLG.CHSIGN AS USER,UCASE(CASESERVICE)
AS SERVICE,COUNT(DISTINCT(TLG.REQUESTID)) AS TOTALREQUEST               
FROM U1DB2.HITTLG TLG                                                   
WHERE MONTH(TLG.STAMP) BETWEEN  8 AND 12                                
AND DATE(TLG.STAMP) > '2020-08-01'                                      
AND TLG.OPERID = 'EUPPWREQ'                                             
--AND CASESERVICE = 'CREATESUBPRODUCT'                                    
GROUP BY MONTH(TLG.STAMP),UCASE(TLG.CASESERVICE),TLG.CHSIGN             
WITH UR;