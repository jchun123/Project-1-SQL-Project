/*Project 1, Joseph Chun*/
select w.fname, w.lname, w.email, w.cellphone, w.id
from WUPHF.woofers as w;

select c.friendid, c.sourceid, c.destinationid, c.arefriends
from WUPHF.woofcontacts as c;

select m.messageid,m.senderid, m.recipientid, m.message
from WUPHF.message as m;

select a.adid, a.quantity, a.adrevenue
from WUPHF.ads as a;

select p.pid, p.adid, p.pname, p.pcategory, p.pprice, p.quantity, p.prodrevenue
from WUPHF.products as p;

select r.rpid, r.radid, r.prodrevenue, r.adrevenue, r.cutofpay
from WUPHF.cutofpay as r;

select d.totalprodrevenue, d.totaladrevenue, d.totalcutofpay
from WUPHF.totalrevenue as d;