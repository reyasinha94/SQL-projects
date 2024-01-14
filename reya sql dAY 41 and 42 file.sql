use employees;

select * from titles;

Drop table if exists tbldepartment;

Create table tbldepartment
(
ID int Primary Key,
DepartmentName varchar(50),
Location varchar(50),
DepartmentHead varchar(50)
);

insert into tbldepartment values (1,'IT','London','Rick');
insert into tbldepartment values (2,'Payroll','Delhi','Ron');
insert into tbldepartment values (3,'HR','New York','Christie');
insert into tbldepartment values (4,'Other Department','Sydney','Cindrella');

Select * from tbldepartment;

drop table if exists tblEmployee;
create table tblemployee
(
ID int primary key,
Name varchar (50),
Gender varchar (50),
Salary int,
Departmentid int,
Foreign Key (Departmentid) references tblDepartment(id)
);

INSERT INTO tblemployee values (1,'Tom','Male',4000,1);
INSERT INTO tblemployee values (2,'Pam','Female',3000,3);
INSERT INTO tblemployee values (3,'John','Male',3500,1);
INSERT INTO tblemployee values (4,'Sam','Male',4500,2);
INSERT INTO tblemployee values (5,'Todd','Male',2800,2);
INSERT INTO tblemployee values (6,'Ben','Male',7000,1);
INSERT INTO tblemployee values (7,'Sara','Female',4800,3);
INSERT INTO tblemployee values (8,'Valarie','Female',5500,1);
INSERT INTO tblemployee values (9,'James','Male',6500,NULL);
INSERT INTO tblemployee values (10,'Russell','Male',8800,NULL);

select * from tblemployee
join tbldepartment on DepartmentID = tbldepartment.ID;

select * from tblemployee
right join tbldepartment on DepartmentID = tbldepartment.ID;

select * from tblemployee
left join tbldepartment on DepartmentID = tbldepartment.ID;


select * from tblemployee
right join tbldepartment on DepartmentID = tbldepartment.ID
union
select * from tblemployee
left join tbldepartment on DepartmentID = tbldepartment.ID;

select first_name, last_name 
from employees
where emp_no  in (select emp_no from dept_manager);

select e.first_name, e.last_name 
from employees e
where e.emp_no  in (select dm.emp_no from dept_manager dm);

select * from departments;

select * from departments where dept_name = 'Customer Service' or dept_name = 'Finance';

select * from departments where dept_name IN('Customer Service','Finance');

select * from departments where dept_name NOT IN('Customer Service','Finance');


Drop table if exists tblEmployees;

Create table tblEmployees
(	
EmployeeID int,  
Name varchar(50),    
ManagerID int 
); 

insert into tblEmployees values (1, 'Mike',3);
insert into tblEmployees values (2, 'Rob',1);
insert into tblEmployees values (3, 'Todd',NULL);
insert into tblEmployees values (4, 'Ben',1);
insert into tblEmployees values (5, 'Sam',1);


select distinct e1.* from tblEmployees e1 join tblEmployees m1 on m1.EmployeeID = e1.ManagerID;


DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee
(
Name VARCHAR(255), 
Salary INT NOT NULL,
Location VARCHAR(255)
);

DELIMITER //

Create procedure myProcedure (IN name VARCHAR(30),   IN sal INT,   IN loc VARCHAR(45))      BEGIN   
   INSERT INTO Employee(Name, Salary, Location) VALUES (name, sal, loc);  
END //     

DELIMITER ;

CALL myProcedure ('Raman', 35000, 'Bangalore');

select * from employee;

DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$

CREATE PROCEDURE select_employees()
BEGIN 
select * from employees limit 1000;
END$$

DELIMITER ;

call employees.select_employees();

call select_employees();

call select_employees();

select * from select_employee;

USE EMPLOYEES;

DROP PROCEDURE IF EXISTS EMP_SALARY;

DELIMITER $$

USE EMPLOYEES $$

CREATE PROCEDURE EMP_SALARY (IN P_EMP_NO INTEGER)
BEGIN 	
SELECT E.FIRST_NAME , E.LAST_NAME, S.SALARY, S.FROM_DATE, S.TO_DATE     
FROM EMPLOYEES E JOIN SALARIES S ON E.EMP_NO = S.EMP_NO  
WHERE E.EMP_NO = P_EMP_NO; 
END $$  

DELIMITER ; 







