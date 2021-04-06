create or replace function f_get_user_stats(_user_id UUID)
	returns table (id UUID, title varchar, postfix varchar, icon varchar, sum numeric)
	language plpgsql
as
$$
declare
begin
	return query
	select 
		st.id, 
		st.title, 
		st.postfix, 
		r."path" as icon, 
		sum(sr.value * stm.coefficient) as "sum"
	from stats_types st 
		join stats_types_maps stm on st.id = stm.stats_type_id 
		join stats_records sr on stm.waste_type_id = sr.waste_type_id
		left join resources r on (r.id = st.icon and r."type" = 'image')
	where sr.user_id = _user_id
	group by st.id, r.id;
end
$$
