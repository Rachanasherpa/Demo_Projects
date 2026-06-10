

-- Create a simple employee table

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- Insert sample data

INSERT INTO Employees VALUES
(1, 'Alice', 'Johnson', 'HR', 50000),
(2, 'Bob', 'Smith', 'IT', 60000),
(3, 'Charlie', 'Brown', 'Finance', 55000),
(4, 'Diana', 'Prince', 'IT', 70000);

-- Query: Find employees in IT earning more than 55000 

SELECT FirstName, LastName, Salary
FROM Employees
WHERE Department = 'IT' AND Salary > 55000;
