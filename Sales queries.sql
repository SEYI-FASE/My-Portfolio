-- show all customer records -- 
SELECT * 
FROM sales.customers

-- show total number of customers-- 
SELECT DISTINCT COUNT(*)
FROM sales.customers

-- show transactions for chennai market(market_code - Mark001--
SELECT *
FROM sales.transactions
WHERE market_code = "Mark001"

-- show distinct product codes that were sold in chennai--
SELECT DISTINCT product_code
FROM sales.transactions  
WHERE market_code = "Mark001"

-- show transactions where currency is US dollars--
SELECT *
FROM Sales.transactions
WHERE currency = "USD"

-- show transactions in 2020 joined by date table--
SELECT *
FROM sales.transactions AS T
LEFT JOIN sales.date AS D
ON T.Order_date = D.date
where D.year = 2020

-- show total revenue in year 2020--
SELECT SUM(sales_qty * sales_amount) AS Revenue
FROM sales.transactions 
where date_format(order_date, "%Y") = 2020

-- show total revenue in year 2020, January--
SELECT SUM(sales_qty * sales_amount) AS Revenue
FROM sales.transactions 
where date_format(order_date, "%m") = 1 AND date_format(order_date,"%Y") = 2020

-- show total revenue in year 2020 in chennai--
SELECT SUM(sales_qty * sales_amount) AS Revenue 
FROM sales.transactions 
WHERE date_format(order_date, "%Y") AND market_code ="Mark001"

