-- The main reason for users to register in our system is to share or acquire the experiences across the world. How they will be able to do so?
-- The answer: users will be able to write regular posts in our system and share them with their friends.

/* 
 * Learning through experiences is a good way to go, however, 
 * sometimes writing just posts is not good enough as 
 * the idea of posts is similar to Twitter's tweets, little, short stories. 
 * How professionals of different degree could share stories/materials in more structured way?
 */
-- The answer: users will be able to write articles in medium manner.

create or replace procedure p_create_post(
		_content JSONB, 
		_type POST_TYPE_ENUM, 
		_author_type AUTHOR_TYPE_ENUM, 
		_author_id UUID
		)
	language plpgsql
as
$$
declare
begin
	insert into posts("content", "date", "type", author_type, author_id)
	values (_content, now(), _type, _author_type, _author_id);
end
$$

-- get posts for user
create or replace function f_get_user_feed(_user_id UUID)
	returns setof posts
	language plpgsql
as
$$
begin
	return query
	select * from posts
	where author_id in 
		(
			select friend_id as "id" from friends
			where user_id = _user_id
			union
			select community_id as "id" from subscriptions
			where user_id = _user_id
		);
end
$$

