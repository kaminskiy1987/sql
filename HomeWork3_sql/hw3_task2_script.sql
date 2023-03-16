SELECT 
	COUNT(*)
FROM profiles
WHERE
	timestampdiff(year, birthday, now()) > 35
    AND gender = 'm'