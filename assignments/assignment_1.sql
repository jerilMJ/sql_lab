/* a */
CREATE TABLE student (
	Sno INT,
	SName VARCHAR(255),
	Marks INT,
	Dept VARCHAR(255)
);

/* b */
ALTER TABLE student
ADD Age INT;

/* c */
ALTER TABLE student
ALTER COLUMN Dept VARCHAR(100) NOT NULL;

/* d */
ALTER TABLE student
DROP COLUMN Marks;

/* e */
EXEC sp_rename 'student', 'students';

/* f */
DELETE FROM students;

/* g */
DROP TABLE students;
