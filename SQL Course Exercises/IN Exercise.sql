/*
which were manufactured by either Roche, Bayer, or AstraZeneca
and did not sell between 55,000 and 550,000 units
*/

SELECT manufacturer, drug, units_sold
FROM pharmacy_sales
WHERE manufacturer IN('Roche', 'Bayer', 'AstraZeneca')
AND NOT units_sold BETWEEN 55000 AND 550000
