SELECT 
	initiator_user_id,
	COUNT(*) AS count
FROM friend_requests 
GROUP BY initiator_user_id 
ORDER BY count DESC
LIMIT 1;