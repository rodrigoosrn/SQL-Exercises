/*
Find the printer models having the highest price. Result set: model, price.
*/

--solution 1
SELECT model, price FROM printer WHERE price = ( SELECT MAX(price) FROM printer);

--solution 2 for SQL Server
SELECT TOP 1 WITH TIES model, price FROM printer
ORDER BY price DESC

