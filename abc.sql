SELECT * 
FROM TABLE_NAM
-- USING THE WHERE CLASS AND ORDER BY FUNCTION
SELECT * 
FROM CUSTOMERS
WHERE FIRST_NAME = 'VINOD'
ORDER BY PRICE
-- HOW TO SELECT THE COLUMNS IN THE DATA
SELECT COLUMN_1
FROM TABLE
-- HOW TO ADD THE MULTIPULE COLUMNS IN THE DATA
SELECT COLUMN_1,COLUMN_2,COLUMN_3
FROM TABLE
-- WE ADD THE ARITHEMTICS OPERATIONS
SELECT COLUMN_1,COLUMN_2,COLUMN_3 + 10 *100
--OR
SELECT COLUMN_1,COLUMN_2,(COLUMN_3+10)*100
FROM TABLE
-- WE CAN ADD THE NEW COLUMN WITH AIRHTEMETIC OPERATAION
SELECT COLUMN_1,COLUMN_2,COLUMN_3, (COLUMN+20)*50 AS 'NEWCOLUMN'
FROM TABLE
-- REMOVE THE DUPLICATE VALUES
SELECT DISTINCT COLUMN_1
FROM TABLE
-- ARITHEMETIC FUNCTION
SELECT COLUMN_1,COLUMN_2,COLUMN_3*35
FROM TABLE
-- WHERE CLASS
SELECT * FROM TABLE 
WHERE AGE < 18
-- FOR STRING USING THE WHERE CLASS
SELECT * FROM TABLE
WHERE BIRTHDATA < '1990-01-2000'

-- HOW TO WRITE AND FUNCTION
SELECT * FROM TABLE
WHERE BIRTHDATA < '1990-01-2000' AND POINTS<100
-- HOW TO USE OR FUNCTION
SELECT * FROM TABLE
WHERE BIRTHDATA < '1990-01-2000' OR POINTS<100 AND STATE= 'NEWYORK'
-- WHERE NOT
SELECT * FROM TABLE
WHERE NOT( BIRTHDATA < '1990-01-2000' AND POINTS<100)

SELECT * FROM TABLE
WHERE OREDER_ID =6 AND UNIT_PRICE * QUANTITY >10
SELECT * FROM TABLE
WHERE QUANTITY_PRICE (49,65,88)
-- BITWEEN OPERATORS
SELECT * 
FROM CUSTOMER 
WHERE POINST BETWEEN 1000 AND 300\
SELECT * 
FROM CUSTOMER
WHERE BITHERTHDATE BETWEEN '1990-01-2029' AND '2022-020-34'
-- WE GET THE NAME START LETEER
SELECT * 
FROM CUSTOMER
WHERE LAST_NAME LIKE 'B%'
-- IT'S RETURN THE NAME BEGANS WITH B
SELECT * 
FROM CUSTOMER
WHERE LAST_NAME LIKE '%TRAIL%'
-- MIDDLE NAME WITH TRAIL
SELECT * 
FROM CUSTOMER
WHERE LAST_NAME LIKE '%b'
-- LAST LETTER ENDS WITH B LETTER
-- REGEXP
SELECT * 
FROM CUSTOMER
WHERE LAST_NAME REGEXP 'DEEP'
-- IT RETURN THE LAST NAME WILL BE DEEP
SELECT * 
FROM CUSTOMER
WHERE LAST_NAME REGEXP 'DEEP/JHON/MARK'
SELECT * 
FROM CUSTOMER
WHERE LAST_NAME LIKE '[A-F]E'
SELECT * 
FROM CUSTOMER
WHERE LAST_NAME LIKE 'EYL/ONS'
-- NULL VALUES
SELECT * 
FROM CUSTOME
WHERE LAST_NAME IS NULL
--  ----- ORDER BY -----------------------------------------------------
SELECT * 
FROM TABLE
ORDER BY STATE, COLUMN_1
-- DESCENDIN ORDER
SELECT * 
FROM TABLE
ORDER BY STATE DESC, FIRST_NAME
SELECT COLUMN_1,COLUMN_2,COLUMN_3
* FROM TABELE
ORDER BY 1,2 


--  CREATE NEW COLUMNS WITH 
SELECT * , QUANTITY * UNIT_PRICE AS TOTAL_PRICE
FROM TABLE
WHERE ORDER_ID =2
ORDER BY TOTAL_PRICE DESC
-- LIMIT
SELECT *
FROM CUSTOMER
LIMIT 3 -- ONLY RETURN THREE VALUES

SELECT *
FROM CUSTOMER 
LIMIT 6,3 -- RETURN ONLY LAST VALUES
SELECT *
FROM CUSTOMER 
ORDER BY POINTS DESC
LIMIT 6,3
