/* a */
CREATE TABLE store (
         OrderNo INTEGER,
Code VARCHAR(5),
         Item VARCHAR(15),
         Quantity INTEGER,
         Price INTEGER,
         Discount INTEGER,
         Mrp INTEGER
);

/* b */
INSERT INTO store VALUES
        (122, 'T01', 'Marker', 50, 75, 15, 75),
    (123, 'T02', 'Laptop', 10, 20000, 1000, 20000),
    (124, 'T03', 'Smartphone', 20, 10000, 500, 10000);

/* c, d, e, f */
SELECT * FROM store;
SELECT Item, MOD(Quantity, 9) as Remainder FROM store;
SELECT Item, POWER(Quantity, 2) AS Sqr FROM store;
SELECT Item, ROUND(Quantity/7, 0) as Rounded FROM store;
