/* 1 */
CREATE TABLE store (
  orderNo INTEGER PRIMARY KEY,
  code VARCHAR(5),
  item VARCHAR(20),
  quantity INTEGER,
  price INTEGER,
  discount INTGER,
  mrp INTEGER
);

/* 2 */
INSERT INTO store VALUES
	(1125, "S01", "PEN", 100, 20, 10, 20),
  (1126, "S02", "MARKER", 50, 40, 15, 40);

/* 3 */
SELECT * FROM store;

/* 4 */
CREATE VIEW store_view AS
SELECT item as item_name, quantity
FROM store;
SELECT * FROM store_view;

/* 5 */
INSERT INTO store VALUES
	(1127, "S03", "WHITEBOARD", 10, 1000, 150, 1000);

SELECT * FROM store;
SELECT * FROM store_view;

/* 6 */
DROP VIEW store_view;
