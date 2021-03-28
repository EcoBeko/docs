-- There are so much is happening around the globe: eco moves, projects, activities and etc. How potentially interested people could know where or when such events are happening?
-- The answer: special users are able to keep track of such events and publish them in events feed.

create or replace function f_search_eco_projects(_title varchar, _status ECO_PROJECT_STATUS_ENUM)
	returns setof eco_projects
	language plpgsql
as
$$
declare
begin
	return query
	select * from eco_projects ep
	where (position(_title in ep.title) not in (0) or _title is null)
	and (ep.status = _status or _status is null);
end
$$