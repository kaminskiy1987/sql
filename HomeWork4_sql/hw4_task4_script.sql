SELECT COUNT(user_id) AS users_count
FROM likes
WHERE user_id IN (
  SELECT user_id 
  FROM profiles
  WHERE timestampdiff(year, birthday, now()) < 18)