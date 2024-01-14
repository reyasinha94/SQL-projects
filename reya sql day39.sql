use employees;


select * from employees;
select * from departments;
select count(*) departments;
select count(*) from employees;

select count(*) from employees
where first_name = 'Georgi';

Select gender,count(*) from employees group by gender;

Select year(hire_data),count(*) from employees ;
select * from employees;
select year(hire_date), count(*) from employees group by year(hire_date);

select year(hire_date), count(*) from employees group by year(hire_date) order by year(hire_date) desc;

Select birth_date from employees;
SELECT * FROM   employees WHERE FIRST_NAME = 'Denis';

SELECT * FROM   employees WHERE FIRST_NAME = 'Denis' and gender = 'F';

SELECT * FROM   employees WHERE FIRST_NAME = 'Denis' and last_name = 'Coullard' and gender = 'F';

SELECT * FROM   employees WHERE FIRST_NAME = 'Denis' and last_name = 'Coullard';

SELECT * FROM   employees WHERE FIRST_NAME = 'Denis' or gender = 'F';

SELECT count(*)  FROM   employees WHERE FIRST_NAME = 'Denis' and Gender = 'M';

SELECT * FROM   employees WHERE FIRST_NAME = 'Denis' and Gender = 'M';

SELECT    count(*)  FROM   employees  WHERE  first_name = 'Kellie' AND gender = 'F'; 

SELECT    *  FROM   employees  WHERE  first_name = 'Kellie' AND gender = 'F'; 

SELECT * FROM   employees WHERE FIRST_NAME = 'Denis' or  FIRST_NAME = 'Elvis';

select count(*) from employees WHERE  FIRST_NAME = 'Denis' or  FIRST_NAME = 'Elvis';
SELECT *  FROM  employees WHERE  first_name = 'Kellie' OR first_name = 'Aruna'; 
select * from employees WHERE   (Gender ='M' OR 'F') and FIRST_NAME = 'Denis';
select * from employees WHERE   (Gender ='M' OR 'F') and FIRST_NAME = 'Denis';

select count(*) from employees WHERE  (Gender ='M' OR 'F') and FIRST_NAME = 'Denis';


SELECT  * FROM employees WHERE 
first_name = 'Cathie'
OR first_name = 'Mark'
OR first_name = 'Nathan';


SELECT  count(*) FROM employees WHERE 
first_name = 'Cathie'
OR first_name = 'Mark'
OR first_name = 'Nathan';



select count(*) from employees WHERE  first_name IN ('Cathie','Mark','Nathan');

Select * from employees;


Select * from batch84.rigender;

Select * from batch84.rigender where id=2 or id =5;


select count(*) from employees WHERE  first_name NOT IN ('Cathie','Mark' ,'Nathan');

select * from employees WHERE  first_name NOT IN ('Cathie','Mark' ,'Nathan');

SELECT * FROM employees WHERE  first_name LIKE ('Mar%');

SELECT * FROM employees WHERE  last_name LIKE ('%man');

SELECT * FROM employees WHERE  first_name LIKE ('Mar%ta');

SELECT * FROM employees WHERE  first_name LIKE ('Cat_%');

SELECT * FROM employees WHERE  last_name LIKE ('%_lek');

SELECT * FROM employees WHERE  hire_date LIKE ('%29');


SELECT count(*) FROM employees WHERE  hire_date LIKE ('%29');

SELECT * FROM salaries order by salary asc;

Select * from salaries where salary between 35000 and 39000;

SELECT  * FROM salaries WHERE salary BETWEEN 66000 AND 70000 ;   

Select * from salaries where from_date between 1990 and 2002;

select * from batch84.hemant where first_name is null;
 use batch84;


select * from hemant;

use employees;

SELECT  * FROM employees WHERE first_name ='Mark';

SELECT  * FROM employees WHERE hire_date > '2000-01-01';


Select * from employees where first_name = 'mark' group by first_name order by first_name asc;

select first_name from employees group by first_name order by first_name  asc; 


select first_name, count(first_name) as names_count from employees group by first_name order by first_name  DESC; 

select first_name from employees group by first_name order by first_name  desc; 


