create or replace function f_get_community(_user_id UUID, _id UUID)
	returns table (
		id UUID,
		title varchar,
		description varchar,
		main_image varchar,
		admin_id UUID,
		subscribers int,
		is_moderator boolean,
		is_subscribed boolean
	)
	language plpgsql
as
$$
begin
	return query
	select 
		c.id,
		c.title,
		c.description,
		r."path" as main_image,
		c.admin_id,
		count(s.id) as subscribers,
		count(s2.id) = 1 as is_moderator,
		count(s3.id) = 1 as is_subscribed
	from communities c
		left join resources r on (r.id = c.main_image and r."type" = 'image')
		join subscriptions s on (s.community_id = c.id)
		left join subscriptions s2 on 
		(
			s2.community_id = c.id and 
			s2.user_id = _user_id and
			s2.status = 'moderator'
		)
		left join subscriptions s3 on
		(
			s3.community_id  = c.id and
			s3.user_id = _user_id
		)
	where c.id = _id
	group by c.id, r.id;
end
$$

