/*
Categorize heroes by their likes. Display actor, character, platform, avg_likes, and likes_category, then order by avg_likes.
*/

SELECT actor, character, platform, avg_likes,
CASE
  WHEN avg_likes < 5000 THEN 'Low Likes'
  WHEN avg_likes BETWEEN 5000 AND 14999 THEN 'Good Likes'
  WHEN avg_likes >= 15000 THEN 'Super Likes'
END AS likes_category
FROM marvel_avengers
ORDER BY avg_likes DESC;