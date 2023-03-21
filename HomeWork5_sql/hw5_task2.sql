use vk;

SELECT id, firstname, lastname, phone, email, gender, birthday, hometown, photo_id 
FROM view_males_bb vmb
WHERE hometown LIKE 'b%'
ORDER BY hometown;