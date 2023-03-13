USE vk;

INSERT INTO `users` (`id`,`firstname`,`lastname`,`email`,`phone`) VALUES
('1','Ivanov','Ivan','ivanov0@example.org','9311111111'),
('2','Petrov','Petr','petrov123@example.ru','9888888821'),
('3','Sidorov','Kirill','sidd@example.list','9922323203'),
('4','Jakovlev','Alex','jaa@example.net','9595465466'),
('5','Fedorov','Fedor','fed1234@example.ru','9909555525'),
('6','Karaseva','Sveta','karas@example.net','94566454385');

INSERT INTO `media_types` (`id`,`name`,`created_at`) VALUES
('1','mediaA','2023-10-10 08:47:10'),
('2','mediaB','2023-10-10 08:47:10'),
('3','mediaC','2023-10-10 08:47:10'),
('4','mediaD','2023-10-10 08:47:10'),
('5','mediaE','2023-10-10 08:47:10'),
('6','mediaF','2023-10-10 08:47:10');

INSERT INTO `media` (`id`,`media_type_id`,`user_id`,`body`,`filename`,`size`,`metadata`,`created_at`) VALUES
('1','1','1','body 1','video A','2047','1234','2023-10-10 08:47:10'),
('2','2','2','body 2','video B','2047','1234','2023-10-10 08:47:10'),
('3','3','3','body 3','video C','2047','1234','2023-10-10 08:47:10'),
('4','4','4','body 4','video D','2047','1234','2023-10-10 08:47:10'),
('5','5','5','body 5','video E','2047','1234','2023-10-10 08:47:10'),
('6','6','6','body 6','video F','2047','1234','2023-10-10 08:47:10');

INSERT INTO `likes` (`id`,`user_id`,`media_id`,`created_at`) VALUES 
('1','1','1','1995-01-10 18:00:39'),
('2','2','2','1998-02-04 10:08:30'),
('3','3','3','1991-09-09 20:07:03'),
('4','4','4','1992-03-21 20:59:08'),
('5','5','5','1983-09-13 12:36:01'),
('6','6','6','1999-08-17 11:30:31');
