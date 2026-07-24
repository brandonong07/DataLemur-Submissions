/*
the start count is greater than 2, and less than or equal to 4
the review must come from either user 123, 265, or 362
*/

SELECT *
FROM reviews
WHERE user_id = 123 OR user_id = 265 OR user_id = 362
  AND stars > 2 AND stars <= 4
