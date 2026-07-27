/*
Use SQL HAVING & MIN to find all FAANG stocks where open>100
*/

SELECT 
    ticker,
    MIN(open)
FROM stock_prices
GROUP BY ticker
HAVING MIN(open) > 100;
