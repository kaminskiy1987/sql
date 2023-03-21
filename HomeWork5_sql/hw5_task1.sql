use vk;
		
CREATE OR REPLACE VIEW  view_males_bb AS
SELECT * FROM users
JOIN profiles on users.id = profiles.user_id 
WHERE profiles.gender ='m'
ORDER BY profiles.birthday;