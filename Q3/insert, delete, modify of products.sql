/*Table: products*//*Project 1, Joseph Chun*/

/*Inserting*/
insert into WUPHF.products
values ("P11118","A11116","example","exercise", "2","3",pprice*quantity);

/*Deleting primary key*/
delete from WUPHF.products as p
where p.pid = "P11111";

/*updating primary key*/
update WUPHF.products as p
set p.pid = "P11111"
where p.pid = "P11112";

/*updating ordinary attribute*/
update WUPHF.products as p
set p.pname = "NOT MESSAGE"
where p.pid = "P11111";

/*updating referential key*/
update WUPHF.products as p
set p.adid = "A11115"
where p.pid = "P11111"; 