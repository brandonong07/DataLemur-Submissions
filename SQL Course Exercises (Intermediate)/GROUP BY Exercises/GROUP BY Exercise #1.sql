/*
For each stock, use SQL query to find lowest price each stock opened at
*/

SELECT ticker, MIN(open) AS min_open
FROM stock_prices
GROUP BY ticker 
ORDER BY min_open DESC