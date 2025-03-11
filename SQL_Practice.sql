drop database employeedb;
create database employeedb;
use employeedb;
drop table employee;
create table Employee(
emp_id int primary key,
 first_name varchar(60),
 last_name varchar(50),
 dept_id int,
 salary int,
 job_id int,
 m_id int,
 FOREIGN KEY (dept_id) REFERENCES department(dept_id),
 FOREIGN KEY (job_id) REFERENCES job(job_id),
 FOREIGN KEY (m_id) REFERENCES Manager(m_id));



# The should have column for employee_id,first_name,last_name,salary

insert into Employee values(101,'Aditya','Khadake',1,40000,11,21),
(102,'Pavan','Jadhav',3,20000,12,27),
(103,'Vaishnavi','Dawar',1,40000,13,25),
(104,'Vasant','Lohar',2,70000,11,24),
(105,'Sakshi','Jadhav',3,80000,12,24),
(106,'Digvijay','Patil',4,70000,15,29),
(107,'Akshay','Pore',5,42000,16,20),
(108,'Vasant','Patil',6,42000,18,20),
(109,'Aniket','Mali',1,42000,19,26),
(110,'Aditya','Khadake',7,42000,18,27),
(111,'Siddhesh','Kambale',8,42000,17,28)
select * from Employee;


Drop table employee;
Drop table department;
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

insert into department values(1,"IT"),
(2,"Manager"),
(3,"Banking"),
(4,"Finanace"),
(5,"Government"),
(6,"IT"),
(7,"Manager"),
(8,"Banking");

select * from department;

drop table job;
create table job(job_id int primary key, job_name varchar(20));

insert into job values(11,"Software Developer"),
(12,"Bank manager"),
(13,"ASO"),
(14,"Collector"),
(15,"Data Analyst"),
(16,"Data Engineer"),
(17,"Soldier"),
(18,"Full Stack Developer"),
(19,"Full Stack Developer")

select * from job;
use employeedb;
create table Manager(m_id int primary key, M_name varchar(20));
insert into Manager value (21,"Dig Patil"),
(20,"Dig Patil"),
(22," AK Pore"),
(23," Patil"),
(24," Sarvesh Patil"),
(25,"Vedant Naik"),
(26,"Ashutosh Jarag1"),
(27,"Swarup Misal"),
(28,"Dig Patil"),
(29,"Anirudh Dalavi")



#Retrieve all columns from the `employees` table.
select * from Employee;

#Retrieve the `first_name` and `last_name` of all employees
select first_name,last_name from Employee;


#Select unique job titles from the `jobs` table.

select distinct job_name from  job;

#Find the total number of employees in the `employees` table.

select count(*) as total_employee from Employee;

#Select the employees who work in the department with ID 5.

select emp_id,first_name,last_name from employee
where dept_id =5;

# Retrieve the first 10 rows from the `employees` table

select * from employee
limit 10;

#Select employees whose `first_name` starts with 'J'

select first_name from Employee where first_name like 'J%';

#Retrieve all employees who were hired after January 1, 2020

alter table employee add hire_date date;
select * from Employee;

	
    UPDATE employee
SET hire_date = '2019-02-01'
WHERE emp_id = 101;

UPDATE employee
SET hire_date = '2020-12-25'
WHERE emp_id = 102;

UPDATE employee
SET hire_date = '2018-10-31'
WHERE emp_id = 103;

UPDATE employee
SET hire_date = '2021-09-12'
WHERE emp_id = 104;

UPDATE employee
SET hire_date = '2022-01-19'
WHERE emp_id = 105;

UPDATE employee
SET hire_date = '2016-07-20'
WHERE emp_id = 106;

UPDATE employee
SET hire_date = '2023-08-16'
WHERE emp_id = 107;

UPDATE employee
SET hire_date = '2024-05-14'
WHERE emp_id = 108;

UPDATE employee
SET hire_date = '2019-02-10'
WHERE emp_id = 109;

UPDATE employee
SET hire_date = '2017-11-20'
WHERE emp_id = 110;

UPDATE employee
SET hire_date = '2022-04-11'
WHERE emp_id = 111;

select * from Employee;


#Retrieve all employees who were hired after January 1, 2020
select * from employee where hire_date >= '2020-01-01';

# Find employees whose `salary` is between 5000 and 10000.
select first_name,last_name,salary from employee where salary between 5000 and 70000;

# Retrieve the `employee_id`, `first_name`, and `department_id` of all employees who do not have a manager
select emp_id,first_name,dept_id from Employee Where m_id =0;

# Sort the `employees` by `last_name` in ascending order.
select last_name from employee 
order by last_name asc;


#Sort the `employees` by `hire_date` in descending order.
select hire_date from employee 
order by hire_date desc;
select * from employee;

#Retrieve employees with a `last_name` ending with 'son'.
select last_name from employee 
where last_name like '%son';

#Find employees whose `first_name` contains the letter 'e' and sort them by `employee_id`.
select emp_id,first_name from employee
where first_name like '%e%' 
order by emp_id asc;
use employeedb;
SHOW TABLES;

#Calculate the average salary of all employees.
SELECT AVG(salary) AS average_salary
FROM employee;

#Find the maximum salary in the `employees` table
SELECT Max(salary) AS Maximum_salary
FROM employee;

#Count the number of employees in each department.
SELECT count(*) AS Total_employee
FROM employee;

#Retrieve the minimum `hire_date` from the `employees` table.
SELECT min(hire_date) AS Minimum_date
FROM employee;


#Group employees by `department_id` and count the number of employees in each group.

select dept_id, count(*) from employee
group by dept_id;


# Find the average salary of employees in each department

select salary,avg(salary) as total_salary from employee
group by salary;

#Retrieve departments that have more than 5 employees.

select dept_id, count(emp_id) as total_employee from employee 
group by dept_id
having total_employee>3;


 # Find the total salary for each job title.
 
 select job_id, sum(salary) as Total_salary from employee
 group by job_id;
 
 #Group employees by `hire_date` and count how many employees were hired on each date.
 
 select hire_date,count(*) as employee_Count from employee
 group by hire_date;
 
  
 show tables;
 # Retrieve all employees and their corresponding department names.
 
 select e1.first_name,e1.last_name,d1.dept_name  from employee e1
join department d1 
 on e1.dept_id = d1.dept_id;
 
 
 #Retrieve all employees who work in the same department as 'Akshay Pore'.
 
 select e1.first_name,e1.last_name,d1.dept_name  from employee e1
  join department d1 
 on e1.dept_id = d1.dept_id
 where first_name ='Akshay';
 
 
#Find all employees who do not have a department assigned.

SELECT employee_name
FROM employees
WHERE department_id IS NULL;

#Retrieve employees and their managers' names.
use employeedb;
 
select  e1.first_name,e1.last_name,m1.m_name from employee e1
join Manager m1 on
e1.m_id = m1.m_id;
 
 
 #Find the employee with the highest salary
 
 select first_name,last_name,salary from employee
 where salary = (select max(salary) as highest_salary from employee );


#Retrieve all employees who earn more than the average salary

select first_name,last_name,salary from employee
 where salary > (select avg(salary)  from employee );

show tables;
#List the departments that have no employees.

SELECT dept_id, dept_name
FROM department d
WHERE d.dept_id NOT IN (
    SELECT e.dept_id
    FROM  employee e
);




#Select the `first_name` and `last_name` of employees who work in departments located in 'New York'.

select first_name,last_name from employee e
where dept_id in (select dept_id from department where location ='New York');


#Find employees who have the same job title as 'John Doe'.
select first_name,last_name from employee 
where job_name = (select job_name from job where job_name  = 'Pavan Jadhav');


#Retrieve all departments and the number of employees in each, including departments with no employees.
SELECT d.dept_id, d.dept_name, COUNT(e.emp_id) AS num_employee
FROM department d
LEFT JOIN employee e ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;


# Find the employee with the second-highest salary

select first_name,last_name,salary from employee 
order by salary desc 
limit 2;

SELECT *
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
    WHERE salary < (SELECT MAX(salary) FROM employee)

);

#Retrieve employees who work in the same city as their department

select e1.first_name,e2.last_name,e1.city as employee_city, d1.department_city ,d1.dept_name from employee e1
join department d1
on e1.dept_id = d1.dept_id 
where e1.city = d1.department_city;

#Find employees whose salaries are above the average salary of their department


SELECT e.emp_id, e.first_name,e.first_name, e.salary, e.dept_id
FROM employee e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employee
    WHERE dept_id = e.dept_id
    GROUP BY dept_id
);



#Retrieve employees who have the same salary as someone in department ID 3.
select first_name,last_name,salary,dept_id from employee
where salary in (select distinct salary from employee where dept_id =3);


use employeedb;

#Select all customers who have never placed an order.
SELECT c.customer_id, c.customer_name
FROM customers c
WHERE c.customer_id NOT IN (
    SELECT o.customer_id
    FROM orders o
);

#Find departments where all employees earn more than 5000.

select dept_id,salary from employee
where salary in ( select salary from employee where salary >5000);


#Retrieve employees who have the highest salary in their department.

select dept_id, e.first_name,e.last_name,e.salary from employee e
where e.salary =(select max(salary) from employee where dept_id = e.dept_id);

SELECT e.emp_id, e.dept_id, e.salary
FROM employee e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM employee
    WHERE dept_id = e.dept_id
);


# Retrieve the `first_name` and `last_name` concatenated into a single column named `Full_Name`.

select first_name,last_name, concat(first_name,' ',last_name) as full_name from employee;

#Convert all `last_name` values to uppercase.
select last_name,ucase(last_name) from employee;

#Replace all occurrences of 'Manager' in `job_title` with 'Supervisor'.
select job_name,replace(job_name,'Full Stack Developer','Supervisor') as jobname1 from job;

#Find employees whose `email` address contains their `last_name`.
SELECT employee_id, emp_name, email, last_name
FROM employee
WHERE email LIKE CONCAT('%', last_name, '%');


#Select employees whose `first_name` is longer than 5 characters.

select first_name from employee where length(first_name) >5;

#Find the number of days each employee has worked (from `hire_date` to today).


select emp_id, hire_date,current_date,
datediff(current_date, hire_date) as total_worked_days
from employee;


#Retrieve all employees hired in the last 6 months.

SELECT emp_id, hire_date FROM  employee 
WHERE hire_date >= CURDATE() - INTERVAL  9 month;

#Select employees who were hired in the year 2020.

select emp_id,first_name,last_name,hire_date from employee 
where year(hire_date) = 2020 ;

#Find the next Monday after each employee's `hire_date`

select emp_id, hire_date,
DATE_ADD(hire_date, INTERVAL ( 8- DAYOFWEEK(hire_date)) % 7 DAY) AS next_monday
 from employee;


#Calculate the number of years each employee has been with the company.
show tables;
use employeedb;
select emp_id,hire_date,timestampdiff(year,hire_date,curdate()) as year_with_compan
from employee ;


# Retrieve employees and their rank based on salary, within their department.
select e.emp_id, e.first_name,e.last_name ,e.salary, rank () over (order by salary ) as ranks from employee e
where dept_id = e.dept_id;

# Find the cumulative salary for all employees sorted by `hire_date`.
select emp_id,salary,hire_date, sum(salary) over (Order by hire_date) as cumulative_salary from employee
order by hire_date;

#RANK() –  As the name suggests, the rank function assigns rank to all the rows within every, if same value comes it skip the one value
#DENSE_RANK() – It assigns rank to each row within partition. if same value comes it does not skip the one value
#ROW_NUMBER() – ROW_NUMBER() gives e­ach row a unique number.

#Calculate the difference between each employee's salary and the average salary in their department.
show tables;
select e.dept_id,e.emp_id,e.salary, e.salary- avg(e.salary) over (partition by dept_id)  as salary_diff
from employee e
where dept_id = e.dept_id;

# Retrieve the lead and lag salaries of each employee.
SELECT emp_id,dept_id,salary,
    LAG(salary) OVER (ORDER BY hire_date) AS previous_salary,
    LEAD(salary) OVER (ORDER BY hire_date) AS next_salary
FROM employee ORDER BY hire_date;

#Find all employees who work in `Sales` or `Marketing`.


-- Employees in the Sales department
-- Employees in the Sales department
SELECT e.emp_id, e.first_name, e.dept_id 
FROM employee e
WHERE e.dept_id = (SELECT d.dept_id FROM department d WHERE d.dept_name = 'Government')

EXCEPT

-- Employees in the HR department
SELECT e.emp_id, e.first_name, e.dept_id 
FROM employee e
WHERE e.dept_id = (SELECT d.dept_id FROM department d WHERE d.dept_name = 'Government');





# Retrieve employees who work in `HR` but not in `IT`.

select e.emp_id,e.first_name,e.last_name,e.dept_id from employee e
join department d
on e.dept_id = d.dept_id
where dept_name = 'HR'
except
select e.emp_id,e.first_name,e.last_name,e.dept_id from employee e
join department d
on e.dept_id = d.dept_id
where dept_name = 'IT';



#Find the intersection of employees who work in `Sales` and have a salary above 5000.

select emp_id,first_name,last_name,dept_id,salary from employee
where dept_id =(select dept_name from department where dept_name = 'IT' and salary >5000)
intersect
select dept_id,dept_name from department 
where dept_id = (select dept_id from employee where dept_name = ('IT') and salary >5000);




# Find employees who earn the same salary as the highest salary in department ID 4.

select emp_id,first_name,salary from  employee  where 
salary = (select max(salary) from employee where dept_id = 4) ;


#Retrieve employees who have worked at the company for more than 10 years.

SELECT emp_id, first_name, hire_date
FROM employee
WHERE hire_date <= CURRENT_DATE - INTERVAL '5' YEAR;


#Find departments where the average salary is above 6000.

SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employee e
JOIN department d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) > 6000;



#Retrieve employees who were hired in the first quarter of the year.


select emp_id,first_name,hire_date from employee 
where Extract(Month from hire_date)  between 1 and 3;


#Calculate the moving average of salaries over a 3-month period.

select emp_id,salary,avg(salary)  over (order by hire_date rows between 2 PRECEDING and current row) as moving_avrage_salaries 
from employee;


#Retrieve employees and their relative rank based on `hire_date` within their department.


select e.emp_id,e.first_name,e.last_name,e.dept_id ,d.dept_name,rank() over (order by hire_date) as higher_date_ranks from employee e
join department d 
on e.dept_id = d.dept_id
order by e.dept_id,higher_date_ranks;

# Find the percentage rank of each employee’s salary within their department.

use employeedb;
select e.emp_id,e.first_name,e.last_name,e.salary,d.dept_name,round(percent_rank() over (order by salary),2) as percent_rank1 from employee  e
join department d
on e.dept_id = d.dept_id;


# Calculate the difference between each employee's salary and the maximum salary in their department.
select e.emp_id,e.first_name,d.dept_name, e.salary,abs(e.salary-max(salary) over (order by dept_name)) as salary_diff from employee  e
join department d
on e.dept_id = d.dept_id;


#retrieve the cumulative sum of salaries partitioned by department.
select e.emp_id,e.first_name,d.dept_name, e.salary,sum(salary) over (Partition by dept_name) as cumulative_sum from employee  e
join department d
on e.dept_id = d.dept_id;


#- Create a function that returns the nth highest salary in a department.
drop function Find_Highest_salary;
Delimiter $$
create function Find_Highest_salary( dept_id int)
returns int
deterministic
Begin
	Declare Highest_salary int;
	select max(salary) into Highest_salary 
	from employee
    where dept_id = dept_id;
    
    return Highest_salary;
end $$
delimiter ;

select Find_Highest_salary(0) as Highest_salary;


#Create a function to calculate the average number of orders per customer.

create function Find_Average_Orders( order_id int)
returns int
deterministic
begin
	Declare total_order int ;
	select avg(order1) into total_order
    from orders
    where order_id = order_id;
    
    return total_order;
end $$
delimiter ;

select Find_Average_Orders(0) as total_order;


#Procedure
#Write a stored procedure to calculate the total salary of employees in a department.

drop procedure Calculate_total_salary;
delimiter $$  
create procedure Calculate_total_salary(in department_id int)
begin
	Declare totalsalary Decimal(10,2);
    select sum(salary)
    into totalsalary
    from employee
    where dept_id = dept_id;
    
    select totalsalary as Total_Salary;
    
end $$
delimiter ;

call Calculate_total_salary(1);


#Write a stored procedure to update employee salaries by a percentage.
delimiter $$
Create procedure Updated_Employee_salaries(in percentage decimal(10,2),dept_id int)
Begin
	update employee
    set salary =  salary+ (salary * (percentage/100)) 
    where dept_id=dept_id;
    
    #select  concat('Updated salaries',pecentage,'% for department',dept_id) as message
    
end;
delimiter ;
	
    
    
#Write a procedure to insert a new employee and automatically assign them to a department.

delimiter $$
Create procedure Insert_new_employee(dept_id int)
Begin
	update employee
    set salary =  salary+ (salary * (percentage/100)) 
    where dept_id=dept_id;
    
    #select  concat('Updated salaries',pecentage,'% for department',dept_id) as message
    
end;
delimiter ;
	

#Write a procedure to insert a new employee and automatically assign them to a department.

DELIMITER $$

CREATE PROCEDURE insert_employee(
    IN p_first_name VARCHAR(100),
    IN p_last_name VARCHAR(100),
    IN p_hire_date DATE
)
BEGIN
    -- Declare a variable to store the department ID to be assigned
    DECLARE assigned_dept_id INT;

    -- Find the department with the least number of employees
    SELECT dept_id
    INTO assigned_dept_id
    FROM department
    ORDER BY employee_count ASC
    LIMIT 1;

    -- Insert the new employee into the employees table
    INSERT INTO employee (first_name, last_name, hire_date, dept_id)
    VALUES (p_first_name, p_last_name, p_hire_date, assigned_dept_id);

    -- Update the employee count for the assigned department
    UPDATE department
    SET employee_count = employee_count + 1
    WHERE dept_id = assigned_dept_id;
END $$

DELIMITER ;

CALL insert_employee('John', 'Doe', '2025-01-09');	







    






















