/* 1 */
CREATE TABLE employee (
    Code INTEGER PRIMARY KEY,
    Name VARCHAR(25),
    Dob DATE,
    Desgn VARCHAR(20),
    Salary INTEGER
);

/* 2 */
INSERT INTO employee VALUES
    (123, 'John Doe', '1992-02-01', 'Manager', 200000),
    (246, 'Jane Dow', '1994-01-28', 'Secretary', 200000),
    (124, 'Markus', '1989-02-07', 'Clerk', 150000),
    (256, 'James', '1995-07-23', 'Clerk', 120000);

/* 3 */
SELECT SUM(Salary) FROM employee WHERE Desgn='Clerk';

/* 4 */
SELECT MAX(Salary) AS 'Max_Salary' FROM employee;

/* 5 */
SELECT AVG(Salary) AS 'Avg_Salary' FROM employee;

/* 6 */
SELECT MIN(Salary) AS 'Min_Salary' FROM employee;

/* 7 */
SELECT COUNT(*) AS 'Total_Emp' FROM employee;
