/*
Output the total number of drugs manufactured by Pfizer, 
and output the total sales for all the Pfizer drugs.
*/

SELECT COUNT(product_id), SUM(total_sales)
FROM pharmacy_sales
WHERE manufacturer IN ('Pfizer')
