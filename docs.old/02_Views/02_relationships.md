# Relationships

Display relationships between users joining with friends table.

## Code

```sql
CREATE VIEW relationships AS
(
  SELECT
    f.id, u.name, u.surname, u.role, u.password, u.gender, u.phone, u.avatar, u.birthday,
    f.user_1_id, f.user_2_id, f.last_time, f.status
  FROM users u JOIN friends f ON (u.id in (f.user_1_id, f.user_2_id))
);
```
