EXPLAIN PLAN SET QUERYNO = 102 
FOR select b.docnoe ,b.docreve,b.sprutg ,b.archivname from v1opisa.tdoc a ,v1opisa.tdoc_db b
where b.docnoe = a.docnoe
and   b.docreve = a.docreve
and  b.archivname IN ('ERIDOC' , 'GASK2')
