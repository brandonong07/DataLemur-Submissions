/*
Write a query using COUNT DISTINCT to identify the number of unique products within each product category.
*/

SELECT category, COUNT(DISTINCT product)
FROM product_spend
GROUP BY category