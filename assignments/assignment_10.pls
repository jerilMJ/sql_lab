CREATE TABLE languages 
( 
   lang_name    VARCHAR2 (20),
   popularity   INTEGER 
);

BEGIN
    INSERT INTO languages
        VALUES  ('C++', 8);
    INSERT INTO languages
        VALUES  ('Java', 8);
    INSERT INTO languages
        VALUES  ('Python', 9);
    INSERT INTO languages
        VALUES  ('Go', 9);
    INSERT INTO languages
        VALUES  ('Dart', 7);
    INSERT INTO languages
        VALUES  ('Javascript', 9);
    INSERT INTO languages
        VALUES  ('Pascal', 5);
    INSERT INTO languages
        VALUES  ('Fortran', 4);
    COMMIT;
END;

DECLARE 
   v_popularity   languages.popularity%TYPE;
BEGIN
    SELECT popularity
        INTO v_popularity
        FROM languages
        WHERE lang_name = 'C++';
    DBMS_OUTPUT.put_line('Number of rows processed: ' || sql%rowcount);
    DBMS_OUTPUT.put_line('Popularity rating of C++: ' || v_popularity);
END;
