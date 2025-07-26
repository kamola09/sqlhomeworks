create database lesson3

--1
create table employes(id int,name varchar(30) not null,maoshqoshimcha int null)
insert into employes values
(1,'abror',null),
(2,'ali',230),
(3,'zamira',null);
select * from employes
--2
create table products1(id int,name varchar(20) unique,salary int)
insert into products1 values
(1,'olma',2300),
(2,'nok',2400);
select * from products1
--3
--Comment — bu dasturchilar uchun yozilgan tushuntiruvchi yozuv.
--U SQL kodning o‘zida bajarilmaydi, ya’ni ma’lumotlar bazasiga ta’sir qilmaydi.

--4
create table categories(categoriesId int primary key,categoriesName  varchar(30)unique)
insert into categories values
(1,'kamola'),
(2,'farangiz');
select * from categories
--5
--The IDENTITY column in SQL Server is used to automatically generate unique numbers for each new row in a table.

--6

Alter table products1 
Add CategoryId int;

--7
bulk insert products1
from '"C:\Users\Asus\Desktop\kamola.txt"'
with(
fieldterminator=',',
rowterminator='\r\n',
firstrow=1);
--8
create table categoriese(
categoryId int primary key,
categoryName varchar(50)
);
insert into categoriese values
(1,'olma'),
(2,'nok');
create table productse(
productId int primary key,
productName varchar(50),
categoryId int,
Foreign key (categoryId) references categoriese(categoryId)
);
insert into productse values
(1,'shkolod',1),
(2,'qulupnay',2);
select * from productse
--9
create table teachers(id int primary key,email varchar(50) unique,name varchar(20))

insert into teachers (id,name) values (1,'aziza')
insert into  teachers  (id,email,name) values (2,'azizovna@gmail.com','aziz')
select * from teachers
--10
alter table products1
 add price int check (price>0)
 insert into products values(
 
 select * from products1
 --11
 alter table products1
 add stock int
 ----12
 select name,isnull(price,0) as price
 from products1
 --13
-- jadval orasidagi bog‘liqlikni saqlash.

--Ma’lumotlar yaxlitligini (integrity) ta’minlash.

--Xatoliklar, noto‘g‘ri yoki mavjud bo‘lmagan ma’lumotlar kiritilishini oldini olish.
 create table departments(id int primary key ,name varchar(40))
 insert into departments values
 (1,'teachers'),
 (2,'qoshimcha_ishchi');
 create table employees(
 em_id int primary key,
 em_name varchar(30),
 
 id int,
 foreign key(id) references departments(id)
 );
 insert into employees values
 (1,'abbos',1),
 (2,'farangiz',2);
 select * from employees
 --14
 create table customers(id int,name varchar(40),age int)
 insert into customers values
 (1,'akmal',18),
 (2,'laylo',34);
 select name,age 
 from customers
 where age>=19

--15
create table journals(
id int Identity(100,10) primary key , 
name varchar(50));
insert into journals values
('zahro'),
('guliy');
select * from journals

--15
create table OrderDetails(
order_id int,
order_name varchar (40),
primary key(order_id,order_name))
insert into OrderDetails values
(1,'kamola'),
(2,'laylo');

select * from OrderDetails
--16
create table books_shop(id int,name varchar(30),email varchar(40))
insert into books_shop values
(1,'sarvar',null),
(2,'sardor','hamidabdullayeva@gmail.com');
select
email,
isnull (email,'null') as emailresult
from books_shop;

select name,
COALESCE(name,null) as coalesces
from books_shop;

--17
create table employes_maktab (emid int primary key,name varchar(70),email varchar(30) unique)
insert into employes_maktab values
(1,'gulbahor' ,'bahorabdullayeva@gmail.com'),
(2,'hamidagul','adinora@gmail.com');

select * from employes_maktab
