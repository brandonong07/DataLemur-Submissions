/*
How many candidates possess each of the different skills? 
Sort your answers based on the count of candidates, from highest to lowest.
*/

SELECT 
  skill,
  COUNT(candidate_id) AS count
FROM candidates
GROUP BY skill
ORDER BY count DESC;