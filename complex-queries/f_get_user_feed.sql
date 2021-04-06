create or replace function f_get_user_feed(_user_id UUID)
	returns table (
		id UUID,
		"content" JSONB,
		"date" timestamp,
		"type" POST_TYPE_ENUM,
		author_type AUTHOR_TYPE_ENUM,
		author_id UUID,
		author_avatar varchar,
		author_name varchar
	)
	language plpgsql
as
$$
begin
	return query
	select 
		p.id,
		p."content",
		p."date",
		p."type",
		p.author_type,
		p.author_id,
		r."path" as author_avatar,
		coalesce(u.username, c.title) as author_name
	from posts p
		left join friends f on
		(
			f.friend_id = p.author_id and 
			f.user_id = _user_id and
			f.status = 'accepted'
		)
		left join subscriptions s on
		(
			s.community_id = p.author_id and
			s.user_id = _user_id and
			s.status in ('moderator', 'enabled')
		)
		left join users u on (u.id = p.author_id)
		left join communities c on (c.id = p.author_id)
		left join resources r on (r.id in (u.avatar, c.main_image) and r."type" = 'image');
end
$$
