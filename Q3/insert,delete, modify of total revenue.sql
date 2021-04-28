/*Table: Total revenue*//*Project 1, Joseph Chun*/

/*insert*/
insert into WUPHF.totalrevenue
value ("1","2","3");

/*delete*/
delete from WUPHF.totalrevenue as t
where t.totalprodrevenue = "66456.00";

/*update*/
update WUPHF.totalrevenue as t
set t.totalprodrevenue = "0"
where t.totalprodrevenue = "66456.00";