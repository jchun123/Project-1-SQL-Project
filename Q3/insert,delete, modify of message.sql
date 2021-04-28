/*Table: messages*//*Project 1, Joseph Chun*/

/*Inserting into messages*/
insert into WUPHF.message
values ("M11116","999999","999994","example sentence");

/*Deleting primary key*/
delete from WUPHF.message as m
where m.messageid = "M11116";

/*updating primary key*/
update WUPHF.message as m
set m.messageid = "M11116"
where m.messageid = "M11112";

/*updating ordinary attribute*/
update WUPHF.message as m
set m.message = "NOT MESSAGE"
where m.messageid = "M11115";

/*updating referential key*/
update WUPHF.message as m
set m.senderid = "999996"
where m.messageid = "M11114"; 

/*updating referential key, should not work as 999991 does not exist in woofers*/
update WUPHF.message as m
set m.senderid = "999991"
where m.messageid = "M11114"; 