-- While wanting to sort trash, it is essential to have a place to send your trash to, so that it will be utilized. How users will be able to find such places?
-- The answer: users could use the eco map the system provides and search for a proper place in their city.

-- There could be a bug number of recycling points across the city, how to find the proper one? (to be sure that a place can accept a certain material)
-- The answer: the eco map provides a way to filter places according to materials they want.

create or replace function f_search_recycling_points(_city varchar, _type RECYCLING_POINT_TYPE_ENUM, _accepts UUID[])
	returns setof recycling_points
	language plpgsql
as
$$
declare
begin
	return query
	select * from recycling_points rp
	where "type" = _type
	and city  = _city
	and rp.id in 
		(
			select rpa.recycling_point_id from recycling_point_accepts rpa
			where rpa.recycling_point_id = rp.id
			and rpa.waste_type_id = any(_accepts)
		) or cardinality(_accepts) = 0;
end
$$