-- How to slecet the specific value in the dataase using the where class
SELECT
  *
FROM
  PRODUCT
WHERE
  category == 'Food';

-- Checking the product is not equal to the product we use the query
SELECT
  *
FROM
  PRODUCT
WHERE
  category <> 'Food';
-- Just checking how many vaues greterthan 4.0 in the database
SELECT
  count(*)
FROM
  PRODUCT
WHERE
  rating > 4.0;
--  select the where class greater than the value we get
SELECT
  *
FROM
  PRODUCT
WHERE
  price <= 2000;

-- get harray potter names books
SELECT
  *
FROM
  PRODUCT
WHERE
  name LIKE 'Harry Potter%';
-- in the quary we get only get after Harry Potter_ names the out put like Harry Potters only this we get
SELECT
  *
FROM
  PRODUCT
WHERE
  name LIKE 'Harry Potter_';

SELECT
  *
FROM
  PRODUCT
WHERE
  name LIKE 'Blue%';


-- it returns to the the element with shirt given the values ex.white shirt
SELECT
  *
FROM
  PRODUCT
WHERE
  name LIKE '%Shirt';
-- Same way we gets output in the words contain the jeans
SELECT
  *
FROM
  PRODUCT
WHERE
  name LIKE '%Jeans%';