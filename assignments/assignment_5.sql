/* a */
CREATE TABLE class (
    id INTEGER PRIMARY KEY,
      name VARCHAR(25)
);

/* b */
INSERT INTO class VALUES
        (123, "JOHN DOE"),
(234, "JANE DOE"),
    (345, "MCMILLAN");

/* c */
SELECT * FROM class;

/* d */
INSERT INTO class VALUES
    (777, "LUCKY");
COMMIT;

SAVEPOINT test;
INSERT INTO class VALUES
    (999, "UNKNOWN");
    
SELECT * FROM class;

ROLLBACK TO test;
SELECT * FROM class;
