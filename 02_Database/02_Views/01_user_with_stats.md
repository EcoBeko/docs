# User with stats

Display information about user and it's statistics.

## Code

```sql
CREATE VIEW user_with_stats AS
(
  SELECT
    s.user_id, u.name, u.surname, u.role, u.password, u.gender, u.phone, u.avatar, u.birthday,
    s.id, s.trees, s.energy, s.waste
  from users u JOIN user_stats s ON (u.id = s.user_id)
);
```
