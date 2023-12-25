 # Join
 create table Patient
 (
 pid int primary key,
 pname varchar(30) not null,
 age  int,
 weight int,
 gender varchar(5),
 D_Id varchar(30)
);
insert into Patient values
('31','Aniket',23,67,'M','DA_05'),
('32','Uday',54,54,'M','DB_08'),
('33','Shri',30,82,'F','DC_13'),
('34','Parag',78,63,'M','DB_08'),
('35','Viraj',45,48,'F','DW_10'),
('36','Raj',26,72,'M','DC_13'),
('37','Aankit',40,85,'F','DB_08'),
('38','Sahil',33,81,'F','DB_08'),
('39','Nikhil',34,64,'M','DQ_10'),
('40','Mayur',78,59,'M','DM_19');
select * from Patient;

create table hosp_dept1
(
D_Id varchar(30) primary key,
med_treatment varchar(30) not null,
dept_no_emp int
);
insert into hosp_dept1 values
('DA_05','Homopathy',12),
('DB_08','Allopathy',34),
('DC_13','Ayurveda',19),
('DW_10','Allopathy',10),
('DQ_19','Homopathy',15),
('DM_24','Allopathy',21);
select * from hosp_dept1;

create table bill_detail
(
B_ID int primary key,
P_ID int not null,
bill_amt int,
bill_date date,
next_app_date date
);
insert into bill_detail values
(1303,'31','7440','2022-02-10','2022-03-24'),
(1304,'32','8000','2021-08-11','2022-02-05'),
(1305,'33','3200','2022-10-12','2022-08-15'),
(1306,'34','17000','2022-04-07','2022-04-24'),
(1307,'35','17433','2021-02-22','2021-02-28'),
(1308,'36','5134','2021-05-28','2021-05-31'),
(1309,'37','1565','2022-02-23','2022-03-22'),
(1310,'38','7554','2022-07-15','2022-08-20'),
(1311,'39','4456','2021-06-18','2021-07-01'),
(1312,'40','5000','2022-09-28','2022-09-30');
select * from bill_detail;

# Inner join

select p.pid,p.pname,p.age,p.weight,p.gender,b.bill_amt,b.bill_date,b.next_app_date
from Patient p
inner join bill_detail b
on p.pid=b.P_ID;

# Left join

select p.pid,p.pname,p.age,p.weight,p.gender,b.bill_amt,b.bill_date,b.next_app_date
from Patient p
left join bill_detail b
on p.pid=b.P_ID;

# Right join

select p.pid,p.pname,p.age,p.weight,p.gender,b.bill_amt,b.bill_date,b.next_app_date
from Patient p
right join bill_detail b
on p.pid=b.P_ID;

## 
select p.pid,p.pname,p.age,p.weight,p.gender,b.bill_amt,b.bill_date,b.next_app_date,d.med_treatment,d.dept_no_emp
from Patient p
inner join bill_detail b
on p.pid=b.P_ID
inner join hosp_dept d
on P.D_ID= d.D_ID;


# Full outer join

select p.pid,p.pname,p.age,p.weight,p.gender,b.bill_amt,b.bill_date,b.next_app_date
from Patient p
left join bill_detail b
on p.pid=b.P_ID
union
select p.pid,p.pname,p.age,p.weight,p.gender,b.bill_amt,b.bill_date,b.next_app_date
from Patient p
right join bill_detail b
on p.pid=b.P_ID;







# for male to be 1.702 m, female =1.6 then find bmi of each patient.
# BMI =weight/height^2
# Display pid,Patient Name,Age,Weight,gender,and bmi

select pid,pname,age,weight,gender,case
when gender='Male' then weight/(1.702*1.702) else
weight/(1.6* 1.6)
end as bmi
from Patient;






