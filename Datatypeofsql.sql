create database db1;
use db1;

# String data type query 

create table tab1
(
SID int primary key,
SName varchar(30),
gender enum('male','female'),
hobby set ('swimming', 'travelling','Bike riding','Acting')
);
insert into tab1 values(42,'Vivek','male','travelling'),(43,'Manoj','Female','BIKE riding');
select * from tab1;

# Numericc data types query int signed

create table tab2
(
c1 tinyint,
c2 smallint,
c3 mediumint,
c4 int,
c5 bigint
);
insert into tab2 values(12,45,578,8900,686839468),(-12,90,56,23863,747924428);
select *from tab2;

# unsigned 
create table table3
(
c1 tinyint unsigned,
c2 smallint unsigned,
c3 mediumint unsigned,
c4 int unsigned,
c5 bigint unsigned
);
insert into table3 values(12,45,578,8900,686839468),(12,90,56,23863,747924428);
select *from table3;




 #Numericc data types query Float
 
 
 create table tab4
 (
 c1 float,
 c2 double,
 c3 decimal(8,4)
 );
 insert into tab4 values(12.4,456.89,5566.4670);
 select * from tab4;
 
 
 # Date Data type 
 
 create table tab5
 (
 c1 date,
 c2 datetime,
 c3 time,
 c4 year
 );
 insert into tab5 values('2022-09-22','2023-12-31 18:45:50','24:34:30',2023);
 select * from tab5;
