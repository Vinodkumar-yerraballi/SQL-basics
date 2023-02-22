-- Using the multplie condition in or we use in function we use the result
SELECT
  *
FROM
  PRODUCT
WHERE
  brand IN ("Denim", "Puma", "Apple", "Britannia");

-- The give the range between 500 to 1000 range
SELECT
  *
FROM
  PRODUCT
WHERE
  price BETWEEN 500
  AND 1000;

-- We get error using this type of query
SELECT
  *
FROM
  PRODUCT
WHERE
  price BETWEEN 500
  AND 100;

-- We get the information of the price ascending order
SELECT
  *
FROM
  PRODUCT
ORDER BY
  price ASC;
-- We get the information desceding order
SELECT
  *
FROM
  PRODUCT
ORDER BY
  price DESC;
-- We use two columns using order by rate
SELECT
  *
FROM
  PRODUCT
ORDER BY
  price ASC,
  rating DESC;

-- we get the top five rows with rating descedinge order
SELECT
  *
FROM
  PRODUCT
ORDER BY
  rating DESC
LIMIT
  5 OFFSET 0;

-- same as above by default offset 0
SELECT
  *
FROM
  PRODUCT
ORDER BY
  rating DESC
LIMIT 5

-- We get the top 5 rows after the top five rows
SELECT
  *
FROM
  PRODUCT
ORDER BY
  rating DESC
LIMIT
  5 OFFSET 5;
-- single columns to value with descending order
SELECT
  brand
FROM
  PRODUCT
ORDER BY
  brand DESC;

-- get unique value in the dataset
SELECT
  DISTINCT (brand)
FROM
  PRODUCT
ORDER BY
  brand;

-- distinct the multple columns in the database
SELECT
  DISTINCT category,
  brand
FROM
  PRODUCT;