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
SELECT sailors.*
FROM sailors INNER JOIN reserves
ON sailors.s_id = reserves.s_id AND reserves.b_id = 101;

/* 2 */
SELECT boats.b_name
FROM boats INNER JOIN reserves
ON boats.b_id = reserves.b_id AND reserves.s_id = 251;

/* 3 */
SELECT sailors.s_name
FROM sailors INNER JOIN reserves
ON sailors.s_id = reserves.s_id
INNER JOIN boats
ON boats.b_id = reserves.b_id AND boats.color = 'Red'
ORDER BY sailors.age;

/* 4 */
SELECT sailors.s_name
FROM sailors  JOIN reserves
ON sailors.s_id = reserves.s_id
GROUP BY sailors.s_name;

/* 5 */
SELECT sailors.s_id, sailors.s_name
FROM sailors INNER JOIN reserves r1
ON sailors.s_id = r1.s_id
INNER JOIN reserves r2
ON r1.r_day = r2.r_day AND r1.s_id != r2.s_id AND r1.b_id != r2.b_id;
