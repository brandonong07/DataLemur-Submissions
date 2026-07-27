/*
Write a SQL query using AVG to find the average open price for Google stock 
*/

SELECT AVG(open)
FROM stock_prices
WHERE ticker='GOOG';
