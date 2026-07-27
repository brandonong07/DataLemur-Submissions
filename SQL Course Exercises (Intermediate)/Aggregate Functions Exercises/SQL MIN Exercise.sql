/*
Use SQL's MIN command in this practice exercise, to find the lowest Microsoft stock (MSFT) ever opened at.
*/

SELECT min(open)
FROM stock_prices
WHERE ticker='MSFT'