/**
  * Eco-friendly users often are responsible consumers or at least trying to. 
  * Sometimes, the motivation behind sorting trash is unknown, how the system 
  * will be able to motivate users to continue sorting?
  * 
  * The answer: visuals and strong numbers could trick our brain to understand 
  * the reason behind his actions. The system will provide a proper statistics 
  * in terms of amount of saved trees and energy also keeping track of how much 
  * KG is collected by individual user or globally.
  */

create or replace function f_get_global_stats()
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
		(select r.path from resources r where r.id = st.icon) as icon, 
		sum(sr.value * stm.coefficient) 
	from stats_types st 
		join stats_types_maps stm on st.id = stm.stats_type_id 
		join stats_records sr on stm.waste_type_id = sr.waste_type_id
	group by st.id;
end
$$

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
		(select r.path from resources r where r.id = st.icon) as icon, 
		sum(sr.value * stm.coefficient) 
	from stats_types st 
		join stats_types_maps stm on st.id = stm.stats_type_id 
		join stats_records sr on stm.waste_type_id = sr.waste_type_id
	where sr.user_id = _user_id
	group by st.id;
end
$$
