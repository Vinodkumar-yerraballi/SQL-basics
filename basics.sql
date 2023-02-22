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

-- How to calculate the sum of the price of blue products
SELECT
  name,
  sum(price)
FROM
  PRODUCT
WHERE
  name LIKE "%Blue%"
-- we can use muliplie condition we get less then 1000 price in clothing
SELECT
  *
FROM
  PRODUCT
WHERE
  category = 'Clothing'
  AND price < 1000;

-- Using the multple condition to get the paricula values using logical operator
SELECT
  *
FROM
  PRODUCT
WHERE
  brand = 'Britannia'
  AND price < 20
  AND rating > 4.0;
-- Using anothe logical operation or which condition true they returns
SELECT
  *
FROM
  PRODUCT
WHERE
  name = 'Chocolate Cake'
  OR name = 'Strawberry Cake';

-- Multiple or logical operator we get the particuler brands
SELECT
  *
FROM
  PRODUCT
WHERE
  brand = 'Roadster'
  OR brand = 'Nike'
  OR brand = 'Puma';


-- Using the Not operator 
SELECT
  *
FROM
  PRODUCT
WHERE
  NOT brand LIKE "Denim";
-- APply the multplie condition to the database 
SELECT
  *
FROM
  PRODUCT
WHERE
  (
    brand = 'Redmi'
    AND rating > 4.0
  )
  OR brand = 'OnePlus';

-- To apply the multiple condition which return the not jeans itemn only returs clothing

SELECT
  *
FROM
  PRODUCT
WHERE
  category = 'Clothing'
  AND NOT name LIKE "%Jeans%";


SELECT
  name,
  category,
  sum(price)
FROM
  PRODUCT
WHERE
  name = "Blue Shirt"
  AND category = 'Clothing'
  AND NOT name LIKE "%Jeans%";

-- To satsifie the two condition and not return like shirts
SELECT
  name,
  category,
  brand
FROM
  PRODUCT
WHERE
  (
    brand = "Puma"
    OR brand = 'Denim'
  )
  AND NOT name LIKE "%Shirt%";