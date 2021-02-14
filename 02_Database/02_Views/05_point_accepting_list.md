# Point accepting list

Display points and wastes they are accepting.

## Code

```sql
CREATE VIEW point_accepting_list AS
(
  SELECT
  	p.id, p.title, p.address, p.working_time, p.latitude, p.longitude, p.site, p.phone, p.additional_info, p.type,
  	ac.waste_id, w.title as waste_title, w.icon, w.type as waste_type, ac.price
  FROM points p JOIN point_accepts ac ON (p.id = ac.point_id) JOIN waste_types w ON (ac.waste_id=w.id)
);
```
