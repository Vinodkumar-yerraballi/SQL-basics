-- View the table ChocolateSales
SELECT * FROM ChocolateSales;

-- Null values 
SELECT * FROM ChocolateSales WHERE sales_person IS NOT NULL ;

-- find the average boxes shipped 

SELECT round(avg(boxes_shipped),2) as avergae FROM ChocolateSales; 

-- 161 average boxes

-- Convert the text to numerical 
UPDATE ChocolateSales
SET Amount = CAST(
    REPLACE(REPLACE(Amount, '$', ''), ',', '')
AS INTEGER);

-- total sales amount in each country in descending order ChocolateSales
SELECT country,
sum(CAST(REPLACE(REPLACE(amount,'$',''),',','') as integer)) as total_sales  FROM ChocolateSales
GROUP by country
ORDER by  total_sales DESC;


-- Total sales in each product 

SELECT product,
sum(amount) as total_sales FROM ChocolateSales
GROUP by product
ORDER by total_sales DESC;

-- Each salesperson and their product total sales
SELECT sales_person,
product,
sum(amount) as total_sales FROM ChocolateSales
GROUP by product,sales_person
order by total_sales desc;

-- How may a salesperson ship the boxes more then averages boxes
SELECT count(*) FROM
ChocolateSales WHERE boxes_shipped > 161;
-- 441 sales person shipped boxes above the average ChocolateSal

--Find the minimum and maximum boxes shipped in the data
SELECT min(boxes_shipped) as min_boxes,max(boxes_shipped) as max_boxes FROM ChocolateSales;


--Find the average sales amount is 5652
SELECT round(avg(amount),2) FROM ChocolateSales;


-- Let's find the which sales person higher then average sales amount in uk country
with average_sales as (
  SELECT avg(amount) as avg_sales
  from ChocolateSales)
SELECT sales_person, amount, country
FROM ChocolateSales,average_sales
WHERE amount > average_sales.avg_sales and country='UK';

-- Which day are most sales made 
SELECT date,sum(amount) as total_sales
FROM ChocolateSales
GROUP by date
order by total_sales DESC;

-- Calculate each box price 
SELECT DISTINCT(product),(amount/boxes_shipped) as product_price FROM ChocolateSales
GROUP by product
ORDER by product_price DESC;

-- which is the most demanding choco in India
SELECT country,product,sum(amount) as total_amount
FROM ChocolateSales WHERE country = 'India'
GROUP by country, product
ORDER by total_amount DESC;

-- Extract the month and find the total sales 
WITH avg_sales as (SELECT
substr(date,4,3) as month,sum(amount) as sales
from ChocolateSales
GROUP by month)
SELECT * FROM avg_sales 
GROUP by month
ORDER by sales desc;

