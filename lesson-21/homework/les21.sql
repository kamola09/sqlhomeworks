create database less21

use less21
CREATE TABLE ProductSales (
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    SaleDate DATE NOT NULL,
    SaleAmount DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    CustomerID INT NOT NULL
);

INSERT INTO ProductSales (SaleID, ProductName, SaleDate, SaleAmount, Quantity, CustomerID)
VALUES 
(1, 'Product A', '2023-01-01', 150.00, 2, 101),
(2, 'Product B', '2023-01-02', 200.00, 3, 102),
(3, 'Product C', '2023-01-03', 250.00, 1, 103),
(4, 'Product A', '2023-01-04', 150.00, 4, 101),
(5, 'Product B', '2023-01-05', 200.00, 5, 104),
(6, 'Product C', '2023-01-06', 250.00, 2, 105),
(7, 'Product A', '2023-01-07', 150.00, 1, 101),
(8, 'Product B', '2023-01-08', 200.00, 8, 102),
(9, 'Product C', '2023-01-09', 250.00, 7, 106),
(10, 'Product A', '2023-01-10', 150.00, 2, 107),
(11, 'Product B', '2023-01-11', 200.00, 3, 108),
(12, 'Product C', '2023-01-12', 250.00, 1, 109),
(13, 'Product A', '2023-01-13', 150.00, 4, 110),
(14, 'Product B', '2023-01-14', 200.00, 5, 111),
(15, 'Product C', '2023-01-15', 250.00, 2, 112),
(16, 'Product A', '2023-01-16', 150.00, 1, 113),
(17, 'Product B', '2023-01-17', 200.00, 8, 114),
(18, 'Product C', '2023-01-18', 250.00, 7, 115),
(19, 'Product A', '2023-01-19', 150.00, 3, 116),
(20, 'Product B', '2023-01-20', 200.00, 4, 117),
(21, 'Product C', '2023-01-21', 250.00, 2, 118),
(22, 'Product A', '2023-01-22', 150.00, 5, 119),
(23, 'Product B', '2023-01-23', 200.00, 3, 120),
(24, 'Product C', '2023-01-24', 250.00, 1, 121),
(25, 'Product A', '2023-01-25', 150.00, 6, 122),
(26, 'Product B', '2023-01-26', 200.00, 7, 123),
(27, 'Product C', '2023-01-27', 250.00, 3, 124),
(28, 'Product A', '2023-01-28', 150.00, 4, 125),
(29, 'Product B', '2023-01-29', 200.00, 5, 126),
(30, 'Product C', '2023-01-30', 250.00, 2, 127);
select 
* ,
row_number() over(  order by SaleDate) as rownumber from ProductSales 
--2

select 
* ,
dense_rank() over(  order by SaleDate) as densenumber from ProductSales 

--3
with cte as(
select *,

dense_rank() over ( partition by CustomerID order by SaleAmount Desc ) as rnk from ProductSales )

select CustomerID, SaleAmount,ProductName  
from cte
where rnk = 1; 

--4
select *,
lead(SaleAmount) over( partition by CustomerID order by SaleDate) as NextSales from ProductSales 

--5
select *,
lag(SaleAmount) over(partition by CustomerID order by SaleDate) as Sale from ProductSales

--6
with cte as(
select * ,
lag(SaleAmount) over ( order by SaleDate) as olderSale from ProductSales)
select * from cte 
where SaleAmount > olderSale;

--7

select * ,
lag(SaleAmount) over ( order by SaleDate asc) ,

 SaleAmount - lag(SaleAmount) over ( order by SaleDate asc) from ProductSales;

 --8
 select * ,
lead(SaleAmount) over ( order by SaleDate asc) as nextsale ,

 ((lead(SaleAmount) over ( order by SaleDate asc)- SaleAmount)  * 100.0/SaleAmount )as persentanchage 
 from ProductSales;
 --9

 SELECT *,
 LAG(SaleAmount) over(partition by ProductName order by SaleDate) as oldsale, 
 nullif(LAG(SaleAmount) over(partition by ProductName order by SaleDate),0) from ProductSales as Saleratio;
 --10

 select * ,
First_value(SaleAmount) over (partition by ProductName order by SaleDate asc) ,
SaleAmount - First_value(SaleAmount) over (partition by ProductName order by SaleDate asc) as differentSALE from ProductSales
 --11
 select *,
 lag(SaleAmount) over( partition by ProductName order by SaleDate desc) as oldsale,
 case when SaleAmount >  lag(SaleAmount) over( partition by ProductName order by SaleDate desc)  then SaleAmount 
 else lag(SaleAmount) over( partition by ProductName order by SaleDate desc)  end as ComparedValue from ProductSales;
 
 --12

 select *,
 Sum(SaleAmount) over(order by SaleDate) as oldsale from ProductSales

 --13

 select *,
 avg(SaleAmount)
 over( order by SaleDate  rows between 2 preceding and current row)  as mediumavg
  from ProductSales

  --14
  select *,
 SaleAmount - avg(SaleAmount)
 over(   ) as difsale
  from ProductSales
 
  CREATE TABLE Employees1 (
    EmployeeID   INT PRIMARY KEY,
    Name         VARCHAR(50),
    Department   VARCHAR(50),
    Salary       DECIMAL(10,2),
    HireDate     DATE
);

INSERT INTO Employees1 (EmployeeID, Name, Department, Salary, HireDate) VALUES
(1, 'John Smith', 'IT', 60000.00, '2020-03-15'),
(2, 'Emma Johnson', 'HR', 50000.00, '2019-07-22'),
(3, 'Michael Brown', 'Finance', 75000.00, '2018-11-10'),
(4, 'Olivia Davis', 'Marketing', 55000.00, '2021-01-05'),
(5, 'William Wilson', 'IT', 62000.00, '2022-06-12'),
(6, 'Sophia Martinez', 'Finance', 77000.00, '2017-09-30'),
(7, 'James Anderson', 'HR', 52000.00, '2020-04-18'),
(8, 'Isabella Thomas', 'Marketing', 58000.00, '2019-08-25'),
(9, 'Benjamin Taylor', 'IT', 64000.00, '2021-11-17'),
(10, 'Charlotte Lee', 'Finance', 80000.00, '2016-05-09'),
(11, 'Ethan Harris', 'IT', 63000.00, '2023-02-14'),
(12, 'Mia Clark', 'HR', 53000.00, '2022-09-05'),
(13, 'Alexander Lewis', 'Finance', 78000.00, '2015-12-20'),
(14, 'Amelia Walker', 'Marketing', 57000.00, '2020-07-28'),
(15, 'Daniel Hall', 'IT', 61000.00, '2018-10-13'),
(16, 'Harper Allen', 'Finance', 79000.00, '2017-03-22'),
(17, 'Matthew Young', 'HR', 54000.00, '2021-06-30'),
(18, 'Ava King', 'Marketing', 56000.00, '2019-04-16'),
(19, 'Lucas Wright', 'IT', 65000.00, '2022-12-01'),
(20, 'Evelyn Scott', 'Finance', 81000.00, '2016-08-07');
with cte as (
select *,
rank() over( order by  Salary) as rnk from Employees1)
select * from cte
where rnk in(
select rnk from cte

group by rnk
having count(*) > 1);
--16
with cte as (
select * ,
rank() over( partition by Department order by Salary desc  )  as ranksalary from Employees1)
select * from cte
where ranksalary <= 2;

--17

with cte as (
select * ,
rank() over( partition by Department order by Salary  )  as ranksalary from Employees1)
select * from cte
where ranksalary = 1;

--18
select *,
sum(Salary) over(partition by Department ) as Runningtotal from Employees1

--19
select *,
Salary - avg(Salary) over(partition by Department ) as dif from Employees1
--20
 select *,
 avg(Salary) over ( order by HireDate  rows between 1 preceding and 1 following )
  from Employees1;
 --21
with cte as (
select * ,
rank() over(  order by HireDate desc )  as ranksalary from Employees1)

select  sum(salary)as Last3HiredSalarySum from cte
where ranksalary  <= 3;
