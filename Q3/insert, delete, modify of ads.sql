/*Table: ads*//*Project 1, Joseph Chun*/

/*Inserting into ads*/
insert into WUPHF.ads
values ("A11118", "200", "2");

/*Deleting primary key*/
delete from WUPHF.ads as a
where a.adid = "A11115";

/*updating primary key*/
update WUPHF.ads as a
set a.adid = "A11119"
where a.adid = "A11115";

/*updating ordinary attribute*/
update WUPHF.ads as a
set a.quantity= "1", a.adrevenue = a.quantity*.1
where a.adid = "A11119";