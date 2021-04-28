/*Project 1, Joseph Chun*/
insert into WUPHF.totalrevenue
select sum(c.prodrevenue), sum(c.adrevenue), sum(c.cutofpay)
from WUPHF.cutofpay as c;