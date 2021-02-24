# Comments Owners

Display comments and a little info about owner.

## Code

```sql
CREATE VIEW comments_owner AS
(
  SELECT
  	cm.id, cm.post_id, cm.text, cm.time,
  	u.name, u.surname, u.avatar
  FROM post_comments cm JOIN users u ON (cm.owner_id = u.id)
);
```
