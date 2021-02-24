# Post Owners

Display information about posts and their owners.

## Code

```sql
CREATE VIEW posts_owner AS
(
  SELECT
    p.id, p.title, p.article, p.likes, p.image, p.time,
    p.owner_id, u.name, u.surname, u.avatar
  FROM posts p JOIN users u ON (p.owner_id = u.id)
);
```
