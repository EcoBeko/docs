-- Searching for all the closest friends you got could turn out to be pretty complicated task, how users could find friends more easily?
-- The answer: recommendation system based on users friends could help find their other friends too.

-- getting friends of friends
create or replace function f_get_user_recommendations(_user_id UUID)
	returns setof users
	language plpgsql
as
$$
declare
begin
	return query
	select * from users
	where role = 'user'
	and status = 'enabled'
	and id in 
		(
			select friend_id from friends
			where user_id in 
				(
					select friend_id from friends
					where user_id = _user_id
				)
			and friend_id <> _user_id
		)
	order by random()
	limit 10;
end
$$

