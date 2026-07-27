/*
List candidate IDs who have more than 2 technical skills
*/

SELECT 
  candidate_id
FROM candidates
GROUP BY candidate_id
HAVING COUNT(candidate_id)>2
