-- Create the Employees table
Create database if not exists employees;

use employees;
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INTEGER auto_increment PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    DepartmentID INTEGER,
    HireDate DATE
);

-- Create the Departments table
CREATE TABLE IF NOT EXISTS Departments (
    DepartmentID INTEGER auto_increment KEY,
    DepartmentName TEXT
);

-- Create the PerformanceReviews table
CREATE TABLE IF NOT EXISTS PerformanceReviews (
    ReviewID INTEGER auto_increment PRIMARY KEY,
    EmployeeID INTEGER,
    ReviewDate DATE,
    ReviewerName TEXT,
    ReviewContent TEXT
);

-- Create the PerformanceMetrics table
CREATE TABLE IF NOT EXISTS PerformanceMetrics (
    MetricID INTEGER PRIMARY KEY,
    EmployeeID INTEGER,
    MetricName TEXT,
    MetricValue REAL,
    MetricDate DATE
);

    
-- Sample data for Employees
-- Insert 20 records into the Employees table
INSERT INTO Employees (FirstName, LastName, Email, HireDate, DepartmentID)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '2020-01-15', 1),
    ('Jane', 'Smith', 'jane.smith@example.com', '2019-05-20', 2),
    ('Robert', 'Johnson', 'robert.j@example.com', '2021-03-10', 1),
    ('Sarah', 'Brown', 'sarah.brown@example.com', '2018-11-05', 2),
    ('Michael', 'Davis', 'michael.d@example.com', '2019-08-12', 1),
    ('Emily', 'Wilson', 'emily.w@example.com', '2020-02-28', 3),
    ('David', 'Anderson', 'david.a@example.com', '2017-12-03', 2),
    ('Jessica', 'Garcia', 'jessica.g@example.com', '2021-06-19', 1),
    ('William', 'Martinez', 'william.m@example.com', '2018-10-10', 2),
    ('Olivia', 'Taylor', 'olivia.t@example.com', '2019-04-05', 3),
    ('James', 'Hernandez', 'james.h@example.com', '2020-11-27', 1),
    ('Sophia', 'Lopez', 'sophia.l@example.com', '2019-09-15', 2),
    ('Benjamin', 'Young', 'benjamin.y@example.com', '2017-07-22', 1),
    ('Ava', 'Miller', 'ava.m@example.com', '2020-08-01', 3),
    ('Henry', 'Moore', 'henry.m@example.com', '2022-01-10', 1),
    ('Ella', 'Gonzalez', 'ella.g@example.com', '2018-06-14', 2),
    ('Liam', 'Lewis', 'liam.l@example.com', '2021-04-30', 1),
    ('Chloe', 'Adams', 'chloe.a@example.com', '2019-03-08', 2),
    ('Mason', 'Brown', 'mason.b@example.com', '2020-07-09', 3);


-- Sample data for Departments
INSERT INTO Departments (DepartmentName)
VALUES
    ('Sales'),
    ('Marketing'),
    ('Engineering'),
    ('Finance');

-- Sample data for PerformanceReviews
-- Insert 20 records into the PerformanceReviews table
INSERT INTO PerformanceReviews (EmployeeID, ReviewDate, Rating, Comments)
VALUES
    (1, '2022-04-25', 4, 'Great performance this quarter.'),
    (2, '2022-03-15', 5, 'Consistently outstanding work.'),
    (3, '2022-05-10', 3, 'Room for improvement.'),
    (4, '2022-02-20', 4, 'Good progress.'),
    (5, '2022-06-30', 2, 'Needs improvement in sales quota.'),
    (6, '2022-08-12', 4, 'Consistently meets targets.'),
    (7, '2022-07-05', 3, 'Good communication skills but can improve time management.'),
    (8, '2022-09-18', 5, 'Exceptional teamwork and leadership.'),
    (9, '2022-11-22', 2, 'Struggles with meeting project deadlines.'),
    (10, '2022-10-09', 4, 'Adapts well to new challenges.'),
    (11, '2022-12-14', 3, 'Shows potential but needs more training.'),
    (12, '2022-01-30', 5, 'Exceeds expectations in client relationships.'),
    (13, '2022-03-28', 4, 'Consistently produces high-quality work.'),
    (14, '2022-05-05', 2, 'Needs improvement in customer service skills.'),
    (15, '2022-08-03', 5, 'Outstanding performance in project management.'),
    (16, '2022-09-19', 3, 'Good problem-solving skills but can improve attention to detail.'),
    (17, '2022-11-07', 4, 'Adopts new technologies quickly.'),
    (18, '2022-12-22', 2, 'Needs to improve time management and punctuality.'),
    (19, '2022-02-18', 5, 'Remarkable leadership in the department.'),
    (20, '2022-04-07', 3, 'Average performance in recent months.');


-- Sample data for PerformanceMetrics
INSERT INTO PerformanceMetrics (MetricID,EmployeeID, MetricName, MetricValue, MetricDate)
VALUES
    (101,1, 'SalesRevenue', 135000.00, '2022-03-20'),
    (102,2, 'MarketingCampaignROI', 3.45, '2022-03-15'),
    (103,3, 'EngineeringProjectCompletionRate', 98.5, '2022-03-25'),
    (104,4, 'SalesRevenue', 127000.00, '2022-03-18'),
    (105,5, 'ProjectManagementEfficiency', 92.0, '2022-03-22'),
    (106,6, 'ProjectCompletionRate', 96.2, '2022-03-28'),
    (107,7, 'SalesRevenue', 142000.00, '2022-03-30'),
    (108,8, 'SalesTargetAchievement', 105.0, '2022-03-29'),
    (109,9, 'ProjectContributions', 87.5, '2022-03-23'),
    (110,10, 'SalesRevenue', 130000.00, '2022-03-27');

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM performancemetrics;
SELECT * FROM performancereviews;