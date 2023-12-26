create table students12
(
SID int primary key,
name varchar(20) not null,
age int,
city varchar(20),
marks int 
);
insert into students12
 values
(21,'Rohit',20,'Mumbai',95),
(22,'Ram',21,'Noida',68),
(23,'Vaibhav',24,'Delhi',91),
(24,'Parag',25,'Banglore',70),
(25,'Rohan',30,'Pune',83);
select* from students12;

# Aggregate function (min,max,sum,avg,count)
select min(marks)Minmarks,max(marks) Maxmarks,avg(marks) Avgmarks,sum(marks)Summarks
from students12;

# Groupby Function

# Find citywise average marks
select city,avg(marks) AvgMarks from students12
group by city ;

# DML  (Data manupulation langauge)- insert,update,delete
# 1) Update  
# sigle rows
update students12 set city= 'kolhapur' ,marks=80 where SID=21;
select * from students12;

# Multiple rows

update students12 set city ='Banglore' where city ='Pune';
select * from students12;

# 2) delete 
# singe rows
delete from students12 where marks=70;
select * from students13;

# Multiple rows
delete from students12 where marks<=70;
select * from students12;


# DDL  (Data Defination language)- create,alter,rename,drop,truncate
#1) alter-
# 1 alter with change:

alter table students12 change name Fname varchar(15) not null;
select * from students12;

# 2 alter with modify

alter table students12 modify Fname varchar(20) not null;
describe students12;

# 3 alter with rename 

alter table students12 rename column Fname to name;
describe students12;

# 4 alter with add
alter table students12 add Email varchar(30);
alter table students12 add Pin int;
describe students12;

# alter with drop

alter table students12 drop Email;
alter table students12 drop pin;
describe students12;

# 2) rename 

rename table students12 to students13;
describe students13;

# 3 truncate 

Create table t5
(
Id int primary key,
name varchar(20),
age int
);
insert into t5 values
(11,'Manoj',21),(12,'Viraj','22');
select * from t5;

truncate table t5 ;
select * from t5;

# 4) drop:

drop table t1;
select * from t1;

# advance queries`

# for male to be 1.702 m, female =1.6 then find bmi of each patient.
# BMI =weight/height^2
# Display pid,Patient Name,Age,Weight,gender,and bmi

















