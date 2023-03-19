SELECT user_id, (
  SELECT
  firstname
  FROM users 
  WHERE id = user_id) AS name,
COUNT(user_id) AS count
FROM users_communities
GROUP BY user_id;