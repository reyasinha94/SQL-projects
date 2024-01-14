use batch84;


Drop table if exists Persons;


CREATE TABLE Persons 
(  
 ID int NOT NULL,    
LastName varchar(255) NOT NULL, 
 FirstName varchar(255),    
Age int,   
 UNIQUE (ID)
);

select * from Persons ;



INSERT INTO Persons Values (100, 'John', 'Green', 20);



INSERT INTO Persons Values (101, 'John', 'Green', 20);



INSERT INTO Persons Values (NULL, 'John', 'Green', 20);

Drop table if exists Persons;

Drop table if exists Persons;

CREATE TABLE Persons 
(  
 ID int,    
LastName varchar(255) NOT NULL, 
 FirstName varchar(255),    
Age int,   
 UNIQUE (ID)
);


INSERT INTO Persons Values (101, 'John', 'Green', 20);


INSERT INTO Persons Values (101, 'John', 'Green', 20);



INSERT INTO Persons Values (NULL, 'John', 'Green', 20);

INSERT INTO Persons Values (102, 'John', 'Green', 20);

select * from Persons;

INSERT INTO Persons Values (NULL, 'John', 'Green', 20);



Drop table if exists Persons;


CREATE TABLE Persons
 (  
 ID int NOT NULL,   
 LastName varchar(255) NOT NULL, 
 FirstName varchar(255),   
 Age int,   
 CONSTRAINT UC_Person UNIQUE (ID,LastName)
);


INSERT INTO Persons Values (100, 'John', 'Green', 20);


INSERT INTO Persons Values (101, 'John', 'Green', 20);

INSERT INTO Persons Values (101, 'Sam', 'Green', 20);

INSERT INTO Persons Values (101, 'Sam', 'Green', 20);

select * from Persons;



Drop table if exists Persons;


CREATE TABLE Persons
 (  
 ID int NOT NULL,   
 LastName varchar(255) NOT NULL, 
 FirstName varchar(255),   
 Age int
);


ALTER TABLE Persons ADD UNIQUE (ID);



SHOW INDEX FROM Persons; 


Drop table if exists Persons;


CREATE TABLE Persons
 (  
 ID int NOT NULL,   
 LastName varchar(255) NOT NULL, 
 FirstName varchar(255),   
 Age int,   
 CONSTRAINT UC_Person UNIQUE (ID,LastName)
);

SHOW INDEX FROM Persons; 



Drop table if exists Persons;


CREATE TABLE Persons
 (  
 ID int NOT NULL,   
 LastName varchar(255) NOT NULL, 
 FirstName varchar(255),   
 Age int
);


ALTER TABLE Persons ADD UNIQUE (ID);


SHOW INDEX FROM Persons; 



ALTER TABLE Persons Drop index ID;



SHOW INDEX FROM Persons; 


Drop table if exists Persons;


CREATE TABLE Persons
 (  
 ID int NOT NULL,   
 LastName varchar(255) NOT NULL, 
 FirstName varchar(255),   
 Age int
);


ALTER TABLE Persons ADD UNIQUE (ID);


ALTER TABLE Persons ADD CONSTRAINT UC_Person UNIQUE (ID);

SHOW INDEX FROM Persons; 

ALTER TABLE Persons Drop index UC_Person;


select * from Persons;

Drop Table if Exists suppliers;

CREATE TABLE suppliers 
(    
supplier_id INT AUTO_INCREMENT, 
name VARCHAR(255) NOT NULL,    
phone VARCHAR(15) NOT NULL UNIQUE,  
address VARCHAR(255) NOT NULL,   
PRIMARY KEY (supplier_id),    
CONSTRAINT uc_name_address UNIQUE (name , address)
);

SHOW INDEX FROM suppliers;

INSERT INTO suppliers (name, phone, address) VALUES( 'ABC Inc', '(408)-908-2476', '4000 North 1st Street');

select * from suppliers;



INSERT INTO suppliers(name, phone, address) VALUES( 'XY Corporation','(408)-908-2878','3000 North 1st Street');


select * from suppliers;


SHOW INDEX FROM suppliers;

DROP INDEX uc_name_address ON suppliers;

SHOW INDEX FROM suppliers;

ALTER TABLE suppliers DROP INDEX phone;


select * from suppliers;



INSERT INTO suppliers (name, phone, address) VALUES( 'ABC Inc', '(408)-908-2476', '4000 North 1st Street');



select * from suppliers;

use batch84


DROP TABLE IF EXISTS  Students;

CREATE TABLE IF NOT EXISTS Students
(
Student_ID int NOT NULL,
Student_Name varchar(255) NOT NULL,
Class_Name varchar(255),
Age int,
PRIMARY KEY (Student_ID)
);


DROP TABLE IF EXISTS  Persons;

CREATE TABLE IF NOT EXISTS  Persons
(
 ID int not null primary Key, 
Name varchar (45) NOT NULL,
 Age Int,  
City Varchar (25)
); 


INSERT INTO Persons(Id, Name, Age, City)  
 VALUES 
(1,'Robert', 15, 'Florida') ,  
 (2, 'Joseph', 35, 'California'),  
 (3, 'Peter', 40, 'Alaska'); 

select * from Persons;


INSERT INTO Persons(Id, Name, Age, City)   VALUES 
(10,'Stephen', 15, 'Florida'); 



DROP TABLE IF EXISTS Sales;

CREATE TABLE if not exists sales
(
purchase_number INT NOT NULL AUTO_INCREMENT,
date_of_purchase DATE,
customer_id INT,
item_code VARCHAR(10),
PRIMARY KEY (purchase_number)
);


DROP TABLE IF EXISTS Sales;

CREATE TABLE if not exists sales
(
purchase_number INT NOT NULL AUTO_INCREMENT,
date_of_purchase DATE,
customer_id INT,
item_code VARCHAR(10),
PRIMARY KEY (purchase_number)
);



DROP TABLE IF EXISTS customers;

CREATE TABLE if not exists customers    
( 
customer_id INT,   
first_name varchar(255), 
last_name varchar(255),     
email_address varchar(255),    
number_of_complaints int, 
primary key (customer_id)  
 ); 


DROP TABLE IF EXISTS items ;

CREATE TABLE if not exists items                                                                                                                       (   
item_code varchar(255),    
item varchar(255),  
unit_price numeric(10,2),   
company_id varchar(255),	
primary key (item_code)  
);



DROP TABLE IF EXISTS companies;

CREATE TABLE IF NOT EXISTS companies 
(  
 company_id varchar(255),     
 company_name varchar(255),     headquarters_phone_number int(12), 
primary key (company_id)  
 );



DROP TABLE IF EXISTS Persons;


CREATE TABLE IF NOT EXISTS  Persons
 (      
Person_ID int NOT NULL PRIMARY KEY, 
Name varchar(45) NOT NULL,     
Age int,    
City varchar(25)  
); 

DROP TABLE IF EXISTS Orders;

CREATE TABLE IF NOT EXISTS Orders 
(   
 Order_ID int NOT NULL PRIMARY KEY,     
 Order_Num int NOT NULL,     
 Person_ID int,   
 FOREIGN KEY (Person_ID) REFERENCES Persons(Person_ID) 
 ); 


DROP TABLE IF EXISTS customers;

CREATE TABLE if not exists customers    
( 
customer_id INT,   
first_name varchar(255), 
last_name varchar(255),     
email_address varchar(255),    
number_of_complaints int, 
primary key (customer_id)  
 ); 



DROP TABLE IF EXISTS Sales;

CREATE TABLE if not exists sales
(
purchase_number INT NOT NULL AUTO_INCREMENT,
date_of_purchase DATE,
customer_id INT,
item_code VARCHAR(10),
PRIMARY KEY (purchase_number),
FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE CASCADE
);



DROP TABLE IF EXISTS Sales;

CREATE TABLE if not exists sales
(
purchase_number INT NOT NULL AUTO_INCREMENT,
date_of_purchase DATE,
customer_id INT,
item_code VARCHAR(10),
PRIMARY KEY (purchase_number)
);


ALTER TABLE SALES ADD
FOREIGN KEY  (customer_id) REFERENCES customers (customer_id) ON DELETE CASCADE;

SHOW INDEX FROM sales;

ALTER TABLE SALES DROP FOREIGN KEY sales_ibfk_1;



drop table  if exists riPerson;

drop table  if exists riGender; 



create table riPerson 
(
ID int primary key,
Name varchar(50) ,
Email varchar(50),
GenderID int
) ;



create table riGender 
(
ID int not null Primary Key , 
Gender varchar(50) not null
);



insert into riPerson values ( 1, 'Jade', 'j@j.com', 2);
insert into riPerson values ( 2, 'Mary', 'm@m.com', 3);
insert into riPerson values ( 3, 'Martin', 'ma@ma.com', 1);
insert into riPerson values ( 4, 'Rob', 'r@r.com', Null);
insert into riPerson values ( 5, 'May', 'may@may.com', 2);
insert into riPerson values ( 6, 'Kristy', 'k@k.com', Null);
insert into riPerson values ( 7, 'John', 'j@j.com', 2);
insert into riPerson values ( 8, 'Simon', 's@s.com', 3);
insert into riPerson values ( 9, 'Rich', 'r@r.com', 1);
insert into riPerson values ( 10, 'Sara', 's@s.com', Null);
insert into riPerson values ( 11, 'Johnny', 'jo@j.com', 2);




insert into riGender  values(1, 'Male');
insert into riGender values(2, 'Female');
insert into riGender values(3, 'Unknown');
insert into riGender values(4, 'NA');
insert into riGender values(5, 'Default');



ALTER TABLE riPerson ADD CONSTRAINT 
riPerson_GenderId_FK FOREIGN KEY (GenderID) REFERENCES riGender(ID);


select * from rigender;

select * from riPerson;

delete from  rigender where ID = 2;

delete from  rigender where ID = 4;


alter table riperson drop CONSTRAINT riPerson_GenderId_FK;



ALTER TABLE riPerson ADD CONSTRAINT riPerson_GenderId_FK 
Foreign Key(GenderID) REFERENCES riGender(ID) ON DELETE SET NULL ON UPDATE SET NULL;

select * from riGender;

select * from riPerson;

delete from  rigender where ID = 3;

alter table riperson drop CONSTRAINT riPerson_GenderId_FK;


ALTER TABLE riPerson ADD CONSTRAINT riPerson_GenderId_FK
 Foreign Key(GenderID) REFERENCES riGender(ID) ON DELETE CASCADE ON UPDATE CASCADE;



delete from  rigender where ID = 1;


select * from riPerson;



ALTER TABLE riperson ALTER COLUMN GENDERID SET DEFAULT 5;





alter table riperson drop CONSTRAINT riPerson_GenderId_FK


ALTER TABLE riPerson ADD CONSTRAINT riPerson_GenderId_FK 
Foreign Key(GenderID) REFERENCES riGender(ID) 
ON DELETE SET DEFAULT ON UPDATE SET DEFAULT;

delete from  rigender where ID = 2;



drop table orders;

DROP TABLE IF EXISTS  Persons;

CREATE TABLE Persons 
(    
ID int NOT NULL,  
LastName varchar(255) NOT NULL,   
FirstName varchar(255),  
Age int,   
City varchar(255) DEFAULT 'Delhi' 
);

INSERT INTO Persons Values (100, 'John', 'Green', 20,'Pune');

select * from Persons;

INSERT INTO Persons (ID, LastName, Age) Values (101, 'Tom', 40);

select * from Persons;

Drop Table if exists Orders;

CREATE TABLE Orders 
(    
ID int NOT NULL, 
OrderNumber int NOT NULL, 
OrderDate datetime default current_timestamp
);

Insert into Orders (ID, OrderNumber) Values (100, 1000);

Select * from Orders; 

Insert into Orders (ID, OrderNumber) Values (100, 1000);

Select * from Orders; 

DROP TABLE IF EXISTS  Persons;

CREATE TABLE Persons 
(    
ID int NOT NULL,  
LastName varchar(255) NOT NULL,   
FirstName varchar(255),  
Age int,   
City varchar(255)
);




ALTER TABLE Persons ALTER City SET DEFAULT 'Delhi';


INSERT INTO Persons (ID, LastName, Age) Values (101, 'Tom', 40);


select  * from Persons;


ALTER TABLE Persons Alter city DROP Default ;


INSERT INTO Persons (ID, LastName, Age) Values (101, 'Tom', 40);

select  * from Persons;



DROP TABLE IF EXISTS  Persons;

CREATE TABLE Persons 
( 
Personid int NOT NULL AUTO_INCREMENT, 
LastName varchar(255) NOT NULL,  
FirstName varchar(255),   
Age int,    
PRIMARY KEY (Personid)
);


INSERT INTO Persons (LastName, Age) values ('John', 40);
select * from Persons; 


INSERT INTO Persons (LastName, Age) values ('John', 40);
select * from Persons; 


INSERT INTO Persons (LastName, Age) values ('John', 40);

select * from Persons; 

delete from  Persons where personid = 3;


INSERT INTO Persons (LastName, Age) values ('John', 40);

select * from Persons; 



INSERT INTO Persons (Personid,LastName, Age) values (300,'John', 40);

select * from Persons; 

INSERT INTO Persons (LastName, Age) values ('John', 40);

select * from Persons; 



ALTER TABLE Persons AUTO_INCREMENT=1000;

INSERT INTO Persons (LastName, Age) values ('John', 40);

select * from Persons; 

Drop Table if exists Student_grade; 

CREATE TABLE Student_grade
(
id INT PRIMARY KEY AUTO_INCREMENT, 
Grade VARCHAR(250) NOT NULL,
priority ENUM('Low', 'Medium', 'High') NOT NULL
);




INSERT INTO Student_grade(Grade, priority)VALUES('Good grades', 'High');

select * from Student_grade;


INSERT INTO Student_grade(Grade, priority)VALUES('Good grades', 'Average');

INSERT INTO Student_grade(Grade, priority)VALUES('Good grades', 2);

select * from Student_grade;


# This is the example for constraints

use employees;

SELECT COUNT(*) FROM departments;

SELECT COUNT(*) FROM dept_emp;

SELECT COUNT(*) FROM dept_manager;

SELECT COUNT(*) FROM employees;

SELECT COUNT(*) FROM salaries;

SELECT COUNT(*) FROM titles;

