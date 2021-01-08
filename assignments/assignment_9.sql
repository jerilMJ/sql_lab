/* 1 */
CREATE TABLE employee (
    Code INTEGER PRIMARY KEY,
    Name VARCHAR(25),
    Dob DATE,
    Desgn VARCHAR(20),
    Salary INTEGER
);

INSERT INTO employee VALUES
    (123, 'John Doe', '1992-02-01', 'Manager', 200000),
    (246, 'Jane Dow', '1994-01-28', 'Secretary', 200000),
    (124, 'Markus', '1989-02-07', 'Clerk', 150000),
    (256, 'James', '1995-07-23', 'Clerk', 120000);

/* 2 */
SELECT Code, Name, Desgn FROM employee ORDER BY Name DESC;

/* 3 */
CREATE TABLE Deposit (
	Baccno INTEGER PRIMARY KEY,
	Branch_name VARCHAR(30),
	Amount INTEGER
);

INSERT INTO Deposit VALUES
	(123456, 'ABCDEFG Branch', 123300),
	(894772, 'XYZ Branch', 217943),
	(278533, 'PQRST Branch', 64312),
	(767565, 'QWERTY Branch', 21709),
	(327894, 'FJKSJ Branch', 310981),
	(122893, 'ABCDEFG Branch', 280129),
	(878072, 'XYZ Branch', 2174),
	(225432, 'PQRST Branch', 64321),
	(763225, 'QWERTY Branch', 212077),
	(326821, 'FJKSJ Branch', 310211);

/* 4 */
SELECT Branch_name, SUM(Amount) AS 'Total_in_branch' FROM Deposit GROUP BY Branch_name;
