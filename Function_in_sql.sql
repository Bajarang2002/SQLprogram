Drop table employee4;
CREATE TABLE employee4 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (dept_id) REFERENCES department4(dept_id)
);
insert into employee4 values (101,"Aditya Khadake",1,30000),
(102,"Pavan Jadhav",2,40000),
(103,"Akshay Pore",3,50000),
(104,"Priyanka Patil",1,80000),
(105,"Pavan Jadhav",3,60000);
select * from employee4;

drop table  department4;
CREATE TABLE department4 (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

insert into department4 values(1,"IT"),
(2,"Manager"),
(3,"IT");

# User Defined Function in sql
#Create a user-defined function to calculate total salary for a department

drop function total_salary_in_department;
DELIMITER $$

CREATE FUNCTION total_salary_in_department(
dept_id INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_salary DECIMAL(10, 2);

    -- Calculate the total salary for the specified department
    SELECT COALESCE(SUM(salary), 0)
    INTO total_salary
    FROM employee
    WHERE dept_id = dept_id;

    -- Return the calculated total salary
    RETURN total_salary;
END $$

DELIMITER ;


select total_salary_in_department(1) as total_salary ;




delimiter $$
create function total_salary_in_department1(dept_id int)
returns Decimal(10,2)
deterministic                  # To return same result
Begin
	Declare total_salary Decimal(10,2);
    
    select sum(salary) into total_salary from employee
    where dept_id = dept_id;
    
    return total_salary;
    
end $$
delimiter ;

select total_salary_in_department(1) as total_salary;






    
    
    















