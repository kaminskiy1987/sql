ALTER TABLE messages 
ADD COLUMN is_deleted BIT DEFAULT 0;

update messages
set created_at = now() + interval 1 year
limit 2;

update messages
set is_deleted = 1
where created_at > NOW();

delete from messages
where created_at > NOW();

select *
from messages
order by created_at desc;