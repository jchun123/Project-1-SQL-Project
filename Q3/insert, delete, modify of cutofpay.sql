/*Table: cutofpay*//*Project 1, Joseph Chun*/

/*Inserting, wont work since A11118 doesnt exist in ads and P11118 does not exist in products*/
insert into WUPHF.cutofpay
values ("P11118","200","A11118","213.60", prodrevenue*.5 + adrevenue);

/*Deleting primary key*/
delete from WUPHF.cutofpay as c
where c.rpid = "P11111";

/*updating primary key and updating referential key*/
update WUPHF.cutofpay as c
set c.rpid = "P11111"
where c.rpid = "P11112";

/*updating ordinary attribute*/
update WUPHF.cutofpay as c
set c.prodrevenue = "1"
where c.rpid = "P11111";
