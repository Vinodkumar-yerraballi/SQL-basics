-- create the new table using below comments
CREATE TABLE student_mark(
    stuend_name VARCHAR(250),
    Mathematics int,
    science int,
    english int,
    pass_percentage float,
    other text



);
-- Checking the table informaition using the below
PRAGMA table_info(student_mark)


-- insert the values in the TABLE
INSERT INTO
  PRODUCT(id, name, price, brand, category)
VALUES
  (6, 'car', 2500000, 'Ford', 'Automobile')
-- Select the only specific columns in the database
  SELECT
  name,
  price,
  brand
FROM
  PRODUCT

-- How to insert multplie values in the dataset
  INSERT INTO
  PLAYER(name, age, score)
VALUES
  ('virat', 30, 120),
  ('dhoni', 32, 120),
  ('Sachin', 35, 158)

--  How to use Where condition
  SELECT
  *
FROM
  PLAYER
WHERE
  name = 'Ram'
-- update the entire the colums score we use the this quary
  UPDATE
  PLAYER
SET
  score = 0;

-- update the value for the particulaer row values
  UPDATE
  PLAYER
SET
  score = 150
WHERE
  name = 'virat';
--  delete from the particuler vaule in the database
  DELETE FROM
  PLAYER
WHERE
  age = 35;

SELECT
  *
FROM
  PLAYER;
--   if deleate the all the row
DELETE from TABLE
-- it's deletd the entire table

DROP TABLE PLAYER;
-- Add the new column in the database use the query
ALTER TABLE
  PLAYER
ADD
  jerrsy_num int;

-- Rename the columns from the database
ALTER TABLE
PLAYER RENAME COLUMN 'jerrsy_num' TO 'jer_num'