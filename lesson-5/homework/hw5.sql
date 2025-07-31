create database lesson5
use lesson5

 --Write a query that uses an alias to rename the ProductName column as Name in the Products table.
 CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    StockQuantity INT
);
INSERT INTO Products VALUES
(1, 'Laptop', 1200.00, 'Electronics', 30),
(2, 'Smartphone', 800.00, 'Electronics', 50),
(3, 'Tablet', 400.00, 'Electronics', 40),
(4, 'Monitor', 250.00, 'Electronics', 60),
(5, 'Keyboard', 50.00, 'Accessories', 100),
(6, 'Mouse', 30.00, 'Accessories', 120),
(7, 'Chair', 150.00, 'Furniture', 80),
(8, 'Desk', 200.00, 'Furniture', 75),
(9, 'Pen', 5.00, 'Stationery', 300);
select * from Products
select ProductName as Name from products;
 --Write a query that uses an alias to rename the Customers table as Client for easier reference.
 CREATE TABLE customers (
    customerID INT PRIMARY KEY,
    customerName VARCHAR(100),
   
    department VARCHAR(50),
    StockQuantity INT)
	select * from customers as client;
	 --Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted.
	 CREATE TABLE Products_Discounted (
    ProductID INT primary key ,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    StockQuantity INT
);

INSERT INTO Products_Discounted VALUES
(1, 'Gaming Laptop', 950.00, 'Electronics', 25),

(2, 'Smartphone', 750.00, 'Electronics', 45),
(3, 'Convertible Tablet', 350.00, 'Electronics', 35),
(4, 'Ultra-Wide Monitor', 220.00, 'Electronics', 55),
(5, 'Mechanical Keyboard', 45.00, 'Accessories', 90),
(6, 'Wireless Mouse', 25.00, 'Accessories', 110),

(7, 'Chair', 130.00, 'Furniture', 75),
(8, 'Standing Desk', 190.00, 'Furniture', 70),
(9, 'Luxury Pen', 4.50, 'Stationery', 280),
(10, 'Leather Notebook', 9.00, 'Stationery', 480),
(11, 'Laser Printer', 160.00, 'Electronics', 20),
(12, 'DSLR Camera', 480.00, 'Electronics', 35),
(13, 'LED Flashlight', 20.00, 'Tools', 190),
(14, 'Designer Shirt', 28.00, 'Clothing', 140),

(15, 'Jeans', 40.00, 'Clothing', 110),
(16, 'Winter Jacket', 70.00, 'Clothing', 60),
(17, 'Running Shoes', 55.00, 'Clothing', 90),
(18, 'Wool Hat', 18.00, 'Accessories', 45),
(19, 'Thermal Socks', 9.00, 'Clothing', 180),

(20, 'T-Shirt', 22.00, 'Clothing', 140),
(21, 'Desk Lamp', 55.00, 'Furniture', 35),
(22, 'Marble Coffee Table', 95.00, 'Furniture', 30),
(23, 'Hardcover Book', 13.00, 'Stationery', 230),
(24, 'Persian Rug', 85.00, 'Furniture', 50),
(25, 'Glass Cup', 4.50, 'Accessories', 470),
(26, 'Leather Bag', 22.00, 'Accessories', 270),
(27, 'Recliner Couch', 420.00, 'Furniture', 10),
(28, 'Smart Fridge', 570.00, 'Electronics', 15),
(29, 'Gas Stove', 460.00, 'Electronics', 12),
(30, 'Compact Microwave', 100.00, 'Electronics', 20),
(31, 'Split Air Conditioner', 320.00, 'Electronics', 8),
(32, 'Front-Load Washing Machine', 410.00, 'Electronics', 12),
(33, 'High-Efficiency Dryer', 370.00, 'Electronics', 8),
(34, 'Ionic Hair Dryer', 27.00, 'Accessories', 90),
(35, 'Steam Iron', 38.00, 'Electronics', 45),
(36, 'Espresso Maker', 45.00, 'Electronics', 55),
(37, 'Portable Blender', 32.00, 'Electronics', 35),
(38, 'Cold Press Juicer', 50.00, 'Electronics', 28),
(39, 'Smart Toaster', 36.00, 'Electronics', 65),
(40, 'Compact Dishwasher', 470.00, 'Electronics', 18);
select productname from products
union
select productname from Products_Discounted

 --Write a query to find the intersection of Products and Products_Discounted tables using INTERSECT.
 select * from Products
 intersect 
 select * from Products_Discounted

 select productID,productName,price,category,stockquantity from products
 intersect 
 select productID,productName,price,category,stockquantity from Products_Discounted

  --Write a query to select distinct customer names and their corresponding Country using SELECT DISTINCT.
 CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(50),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, PostalCode, Country) VALUES
(1, 'John', 'Doe', 'johndoe@gmail.com', '555-1234', '123 Elm St', 'New York', 'NY', '10001', 'USA'),
(2, 'Jane', 'Smith', 'janesmith@yahoo.com', '555-2345', '456 Oak St', 'Los Angeles', 'CA', '90001', 'USA'),
(3, 'Alice', 'Johnson', 'alicej@outlook.com', '555-3456', '789 Pine St', 'Toronto', 'ON', 'M4B1B3', 'Canada'),
(4, 'Bob', 'Brown', 'bobbrown@hotmail.com', '555-4567', '101 Maple St', 'Vancouver', 'BC', 'V5K0A1', 'Canada'),
(5, 'Charlie', 'Davis', 'charliedavis@gmail.com', '555-5678', '202 Birch St', 'Sydney', 'NSW', '2000', 'Australia'),
(6, 'David', 'Martinez', 'davidm@live.com', '555-6789', '303 Cedar St', 'Melbourne', 'VIC', '3000', 'Australia'),
(7, 'Emily', 'Garcia', 'emilyg@yahoo.com', '555-7890', '404 Redwood St', 'London', 'England', 'SW1A 1AA', 'UK'),
(8, 'Frank', 'Hernandez', 'frankh@outlook.com', '555-8901', '505 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'),
(9, 'Grace', 'Lopez', 'gracel@gmail.com', '555-9012', '606 Aspen St', 'Birmingham', 'England', 'B1 1AA', 'UK'),
(10, 'Helen', 'Gonzalez', 'heleng@yahoo.com', '555-0123', '707 Fir St', 'Berlin', 'BE', '10117', 'Germany'),
(11, 'Irene', 'Perez', 'irenep@hotmail.com', '555-1234', '808 Maple Ave', 'Munich', 'BY', '80331', 'Germany'),
(12, 'Jack', 'Wilson', 'jackw@live.com', '555-2345', '909 Oak Ave', 'Hamburg', 'HH', '20095', 'Germany'),
(13, 'Kim', 'Anderson', 'kima@gmail.com', '555-3456', '111 Pine Ave', 'Paris', '�le-de-France', '75001', 'France'),
(14, 'Liam', 'Thomas', 'liamt@yahoo.com', '555-4567', '222 Cedar Ave', 'Lyon', 'Auvergne-Rh�ne-Alpes', '69001', 'France'),
(15, 'Megan', 'Taylor', 'megant@outlook.com', '555-5678', '333 Redwood Ave', 'Marseille', 'Provence-Alpes-C�te Azur', '13001', 'France'),
(16, 'Nathan', 'Moore', 'nathanm@hotmail.com', '555-6789', '444 Willow Ave', 'Tokyo', 'TK', '100-0001', 'Japan'),

(29, 'Anna', 'Roberts', 'annar@hotmail.com', '555-9012', '1717 Willow Dr', 'Sydney', 'NSW', '2000', 'Australia'),
(30, 'Ben', 'King', 'benk@live.com', '555-0123', '1818 Birch Dr', 'Melbourne', 'VIC', '3000', 'Australia'),
(31, 'Chloe', 'Green', 'chloeg@gmail.com', '555-1234', '1919 Oak Dr', 'Toronto', 'ON', 'M4B1B3', 'Canada'),
(32, 'Daniel', 'Evans', 'daniele@yahoo.com', '555-2345', '2020 Cedar Dr', 'Vancouver', 'BC', 'V5K0A1', 'Canada'),
(33, 'Ella', 'Collins', 'ellac@outlook.com', '555-3456', '2121 Redwood Dr', 'London', 'England', 'SW1A 1AA', 'UK'),
(34, 'Finn', 'Morris', 'finnm@hotmail.com', '555-4567', '2222 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'),
(35, 'Grace', 'Lee', 'gracel@live.com', '555-5678', '2323 Birch St', 'Berlin', 'BE', '10117', 'Germany'),
(36, 'Holly', 'Martinez', 'hollym@gmail.com', '555-6789', '2424 Oak St', 'Munich', 'BY', '80331', 'Germany'),
(37, 'Ian', 'Robinson', 'ianr@yahoo.com', '555-7890', '2525 Cedar St', 'Warsaw', 'WA', '00-001', 'Poland'),
(38, 'Jasmine', 'Walker', 'jasminew@outlook.com', '555-8901', '2626 Redwood St', 'Lisbon', 'LI', '1100-148', 'Portugal'),
(39, 'Kyle', 'Young', 'kyley@hotmail.com', '555-9012', '2727 Willow St', 'Pittsburgh', 'PA', '15201','USA'),
(40, 'Liam', 'Harris', 'liamh@live.com', '555-0123', '2828 Birch St', 'Richmond', 'VA', '23220','USA');
 select distinct country from customers;

 --Write a query that uses CASE to create a conditional column that displays 'High' if Price > 1000, and 'Low' if Price <= 1000 from Products table.
 select 
 ProductName,
 Price,
 case 
 when price > 1000 then 'high'
 else 'low'
 end as category_price
 from Products ;


 --Use IIF to create a column that shows 'Yes' if Stock > 100, and 'No' otherwise (Products_Discounted table, StockQuantity column).
 select 
 productName,
 StockQuantity,
 IIF (StockQuantity  > 100, 'Yes' ,'No') as stock_category
 from Products_Discounted;
  --Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted tables.
  select ProductName from Products
  union 
  select ProductName from Products_Discounted

  --9. Write a query that returns the difference between the Products and Products_Discounted tables using EXCEPT.
  select ProductName from Products
  EXCEPT
  select ProductName from Products_Discounted

   select ProductName from Products_Discounted
   EXCEPT
    select ProductName from Products

	--Create a conditional column using IIF that shows 'Expensive' if the Price is greater than 1000, and 'Affordable' if less, from Products table.
	SELECT 
	PRICE ,
IIF( price  > 1000 ,'expensive','affordable') as pricecayegory
from Products

--Write a query to find employees in the Employees table who have either Age < 25 or Salary > 60000.
select 
age,
salary,
from employees
where age < 25 or salary > 60000;
--12. Update the salary of an employee based on their department, increase by 10% if they work in 'HR' or EmployeeID = 5


 --Use INTERSECT to show products that are common between Products and Products_Discounted tables.
 select * from Products
 intersect
 select * from Products_Discounted

 --Write a query that uses CASE to assign 'Top Tier' if SaleAmount > 500, 'Mid Tier' if SaleAmount BETWEEN 200 AND 500, and 'Low Tier' otherwise. (From Sales table)
 CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES
(1, 1, 1, '2023-01-01', 150.00),
(2, 2, 2, '2023-01-02', 200.00),
(3, 3, 3, '2023-01-03', 250.00),
(4, 4, 4, '2023-01-04', 300.00),
(5, 5, 5, '2023-01-05', 350.00),
(6, 6, 6, '2023-01-06', 400.00),
(7, 7, 7, '2023-01-07', 450.00),
(8, 8, 8, '2023-01-08', 500.00),
(9, 9, 9, '2023-01-09', 550.00),
(10, 10, 10, '2023-01-10', 600.00),
(11, 1, 1, '2023-01-11', 150.00),
(12, 2, 2, '2023-01-12', 200.00),
(13, 3, 3, '2023-01-13', 250.00),
(14, 4, 4, '2023-01-14', 300.00),
(15, 5, 5, '2023-01-15', 350.00),
(16, 6, 6, '2023-01-16', 400.00),
(17, 7, 7, '2023-01-17', 450.00),
(18, 8, 8, '2023-01-18', 500.00),
(19, 9, 9, '2023-01-19', 550.00),
(20, 10, 10, '2023-01-20', 600.00),
(21, 1, 2, '2023-01-21', 150.00),
(22, 2, 3, '2023-01-22', 200.00),
(23, 3, 4, '2023-01-23', 250.00),
(24, 4, 5, '2023-01-24', 300.00),
(25, 5, 6, '2023-01-25', 350.00),
(26, 6, 7, '2023-01-26', 400.00),
(27, 7, 8, '2023-01-27', 450.00),
(28, 8, 9, '2023-01-28', 500.00),
(29, 9, 10, '2023-01-29', 550.00),
(30, 10, 1, '2023-01-30', 600.00),
(31, 1, 2, '2023-02-01', 150.00),
(32, 2, 3, '2023-02-02', 200.00),
(33, 3, 4, '2023-02-03', 250.00),
(34, 4, 5, '2023-02-04', 300.00),
(35, 5, 6, '2023-02-05', 350.00),
(36, 6, 7, '2023-02-06', 400.00),
(37, 7, 8, '2023-02-07', 450.00),
(38, 8, 9, '2023-02-08', 500.00),
(39, 9, 10, '2023-02-09', 550.00),
(40, 10, 1, '2023-02-10', 600.00);
select ProductID,SaleAmount,
case 
when  SaleAmount > 500 then 'Top Tier'
when  SaleAmount between  200 and  500 then 'mid tier'
else 'low tier'
end as salaes_result
from Sales;
--14. Use EXCEPT to find customers' ID who have placed orders but do not have a corresponding record in the Sales table.
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Orders VALUES
(1, 1, 2, '2023-05-14', 1, 800.00),
(2, 2, 3, '2024-09-07', 2, 800.00),
(3, 3, 4, '2022-11-22', 1, 250.00),
(4, 4, 5, '2021-03-30', 3, 150.00),
(5, 5, 6, '2025-07-19', 1, 30.00),
(6, 6, 7, '2022-08-25', 2, 300.00),
(7, 7, 8, '2024-06-10', 1, 200.00),
(8, 8, 9, '2021-12-04', 4, 40.00),
(9, 9, 10, '2023-02-18', 1, 10.00),
(10, 10, 11, '2025-09-27', 2, 360.00),
(11, 11, 12, '2023-10-11', 1, 500.00),
(12, 12, 13, '2024-04-03', 1, 25.00),
(13, 13, 14, '2022-07-29', 2, 60.00),
(14, 14, 15, '2021-01-22', 3, 135.00),
(15, 15, 16, '2025-11-15', 1, 80.00),
(16, 16, 17, '2022-10-08', 1, 60.00),
(17, 17, 18, '2023-06-21', 2, 40.00),
(18, 18, 19, '2021-09-13', 5, 50.00),
(19, 19, 20, '2025-03-05', 2, 50.00),
(20, 20, 21, '2024-08-14', 1, 60.00),
(21, 21, 22, '2022-12-01', 1, 100.00),
(22, 22, 23, '2023-09-09', 1, 15.00),
(23, 23, 24, '2021-07-18', 2, 180.00),
(24, 24, 25, '2025-06-23', 3, 15.00),
(25, 25, 26, '2023-03-12', 4, 100.00),
(26, 26, 27, '2022-04-07', 1, 450.00),
(27, 27, 28, '2024-11-30', 1, 600.00),
(28, 28, 29, '2021-02-25', 1, 500.00),
(29, 29, 30, '2025-05-28', 2, 240.00),
(30, 30, 31, '2023-08-20', 1, 350.00),
(31, 31, 32, '2022-01-17', 1, 450.00),
(32, 32, 33, '2025-09-10', 1, 40.00),
(33, 33, 34, '2021-04-04', 2, 100.00),
(34, 34, 35, '2024-07-15', 3, 120.00),
(35, 35, 36, '2022-10-31', 1, 60.00),
(36, 36, 37, '2023-12-22', 1, 35.00),
(37, 37, 38, '2021-06-06', 2, 110.00),
(38, 38, 39, '2025-02-01', 1, 40.00),
(39, 39, 40, '2023-11-26', 3, 120.00),
(40, 40, 1, '2024-03-09', 1, 1200.00);


SELECT CustomerID FROM Orders
EXCEPT
SELECT CustomerID FROM Sales;


 --Write a query that uses a CASE statement to determine the discount percentage based on the quantity purchased. Use orders table. Result set should show  customerid, quantity and discount percentage. The discount should be applied as follows:
 --       1 item: 3% 
 --       Between 1 and 3 items : 5% 
 --       Otherwise: 7% 
 select 
    CustomerID ,
    Quantity,
    TotalAmount,
	case
	when Quantity =1 then  TotalAmount * 0.03
	when Quantity between 2 and 3 then  TotalAmount * 0.05
	else TotalAmount * 0.07
end	as quantity_result
from Orders;
