-- How do people will share the posts or articles when there's no one to read them?
-- The answer: users will be able to search for friends using multiple filter parameters.

create or replace procedure p_create_friends_request(_user_id UUID, _friend_id UUID)
	language plpgsql
as
$$
declare
begin
	insert into friends(user_id, friend_id, "date", status)
	values (_user_id, _friend_id, now(), 'created');
end
$$

create or replace procedure p_decline_friends_request(_id UUID)
	language plpgsql
as
$$
declare
begin
	delete from friends
	where id = _id
	and status = 'created';
end
$$

create or replace procedure p_accept_friends_request(_id UUID)
	language plpgsql
as
$$
declare
begin
	update friends
	set status = 'accepted'
	where id = _id
	and status = 'created';
end
$$

create or replace function f_search_users(
		_first_name varchar, 
		_last_name varchar, 
		_gender GENDER_ENUM
		)
	returns setof users
	language plpgsql
as
$$
begin
	return query
	select * from users
	where (position(_first_name in first_name) not in (0) or _first_name is null)
	and (position(_last_name in last_name) not in (0) or _last_name is null)
	and (gender = _gender or _gender is null);
end
$$