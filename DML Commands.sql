INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary) VALUES (1, 'John', 'Doe', 'IT', 50000);

UPDATE Employees SET Salary = 55000 WHERE EmployeeID = 1;

DELETE FROM Employees WHERE EmployeeID = 1;

SELECT * FROM Employees WHERE Department = 'IT';

TRUNCATE TABLE Employees;
