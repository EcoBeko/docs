-- As communities are growing in size, it becomes difficult to administrate them singlehandedly, how the users are supposed to scale the community?
-- The answer: users could ask friends to become the moderator of their group, so they can perform different tasks such as editing/creating in their communities.

create or replace procedure p_assign_community_moderator(_community_id UUID, _user_id UUID)
	language plpgsql
as
$$
declare
begin
	update subscriptions 
	set status = 'moderator'
	where community_id = _community_id
	and user_id = _user_id;
end
$$