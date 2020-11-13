/* 1 */
CREATE TABLE employee (
	Code VARCHAR(4),
	EName VARCHAR(10),
	Designation VARCHAR(30),
	Dob DATE,
	Salary INTEGER
);

/* 2 */
INSERT INTO employee VALUES
('e1', 'JOHN DOE', 'Chairman', '01-02-1989', 200000),
('e2', 'JANE DOE', 'CEO', '10-01-1988', 400000);

/* 3 */
SELECT * FROM employee;

/* 4 */
UPDATE employee
SET Salary = 350000
WHERE Code = 'e1';

SELECT * FROM employee;

/* 5 */
DELETE FROM employee
WHERE EName = 'JOHN DOE';

SELECT * FROM employee;
