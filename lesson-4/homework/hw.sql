 create database lesson4_36
 --Write a query to select the top 5 employees from the Employees table.
 --1
 
create table employees(id int,name varchar(50),salary int)
insert into employees values
(1,'kamola',3405),
(2,'nodira',3450),
(3,'jamshid',3345),
(4,'murod',5345),
(5,'nurmuhammad',7345),
(6,'laylo',3485),
(7,'yoldosh',9345),
(8,'ergash',36645),
(9,'hasan',3485);
select top 5 * from employees
 --Use SELECT DISTINCT to select unique CategoryName values from the Products table.
 --2
 
 create table products(id int,categoryname varchar(40) unique,price int)
 insert into products values
 (1,'sabzi',30),
 (2,'kartoshka',70),
 (3,'sut',80),
 (4,'qattiq',454),
 (5,'piyoz',206),
 (6,'olma',10);
 
 select distinct categoryname,id from products
 --Use SELECT DISTINCT to select unique Category values from the Products table.
 
 alter table products 
 add constraint id_unique unique(id);
 
 alter table products 
 add constraint price_unique unique(price);
 select distinct id,price from products;
 --3. Write a query that filters the Products table to show products with Price > 100.
 select * from products

 where price > 100;
  --Write a query to select all Customers whose FirstName start with 'A' using the LIKE operator.

  create table customers(id int, customername varchar(30),salary int);
  insert into customers values
(1,'kamola',3405),
(2,'nodira',450),
(3,'jamshid',3345),
(4,'murod',5345),
(5,'nurmuhammad',7345),
(6,'laylo',3485),
(7,'yoldosh',9345),
(8,'ergash',36645),
(9,'asal',3485);
select * from customers
where customername like 'a%';

--Order the results of a Products table by Price in ascending order.
select * from products
order by price asc;
