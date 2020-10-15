select count(*) as Trans, date(crstamp) as Date
from u1db2.pitclgg	
where date(crstamp) > '2020-10-01'		
and seqno = 1
group by date(crstamp)
with ur;