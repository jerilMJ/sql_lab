/* PART 1 */
CREATE TABLE employee (
    Emp_no INTEGER PRIMARY KEY, 
    E_name VARCHAR(20),
    E_email VARCHAR(25),
    E_address VARCHAR(30),
    E_phone_no INTEGER,
    Dept_no INTEGER, 
    Dept_name VARCHAR(15),
    Job_id INTEGER, 
    Salary INTEGER
);

INSERT INTO employee VALUES
    (1, 'John', 'jj@g.com', 'Delhi', 1234, 2, 'Finance', 1, 10000);
INSERT INTO employee VALUES
    (2, 'Harris', 'hh@g.com', 'Panjab', 1235, 7, 'Sales', 3, 15000);
INSERT INTO employee VALUES
    (4, 'Jane', 'aj@g.com', 'Mumbai', 2346, 5, 'Software', 2, 12500);
INSERT INTO employee VALUES
    (12, 'James', 'hj@y.com', 'Haryana', 9876, 3, 'Marketing', 5, 11000);
INSERT INTO employee VALUES
    (24, 'Johnson', 'jh@abcd.com', 'Delhi', 12322, 7, 'Sales', 1, 10000);

/* 1 */
SELECT * FROM employee;

/* 2 */
UPDATE employee
SET E_address = 'Nagpur' 
WHERE Emp_no = 12;

/* 3 */
UPDATE employee
SET E_email = NULL
WHERE E_name = 'James';

/* 4 */
SELECT * FROM employee
WHERE Dept_name = 'Sales';

/* PART 2 */
CREATE TABLE sailors (
    s_id INTEGER PRIMARY KEY,
    s_name VARCHAR (20),
    rating INTEGER,
    age INTEGER
);

CREATE TABLE boats (
    b_id INTEGER PRIMARY KEY,
    b_name VARCHAR(20),
    color VARCHAR(10)
);

CREATE TABLE reserves (
    s_id INTEGER,
    b_id INTEGER,
    r_day DATE,
    FOREIGN KEY (s_id) REFERENCES sailors(s_id),
    FOREIGN KEY (b_id) REFERENCES boats(b_id)
);

INSERT INTO sailors
    VALUES  (123, 'Martin', 8, 28);
INSERT INTO sailors
    VALUES  (124, 'Prince', 8, 32);
INSERT INTO sailors
    VALUES  (223, 'Mark', 7, 23);
INSERT INTO sailors
    VALUES  (225, 'Loraine', 7, 26);
INSERT INTO sailors
    VALUES  (250, 'Jane', 9, 35);
INSERT INTO sailors
    VALUES  (251, 'Bob', 10, 40);
INSERT INTO sailors
    VALUES  (300, 'Harry', 5, 20);

INSERT INTO boats
    VALUES  (22, 'Streak', 'Red');
INSERT INTO boats
    VALUES  (25, 'Herring', 'Blue');
INSERT INTO boats
    VALUES  (33, 'Blitz', 'Red');
INSERT INTO boats
    VALUES  (40, 'Shark', 'Green');
INSERT INTO boats
    VALUES  (10, 'SS Anne', 'White');
INSERT INTO boats
    VALUES  (101, 'Journey', 'Purple');
INSERT INTO boats
    VALUES  (121, 'Navy', 'Blue');

INSERT INTO reserves
    VALUES  (124, 25, DATE '2008-12-01');
INSERT INTO reserves
    VALUES  (123, 33, DATE '2007-11-05');
INSERT INTO reserves
    VALUES  (250, 10, DATE '2000-05-05');
INSERT INTO reserves
    VALUES  (223, 40, DATE '1999-03-12');
INSERT INTO reserves
    VALUES  (225, 22, DATE '2009-10-27');
INSERT INTO reserves
    VALUES  (225, 101, DATE '2021-10-21');
INSERT INTO reserves
    VALUES  (250, 101, DATE '2021-09-29');
INSERT INTO reserves
    VALUES  (123, 101, DATE '2021-11-01');
INSERT INTO reserves
    VALUES  (251, 121, DATE '1999-09-25');
INSERT INTO reserves
    VALUES  (223, 10, DATE '2020-01-01');
INSERT INTO reserves
    VALUES  (124, 22, DATE '2020-01-01');


/* 1 */
SELECT reserves.s_id 
FROM reserves JOIN boats
ON reserves.b_id = boats.b_id
AND (boats.color = 'Red'
OR boats.color = 'Green');

/* 2 */
SELECT s_name, age FROM sailors
WHERE age IN (SELECT MIN(age) FROM sailors);

/* 3 */
SELECT COUNT(*) as Total
FROM (SELECT DISTINCT s_name FROM sailors);

/* 4 */
SELECT rating, AVG(age) AS avg_age FROM sailors
GROUP BY rating;

/* 5 */
SELECT rating, AVG(age) AS avg_age FROM sailors
WHERE rating IN (SELECT rating FROM sailors GROUP BY
rating HAVING COUNT(rating) > 1)
GROUP BY rating;
