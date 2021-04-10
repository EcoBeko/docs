# Project report

## Implementation details

The whole thing works like this:

1. Frontend SPA build with Vue sends HTTP requests to the nginx
2. Nginx is load balancing the requests to the backend build with Express/Nest.js
3. Backend handles the request and forms a sql query to the database
4. Database contains functions and procedures which returns the result back

## Challenges

### Data

First challenge was to obtain appropriate amount of data, we generated users, communities and then tried to generate other relations by ourselves. For instance, we needed to subscribe users to a different communities. Inserts from select queries where used, procedures. We used this kind of structures a lot:

```sql
select * from communities c
order by random() -- this gave us a random list of something
limit n
```

### Postgres

How to properly configure indexes? Optimize the relations, minimize the needed amount of rows and etc. Postgres gave us a lot of explanation tools we used for our indexes and much more else. A huge amount of readings were done.

### Deadlines

For each phase, there was around week to perform. We simply couldn't keep up with deadlines due to the multiple. For instance, phase 6 is much complex to implement since its about building whole application and still we got a week to do that.

### Git

Not everyone in our team knew how to use git, so Ansar was doing commits at the first time, but then others needed to commit to.

## What we learned

It wasn't clear how to design relations at first when we haven't done our lab 2,3 and finally got understanding of Relational Algebra, Estimating Cardinalities and etc. We changed a lot to fit the phase tasks, but it changed a lot how we view the process of writing queries now.
