-- How the system will differentiate the users, give a proper access to a certain functionalities?
-- The answer: by giving the users the ability to register and then authenticate themselves in our system

create or replace function f_is_username_exists(_username varchar, _role varchar)
	returns boolean
	language plpgsql
as
$$
declare
	user_count integer;
begin 
	select count(*) into user_count from users
	where role = _role and
	status = 'enabled' and
	username = _username;

	return user_count > 0;
end
$$

create or replace procedure p_create_resource(
		_path varchar, 
		_type RESOURCE_TYPE_ENUM, 
		_entity_id UUID, 
		inout _id UUID
		)
	language plpgsql
as
$$
declare
	resource_id UUID;
begin
	insert into resources ("path", "type", entity_id, "date")
	values (_path, _type, _entity_id, now()) returning id into resource_id;

	_id = resource_id;
end
$$

create or replace procedure p_create_user(
		_first_name varchar, 
		_last_name varchar, 
		_username varchar, 
		_password varchar, 
		_gender GENDER_ENUM,
		_avatar_path varchar,
		_role ROLE_ENUM,
		inout _id UUID
		)
	language plpgsql
as
$$
declare
	user_id UUID;
	image_id UUID;
begin
	insert into users(first_name, last_name, username, "password", gender, avatar, "role", status)
	values (_first_name, _last_name, _username, _password, _gender, null, _role, 'enabled') returning id into user_id;

	if (_avatar_path is not null) then
		call p_create_resource(_avatar_path, 'image', user_id, image_id);
	
		update users
		set avatar = image_id
		where status = 'enabled'
		and "role" = _role
		and username = _username;
	end if;

	_id = user_id;
end
$$

-- authentication will query select statement to the users table
select count(*) from users
where username = 'some-username'
and password = 'password'
and status = 'enabled'
and role = 'user';