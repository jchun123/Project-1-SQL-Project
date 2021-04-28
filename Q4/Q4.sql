/*Project 1, Joseph Chun*/

/*From messages, figure out senderid = "999999" first name, last name, message, and email.*/
select w.fname, w.lname, w.email, m.message
from WUPHF.woofers as w, WUPHF.message as m
where w.id = m.senderid AND senderid = "999999";

/*Through woof contacts, figure out who (first name only) is friends with another person. Give destinationid. For source: first name, cellphone, friend status*/
select w.fname, c.destinationid, w.cellphone, c.arefriends
from WUPHF.woofcontacts as c, WUPHF.woofers as w
where c.sourceid = w.id and c.arefriends = 1;

/*Retrieve adid, pid, quantity of both where adrevenues >= 30 and prodrevenue >= 1000, */
select c.rpid, c.radid, a.quantity, p.quantity, c.adrevenue, c.prodrevenue
from WUPHF.ads as a, WUPHF.cutofpay as c, WUPHF.products as p
where c.rpid = p.pid and c.radid = a.adid and c.adrevenue >= 30 and c.prodrevenue >= 1000;