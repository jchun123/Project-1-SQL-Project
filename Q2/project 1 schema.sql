/*Project 1, Joseph Chun*/
create database WUPHF;

CREATE TABLE WUPHF.woofers 
(
fname    varchar(30) not null,   
lname    varchar(30) not null,  
email      varchar(30),
cellphone	varchar(10),  
address  varchar(50),	
sex      char(1),
id	varchar(6) not null,
primary key (id)
);

CREATE TABLE WUPHF.woofcontacts
(
friendid varchar(6) not null, 
sourceid	varchar(6) not null, 	/*who initiated friendship status*/
destinationid	varchar(6) not null,	 /*who is receiving friendship status*/
arefriends	bool, 	/*0 = not friend, 1 = friend*/
primary key(friendid),
foreign key (sourceid) references WUPHF.woofers(id)
on delete cascade
on update cascade,
foreign key (destinationid) references WUPHF.woofers(id)
on delete cascade
on update cascade
);

CREATE TABLE WUPHF.message
(	/*note: anyone can message each other regardless of there friend status*/
messageid	varchar(6) not null,
senderid varchar(6) not null,
recipientid	varchar(6) not null,
message varchar(500),
primary key(messageid),
foreign key (senderid) references WUPHF.woofers(id)
on delete cascade
on update cascade,
foreign key (recipientid) references WUPHF.woofers(id)
on delete cascade
on update cascade
);

CREATE TABLE WUPHF.ads
(/*all ads shown WUPHF and how many times theyve been seen by users*/
adid	varchar(6) not null,
unique (adid),
quantity	integer(10),
adrevenue	decimal(10,2),
primary key (adid)
);

CREATE TABLE WUPHF.products
(/*Products that are being marketed on WUPHF, as well as its corresponding ads. 
Note: products can have multiple different ads, which is why i did not make adid a primary key*/
pid	varchar(6) not null,
adid varchar(6) not null,
unique (pid),
pname	varchar(50),
pcategory	varchar(50),
pprice		decimal(10,2),
quantity	integer(10),
prodrevenue	decimal(10,2),
primary key (pid),
foreign key (adid) references WUPHF.ads(adid)
on delete cascade
on update cascade
);

CREATE TABLE WUPHF.cutofpay
(/*How much WUPHF makes from marketers. For each product and corresponding ad, WUPHf makes 50% of all products sold
WUPHf gets 10 cents per ad viewed*/
rpid	varchar(6) not null,
prodrevenue	decimal(10,2),
radid	varchar(6) not null, 
adrevenue	decimal(10,2),
cutofpay	decimal(10,2),	/*adding up the product revenue + adrevenue per product*/
primary key(rpid, radid),
foreign key (rpid) references WUPHF.products(pid)
on delete cascade
on update cascade,
foreign key (radid) references WUPHF.ads(adid)
on delete cascade
on update cascade
);

CREATE TABLE WUPHF.totalrevenue
(	/*I know you said no floater tables but I do not think this table needs to be linked to the other tables as its not
dependent on the other tables primary key values*/
totalprodrevenue	decimal(10,2), /*adding up prodrevenue*/ 
totaladrevenue	decimal(10,2),	/*adding up adrevenue*/
totalcutofpay	decimal(10,2)	/*profit WUPHF made from revenue*/
);