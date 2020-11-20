/* 1 */
CREATE TABLE employeeDetails (
    empId INTEGER NOT NULL,
    empName VARCHAR(20),
    dob DATE,
    PRIMARY KEY (empId)
);

CREATE TABLE employee (
    Id INTEGER,
    salary INTEGER,
    FOREIGN KEY (Id) REFERENCES employeeDetails(empId)
);

INSERT INTO employeeDetails VALUES
    (1, "JOHN DOE", "1991-02-21"),
    (2, "JANE DOE", "1992-08-09");

INSERT INTO employee VALUES
    (1, 200000),
    (2, 150000),
    (5, 10000),
    (3, 122200);

/* 2 */
SELECT * FROM employee WHERE Id IN 
(SELECT empId FROM employeeDetails);

/* 3 */
SELECT * FROM employee WHERE Id NOT IN 
(SELECT empId FROM employeeDetails);
