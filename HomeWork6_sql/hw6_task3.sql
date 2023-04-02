use vk;

DROP VIEW view_males_bb;

DROP TRIGGER IF EXISTS check_communities_name;

DELIMITER //

CREATE TRIGGER IF NOT EXISTS check_communities_name
BEFORE INSERT ON communities
FOR EACH ROW
BEGIN
    IF (CHAR_LENGTH(NEW.communities.name) < 5) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Название сообщества должно быть более 5 символов';
    END IF;
END//

DELIMITER ;