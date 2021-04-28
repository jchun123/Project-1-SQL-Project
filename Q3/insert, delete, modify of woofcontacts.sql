/*Table: Woofcontacts*//*Project 1, Joseph Chun*/

/*Inserting into woof contacts, Should not work because PK(9999992) does not exist other tables*/
insert into WUPHF.woofcontacts
values ("f71111", "999992", "999991", "0");

/*Inserting into woof contacts, Should work since pk(999994) exists*/
insert into WUPHF.woofcontacts
values ("f71111", "999994", "999999", "0");

/*Deleting primary key*/
delete from WUPHF.woofcontacts as c
where c.sourceid = "999994";

/*updating primary key, should not work since 999990 does not exist (you cant add a friend that doesnt exist on the platform)*/
update WUPHF.woofcontacts as c
set c.sourceid = "999990"
where c.sourceid = "999996";

/*updating primary key, should work since 999993 exists*/
update WUPHF.woofcontacts as c
set c.sourceid = "999995"
where c.sourceid = "999996";

/*updating ordinary attribute*/
update WUPHF.woofcontacts as c
set c.arefriends = "0"
where c.sourceid = "999997";

/*updating referential key, should not work because 999992 does not exist in woofers, therefore should reject update*/
update WUPHF.woofcontacts as c
set c.destinationid = "999992"
where c.sourceid = "999995"; 