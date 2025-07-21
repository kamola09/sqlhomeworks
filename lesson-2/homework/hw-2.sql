create database magazin

create table employee(Id int,name varchar(50),salary int)

insert into employee values(1,'Akbar',2000)
insert into employee values(2,'Zahro',3000)
select * from employee
--1
update employee
set salary=4000
 select * from employee
 --2
 update employee

 set salary=700

 where Id=1
 select * from employee
 --3
 delete  employee
 where Id=2
 select * from employee
--4
alter table employee
alter column Name varchar(100)
 select * from employee
 insert into employee values(2,'zahrooooooooooooooooooooo',300)
 --5
 alter table employee
 Add department varchar(50)

 --6
 alter table employee
 alter column salary float
 insert into employee(Id,Name,salary) values(3,'Sanobar',2.34)

 update employee
 
 set salary=800
 where Id=1
 --7
 create table olddepartment(Id int ,name varchar(30))
 insert into olddepartment values
 (1,'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales');
create table newdepartment(depId int,name varchar(30))
insert into newdepartment values
 (1,'HRw'),
(2,'Financew'),
(3,'ITw'),
(4,'Marketingw'),
(5,'Salesw');
select Id,name from olddepartment 

select* from newdepartment
insert into newdepartment (depId,name)
 
select Id,name from olddepartment 

select* from newdepartment
--8
create table kasbw(id int,name varchar(50))
insert into kasbw values
(1,'oqituvchi'),
(2,'doktor'),
(3,'iT'),
(4,'taksit'),
(5,'sotuvchi');
create table newkasbw(Ids int,names varchar(50))
insert into newkasbw(ids,names)
select id,name from kasbw
select * from newkasbw

--9
create table bankw(id int,name  varchar(50),department varchar(50),salary int)
insert into bankw values
(1,'kamola','business',600),
(2,'guli','business',400);

update bankw
set department='management'
where  salary>500
select * from bankw

--10
delete bankw
select * from bankw
--11
update kasbw
set  name=Null
select * from kasbw

--12
create table product(ID int,name varchar(25),salary int)
insert into product values
(1,'olma',230),
(2,'nok',240);

EXEC sp_rename  'product','Inventory';

select * from product

select * from Inventory

--13
alter table product 
alter column set salary float
create table products(ID int,name varchar(25),salary int,productcode int identity(100,5) primary key)

insert into products values
(1,'olma',230),
(2,'nok',240);
select * from products
