/*
which sold between 100,000 units and 105,000 units
AND were manufactured by either Biogen, AbbVie, or Eli Lilly
*/

SELECT manufacturer, drug, units_sold
FROM pharmacy_sales
WHERE (manufacturer = 'Biogen' OR manufacturer = 'AbbVie' OR manufacturer = 'Eli Lilly') 
  AND units_sold BETWEEN 100000 AND 105000;
