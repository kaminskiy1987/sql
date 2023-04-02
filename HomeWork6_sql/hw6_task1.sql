use vk;

DROP FUNCTION IF EXISTS delete_user_by_id;

DELIMITER //

CREATE FUNCTION delete_user_by_id (user_id_to_delete BIGINT UNSIGNED) RETURNS bigint unsigned
    MODIFIES SQL DATA DETERMINISTIC

BEGIN
	DELETE FROM users_communities
	WHERE user_id = user_id_to_delete;

	DELETE FROM friend_requests
	WHERE initiator_user_id = user_id_to_delete
		OR target_user_id = user_id_to_delete;

	DELETE FROM messages
	WHERE from_user_id = user_id_to_delete
		OR to_user_id = user_id_to_delete;

	DELETE FROM profiles
	WHERE user_id = user_id_to_delete;

	DELETE  FROM likes
	WHERE user_id = user_id_to_delete;

	DELETE FROM media
	WHERE user_id = user_id_to_delete;

	DELETE FROM users
	WHERE id = user_id_to_delete;

RETURN user_id_to_delete;
END//

DELIMITER ;