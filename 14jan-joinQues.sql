CREATE TABLE Employee3(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR2(100),
    DepartmentID INT
);
INSERT INTO Employee3 (EmployeeID, Name, DepartmentID) 
VALUES (1, 'Alice', 101);

INSERT INTO Employee3 (EmployeeID, Name, DepartmentID) 
VALUES (2, 'Bob', 102);

INSERT INTO Employee3 (EmployeeID, Name, DepartmentID) 
VALUES (3, 'Charlie', 103);
UPDATE Employee3
SET DepartmentID = NULL  
WHERE Name = 'Charlie'; 


INSERT INTO Employee3 (EmployeeID, Name, DepartmentID) 
VALUES (4, 'David', 104);

CREATE TABLE Department3 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR2(100)
);

INSERT INTO Department3 (DepartmentID, DepartmentName)
VALUES (101, 'HR');

INSERT INTO Department3 (DepartmentID, DepartmentName)
VALUES (102, 'IT');

INSERT INTO Department3 (DepartmentID, DepartmentName)
VALUES (103, 'Finance');

INSERT INTO Department3 (DepartmentID, DepartmentName)
VALUES (104, 'Marketing');

SELECT E.EmployeeID, E.Name AS EmployeeName, D.DepartmentName
FROM Employee3 E
JOIN Department3 D ON E.DepartmentID = D.DepartmentID;

SELECT E.EmployeeID, E.Name AS EmployeeName, D.DepartmentName
FROM Employee3 E
LEFT JOIN Department3 D ON E.DepartmentID = D.DepartmentID;


SELECT D.DepartmentID, D.DepartmentName, E.EmployeeID, E.Name AS EmployeeName
FROM Employee3 E
RIGHT JOIN Department3 D ON D.DepartmentID = E.DepartmentID;

SELECT E.EmployeeID, E.Name AS EmployeeName, D.DepartmentID, D.DepartmentName
FROM Employee3 E
FULL OUTER JOIN Department3 D ON E.DepartmentID = D.DepartmentID;

SELECT E1.EmployeeID AS Employee1_ID, E1.Name AS Employee1_Name, 
       E2.EmployeeID AS Employee2_ID, E2.Name AS Employee2_Name, 
       E1.DepartmentID
FROM Employee3 E1
JOIN Employee3 E2 ON E1.DepartmentID = E2.DepartmentID
WHERE E1.EmployeeID < E2.EmployeeID;
select * from Employee3
