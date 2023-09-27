CREATE TABLE IF NOT EXISTS Employee (
        EmployeeID INTEGER PRIMARY KEY,
        FirstName TEXT,
        LastName TEXT,
        Department TEXT,
        HireDate DATE
    );
    
    
    
CREATE TABLE IF NOT EXISTS PerformanceMetrics (
        MetricID INTEGER PRIMARY KEY,
        EmployeeID INTEGER,
        MetricDate DATE,
        SalesRevenue REAL,
        ProjectCompletionRate REAL,
        FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
    );
    
    
INSERT INTO Employee (FirstName, LastName, Department, HireDate) 
VALUES ('John', 'Doe', 'Sales', '2022-01-15');

SELECT Departmentname,count(*) as Employee_count
from Employees
INNER JOIN departments
USING(DepartmentID)
GROUP BY Departmentname;

Select * from
employees 
inner join departments using (DepartmentID)
inner join performancemetrics using (EmployeeID)
inner join performancereviews using (EmployeeID);

SELECT EmployeeID, FirstName, LastName FROM Employees WHERE DepartmentID=4;