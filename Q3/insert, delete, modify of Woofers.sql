/*Table: Woofers*//*Project 1, Joseph Chun*/

/*inserting*/
insert into WUPHF.woofers
values ("example","lastname","example@email.com","9487356195","does not exist ave","F","999993");

/*Deleting primary key*/
delete from WUPHF.woofers as w
where w.id = "999994";

/*updating primary key*/
update WUPHF.woofers as w
set w.id = "999990"
where w.id = "999996";

/*updating ordinary attribute*/
update WUPHF.woofers as w
set w.fname = "yessir"
where w.id = "999990";
