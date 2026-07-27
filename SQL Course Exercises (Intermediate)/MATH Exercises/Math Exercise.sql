/*
Display stocks which had "big-mover months", >10% change in price compared to open
*/

SELECT ticker, COUNT(ticker)
FROM stock_prices
WHERE (((close-open)/open > 0.1 OR (close-open)/open < -0.1))
GROUP BY ticker
ORDER BY COUNT(ticker) DESC

