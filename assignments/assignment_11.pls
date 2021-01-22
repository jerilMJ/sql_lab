CREATE TABLE emp (
    e_name VARCHAR2 (20),
    code INTEGER PRIMARY KEY
);

BEGIN
    INSERT INTO emp
        VALUES ('John Doe', 123);
    INSERT INTO emp
        VALUES ('Jane Doe', 124);
    INSERT INTO emp
        VALUES ('Markus', 125);
    INSERT INTO emp
        VALUES ('Ethan Nestor', 126);
    COMMIT;
END;

CREATE OR REPLACE TRIGGER emp_restrict
    BEFORE UPDATE
    ON emp
DECLARE
    v_time NUMBER;
BEGIN
    v_time := EXTRACT(HOUR FROM CURRENT_TIMESTAMP);
    IF v_time BETWEEN 17 AND 24 THEN
        raise_application_error(-20100, 'Cannot update during 5pm to 12am');
    END IF;
END;
    
