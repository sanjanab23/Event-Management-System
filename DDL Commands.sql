CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


ALTER TABLE Employees ADD COLUMN Email VARCHAR(100);


DROP TABLE Employees;


CREATE INDEX idx_department ON Employees(Department);


DROP INDEX idx_department ON Employees;
