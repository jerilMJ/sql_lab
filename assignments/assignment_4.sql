/* 1 */
CREATE TABLE department (
	Code INTEGER PRIMARY KEY,
  	Title VARCHAR(20),
  	Dept_Name VARCHAR(20) UNIQUE,
  	Dept_Id VARCHAR(5),
  	Salary INTEGER,
  	CHECK (Salary > 20000)
);

/* 2 */
CREATE TABLE instructor (
	Name NOT NULL,
  	Code INTEGER,
  	Id VARCHAR(5) DEFAULT 'A1B2C',
  	FOREIGN KEY (Code) REFERENCES department(Code)
);
