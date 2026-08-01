/*
calculate unit cost for each drug sold by Merck, round up to the nearest whole number, and order the results by unit cost in ascending order.
*/

SELECT drug, CEIL(total_sales/units_sold) as unit_cost
FROM pharmacy_sales
WHERE manufacturer = 'Merck'
ORDER BY unit_cost ASC;
