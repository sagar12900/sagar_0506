create database sagar;
use sagar;
create table category (
cid int primary key,
cname varchar(30) not null,
cdes varchar(30) not null
);

insert into category value (101, 'electronics','good quality');
insert into category value (102, 'furniture','good quality');
insert into category value (103, 'mobiles','good quality');
select * from category;

create table reddy (
rid int primary key,
rname varchar(30) not null,
rdes varchar(30) not null,
cid int not null,
foreign key (cid) references category (cid)
on delete cascade on update cascade
); 

insert into reddy value
(401,'smart mobiles','good',101),
(402,'smart watch','better',102),
(403,'laptop','better',103);
select  * from  reddy

delete from category where cid=101;


update category set cid=101 where cid=103;

create table suman (
mid int primary key,
mname varchar(30) not null,
mdes varchar(30) not null,
rid int not null,
foreign key (rid) references reddy (rid)
);

insert into suman value
(301,'keyboards','better',402),
(302,'computers','nice',403),
(303,'cpu','good',402);
select * from suman;

 


