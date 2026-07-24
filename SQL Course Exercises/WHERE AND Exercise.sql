/*
the review should have 4 or more stars
the review ID is less than 6000
the review ID is more than 2000
the review can't come from user 142
*/

SELECT *
FROM reviews
WHERE review_id BETWEEN 2000 AND 6000
  AND user_id != 142
  AND stars > 4
