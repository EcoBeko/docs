# Database

This document covers database structure and the dataset chose (which is required by SDU course).

## Dataset

Kaggle datasets are not suitable for our project due to the multiple facts:

- User accounts are usually very much protected or at least are not leaked in much of a detail or amount
- Being social network, every module is strictly connects with the users table

The only exception is the map module and eco projects. We are adding recycling points in Almaty and Nur-Sultan cities by hand, same with Eco Projects.

The data properties we collect will affect the ER diagram in the future.

The basic schema will look like this (copied from old project):

![basic-schema](../img/basic-schema.png)

Here, recycling points could accept multiple waste types, opposite is true, multiple waste types could be accepted in multiple recycling points. Thus, we connect them via bridge table.

After the schema will be done (After Phase 4), we will generate our users and populate tables.

## Database Schema

![schema](../img/schema.png)

### General info

Enum fields are represented as a small collection of values. Image/Link fields are foreign keys to the Resources Table. Any field marked with asterisk is an indexed field.

### Resources table

Resources table is responsible for containing image/link paths. This will be useful across an application, since using `entity_id` (entity is any table using resources) will resolve an image directly without fetching entity itself. Mostly, we thought of practicing such tables of metadata.

### Users table

Users table contains user info, their credentials and some metadata (status, role). Usernames are unique, and passwords are hashed using `bcrypt`. As for deleting users, we won't delete them directly, instead, to ease maintaining lost id references we will mark disabled users with `status=disabled`

### Friends table

Friends table contains users' relations, `user_id` will be used to fetch user's list of friends. In order to make it work, single friendship creates 2 rows, where `user_id` and `friend_id` will be switched

### Chats (chats, user_chats, messages tables)

For any chat that has begun to work (user chat, group chat) one row in chat table is created. `user_chats` is responsible for mapping `user_id` to a `chat_id` (single user could have multiple chats), and stating user's role in a chat. In that way, user and group chats are stored in a same relations. Messages are produced by users and binds to a certain chat.

### Recycling points (recycling_points, recycling_point_accepts, waste_types tables)

Recycling points table contains information about utilization/recycling points in Almaty and Nur-Sultan cities. There could be many waste types stored in the system, from which recycle points need a bridge table which maps them with waste types (single recycling point accepts multiple waste types). Recycling point can pay for a certain waste type or pay nothing at all.

### Eco projects table

Eco project table is responsible for announcing eco projects around the globe, it contains just enough information for users to be familiar with.

### Statistics (stats_records, stats_types, stats_type_maps, waste_types tables)

Users are able to write statistics about their sorting (Which waste type? How many kilos?), `stats_records` holds such info. There are many statistical types, for instance, all the sorted trash could be summarized in terms of how much trees are saved, how much energy is saved and etc, `stats_types` are used for that. Each stat. type is growing from a specific waste_types, `stats_type_maps` shows which waste types are contributing to which stats types. For instance, 1kg plastic is a 0.1 kWh energy saved, which means a coefficient stored in mapping is 0.1.

### Communities (communities, subscriptions tables)

It's simple, users are able to create a community, and other users can subscribe. Admin can assign moderators to a community which could do everything admin can, except deleting community.

### Posts (posts, comments tables)

Users are able to write posts or articles, which are stored in a json format. Author could be a user or community which could be evaluated in a procedure.
