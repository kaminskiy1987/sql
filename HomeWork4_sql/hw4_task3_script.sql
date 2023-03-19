SELECT from_user_id, (
  SELECT firstname
  FROM users
  WHERE id = from_user_id) AS from_user,
  to_user_id, (
  SELECT firstname
  FROM users
  WHERE id = to_user_id) AS to_user
FROM messages
WHERE from_user_id = '8'
GROUP BY to_user_id
ORDER BY COUNT(from_user_id) DESC
LIMIT 1;