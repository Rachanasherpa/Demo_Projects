-- Create Customers table
CREATE TABLE Customers (
    CustomerID int primary key ,
    CustomerName varchar(50),
    Region varchar(50)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID int primary key,
    CustomerID int,
    OrderDate date,
    Amount Decimal(10,2),
    Foreign key(CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert sample data
INSERT INTO Customers VALUES
(1, 'Alice', 'North'),
(2, 'Bob', 'South'),
(3, 'Charlie', 'East'),
(4, 'Diana', 'West');

INSERT INTO Orders VALUES
(101, 1, '2026-06-01', 500.00),
(102, 2, '2026-06-02', 1200.00),
(103, 1, '2026-06-05', 700.00),
(104, 3, '2026-06-07', 300.00),
(105, 4, '2026-06-10', 900.00);

-- Query 1: Total sales per region
Select c.Region, SUM(o.Amount) as TotalSales
from Customers c
Join Orders o on c.CustomerID = o.CustomerID
group by c.Region;

-- Query 2: Top customer by sales
select c.CustomerName, SUM(o.Amount) as TotalSpent
from Customers c
Join Orders o on c.CustomerID = o.CustomerID
group by c.CustomerName
order by TotalSpent desc
limit 1;

-- Query 3: Average order value per customer
select c.CustomerName, AVG(o.Amount) as AvgOrderValue
from Customers c
Join Orders o on c.CustomerID = o.CustomerID
group by c.CustomerName;
