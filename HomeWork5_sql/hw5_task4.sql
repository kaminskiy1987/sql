use vk;

SELECT count(media.id) as news_count, users.id as user_id, users.email 
FROM users
LEFT JOIN media ON users.id = media.user_id 
GROUP BY users.id;

SELECT count(media.id) as news_count, users.id as user_id, users.email 
FROM users
JOIN media ON users.id = media.user_id 
GROUP BY users.id;