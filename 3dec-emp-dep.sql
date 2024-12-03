CREATE TABLE Department (
    dno INT PRIMARY KEY,        
    dname VARCHAR(50),          
    location VARCHAR(50)        
);
-- Create the Employee table
CREATE TABLE Employee (
    empno char(3) PRIMARY KEY,          
    empname VARCHAR(50),           
    jobtype VARCHAR(50),           
    manager INT,                     
    hiredate DATE,                  
    depno INT,                       
    commission DECIMAL(10, 2),       
    salary DECIMAL(10, 2),           
    FOREIGN KEY (depno) REFERENCES Department(dno)
);
select * from Department;
desc Employee
-- Insert values into the Department table
INSERT INTO Department (dno, dname, location) VALUES (1, 'HR', 'New York');
INSERT INTO Department (dno, dname, location) VALUES (2, 'Finance', 'Los Angeles');
INSERT INTO Department (dno, dname, location) VALUES (3, 'IT', 'San Francisco');
INSERT INTO Department (dno, dname, location) VALUES (4, 'Marketing', 'Chicago');
INSERT INTO Department (dno, dname, location) VALUES (5, 'Sales', 'Houston');
INSERT INTO Department (dno, dname, location) VALUES (6, 'Operations', 'Dallas');
INSERT INTO Department (dno, dname, location) VALUES (7, 'Logistics', 'Miami');
INSERT INTO Department (dno, dname, location) VALUES (8, 'R&D', 'Seattle');
INSERT INTO Department (dno, dname, location) VALUES (9, 'Customer Support', 'Denver');
INSERT INTO Department (dno, dname, location) VALUES (10, 'Legal', 'Boston');
INSERT INTO Department (dno, dname, location) VALUES (11, 'Procurement', 'Phoenix');
INSERT INTO Department (dno, dname, location) VALUES (12, 'Administration', 'Philadelphia');
INSERT INTO Department (dno, dname, location) VALUES (13, 'Training', 'San Diego');
INSERT INTO Department (dno, dname, location) VALUES (14, 'Quality Assurance', 'Austin');
INSERT INTO Department (dno, dname, location) VALUES (15, 'Public Relations', 'Las Vegas');

-- Insert values into the Employee table
INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('A', 'Alice Johnson', 'Developer', '103', TO_DATE('2021-01-15', 'YYYY-MM-DD'), 1, 500.00, 5000.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('B', 'Bob Smith', 'Analyst', '103', TO_DATE('2020-03-20', 'YYYY-MM-DD'), 1, 300.00, 4500.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('C', 'Charlie Brown', 'Manager', NULL, TO_DATE('2019-07-10', 'YYYY-MM-DD'), 2, NULL, 7000.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('D', 'Diana Prince', 'Developer', '103', TO_DATE('2021-11-30', 'YYYY-MM-DD'), 2, 400.00, 4800.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('E', 'Eve Adams', 'Tester', '103', TO_DATE('2022-04-25', 'YYYY-MM-DD'), 1, NULL, 3500.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('F', 'Frank Wright', 'Developer', '103', TO_DATE('2018-05-15', 'YYYY-MM-DD'), 2, 450.00, 5200.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('G', 'Grace Lee', 'HR', NULL, TO_DATE('2017-09-12', 'YYYY-MM-DD'), 3, NULL, 6000.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('H', 'Hank Hill', 'Developer', '103', TO_DATE('2016-12-05', 'YYYY-MM-DD'), 2, NULL, 4800.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('I', 'Ivy Clarke', 'Analyst', '103', TO_DATE('2020-10-22', 'YYYY-MM-DD'), 1, 200.00, 4200.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('J', 'Jack Ryan', 'Manager', NULL, TO_DATE('2015-08-15', 'YYYY-MM-DD'), 3, NULL, 8000.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('K', 'Karen White', 'Tester', '103', TO_DATE('2019-01-20', 'YYYY-MM-DD'), 1, NULL, 3700.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('L', 'Leo King', 'Developer', '103', TO_DATE('2018-06-30', 'YYYY-MM-DD'), 2, 350.00, 5300.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('M', 'Mona Lisa', 'HR', NULL, TO_DATE('2014-03-12', 'YYYY-MM-DD'), 3, NULL, 6200.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('N', 'Nathan Drake', 'Developer', '103', TO_DATE('2020-05-01', 'YYYY-MM-DD'), 2, 600.00, 4900.00);

INSERT INTO Employee (empno, empname, jobtype, manager, hiredate, depno, commission, salary) 
VALUES ('O', 'Olivia Wilde', 'Analyst', '103', TO_DATE('2021-08-17', 'YYYY-MM-DD'), 1, 250.00, 4600.00);

select * from Employee;
SELECT empname, jobtype, hiredate, empno 
FROM Employee;

SELECT DISTINCT jobtype 
FROM Employee;

SELECT empname, 
       salary, 
       commission,
       (salary + NVL(commission, 0)) AS total_earning
FROM Employee
WHERE (salary + NVL(commission, 0)) > 5000;


SELECT empname, depno
FROM Employee
WHERE depno IN (3)
ORDER BY empname;

SELECT empname || ', ' || jobtype AS empname_job
FROM Employee;


