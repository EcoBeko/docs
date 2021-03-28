-- What other ways of user activities the system could present in order to communicate with friends (beside posts and articles)?
-- The answer: messages module will provide a real-time way of connecting with any friend.

create or replace function f_get_user_chats(_user_id UUID)
	returns table(
		id UUID, 
		title varchar, 
		type CHAT_TYPE_ENUM, 
		user_type CHAT_USER_TYPE_ENUM, 
		last_message varchar)
	language plpgsql
as
$$
declare
begin
	return query
	select 
		c.id, 
		c.title, 
		c.type, 
		uc.user_type,
		(select message from messages m order by "date" desc limit 1) as "last_message"
	from user_chats uc join chats c on uc.chat_id = c.id;
end
$$

create or replace procedure p_start_group_chat(_admin_id UUID, _title varchar, _participants varchar[])
	language plpgsql
as 
$$
declare
	chat_id UUID;
	_id varchar;
begin
	insert into chats (title, "type")
	values (_title, 'group') returning id into chat_id;

	insert into user_chats (user_id, chat_id, user_type)
	values (_admin_id, chat_id, 'admin');

	foreach _id in array _participants loop
		insert into user_chats (_id, chat_id, user_type)
		values (_user_id, chat_id, 'participant');
	end loop;
end
$$
