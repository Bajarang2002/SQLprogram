

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
(25,'Rohan',30,'Pune',83),
(26,'Rushi',35,'Kolhapur',80),
(27,'Ramkrushna',19,'Satara',78),
(28,'Mohan',24,'Kolkata',88);
select * from students12;

# oprators (Comparison)

select name,age,marks,city from students12  where marks<80;
select name,age,marks,city from students12  where marks<=83;
select name,age,marks,city from students12  where marks>80;
select name,age,marks,city from students12  where marks>=90;
select name,age,marks,city from students12  where city ='Mumbai';
select name,age,marks,city from students12  where city !='Mumbai';
select name,age,marks,city from students12  where city <>'Noida';

# Logical operator and,or,not,in,notin,between

select name,age,marks,city from students12  where city='Kolhapur' and marks<=80;
select name,age,marks,city from students12  where city='Noida' or marks<=80;
select name,age,marks,city from students12  where city in ('Kolkata','Banglore') ;
select name,age,marks,city from students12  where city not in('Kolkata','Banglore') ;
select name,age,marks,city from students12  where marks between 70 and 80 ;

# wildcard operators (%,-)
 # Find all student detail where name end with value values v
 select name,age,marks,city from students12 where  name like '%v';
 
 #  # Find all student detail where name start with value values R
  select name,age,marks,city from students12 where  name like 'R%';
 
 #  Find all student detail where name contain n
   select name,age,marks,city from students12 where  name like '%n%';
   
    
 #  Find all student detail where name contain five character and end with v
 select name,age,marks,city from students12 where  name like '-----v';
 
 # Windows Function
 insert into students12 values
(29,'Sahil',23,'Mumbai',95),
(30,'Ajay',25,'Noida',68);
select * from students12;
 
 
 
 # Rank the marks from lowest to highest
 select city,marks,
 rank() over(order by marks desc) marksrank,
 dense_rank() over (order by marks desc) marksdrank,
 row_number() over (order by marks desc) marksrownumber from students12;
 
 # cumulative sum score and cumulative percentage
 
 select marks,
 sum(marks) over (order by marks desc) cumulativemarks,
 (sum(marks) over (order by marks desc)/sum(marks) over())* 100 cumulativeper from students12;
 
 # Rank city wise highest mark
 select city,marks,
 dense_rank() over (partition by city order by marks desc) markdrank from students12;
 
 create table t1
 (
 sales_date date,
 sales int
 );
 insert into t1 values
 ('2021-12-04',50),
 ('2021-12-05',70),
 ('2021-12-06',65),
 ('2021-12-07',80);
 select * from t1 ;
 
 # cumulativee sum and cumulative percentage
 select sales_date,sales,
 sum(sales) over(order by sales_date desc) cumulativesum,
 sum(sales) over (order by sales_date desc) cumulativeper from t1;
 
 
 
 
 

   
   
 
 









