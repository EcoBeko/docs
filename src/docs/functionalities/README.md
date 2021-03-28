# Functionalities

This document covers functionalities we provide to the different users. This is the answer to the Phase 3 of the project's development plan. We will divide each question to the corresponding modules of the system

## Authorization/Registration module

- How the system will differentiate the users, give a proper access to a certain functionalities?

The answer: by giving the users the ability to register and then authenticate themselves in our system:

![authorization-registration](../img/use-case/authorization-registration.png)

## News module

- The main reason for users to register in our system is to share or acquire the experiences across the world. How they will be able to do so?

The answer: users will be able to write regular posts in our system and share them with their friends.

![write-posts](../img/use-case/write-posts.png)

- Learning through experiences is a good way to go, however, sometimes writing just posts is not good enough as the idea of posts is similar to Twitter's tweets, little, short stories. How professionals of different degree could share stories/materials in more structured way?

The answer: users will be able to write articles in medium manner.

![write-articles](../img/use-case/write-articles.png)

## Friends module

- How do people will share the posts or articles when there's no one to read them?

The answer: users will be able to search for friends using multiple filter parameters.

![searching-friends](../img/use-case/searching-friends.png)

- Searching for all the closest friends you got could turn out to be pretty complicated task, how users could find friends more easily?

The answer: recommendation system based on users friends could help find their other friends too.

![recommendation-list](../img/use-case/recommendation-list.png)

## Statistics module

- Eco-friendly users often are responsible consumers or at least trying to. Sometimes, the motivation behind sorting trash is unknown, how the system will be able to motivate users to continue sorting?

The answer: visuals and strong numbers could trick our brain to understand the reason behind his actions. The system will provide a proper statistics in terms of amount of saved trees and energy also keeping track of how much KG is collected by individual user or globally.

![update-statistics](../img/use-case/update-statistics.png)

## Messages module

- What other ways of user activities the system could present in order to communicate with friends (beside posts and articles)?

The answer: messages module will provide a real-time way of connecting with any friend.

![write-messages](../img/use-case/write-messages.png)

- What if users will want to discuss something quick with 3 or more people instead of writing to each person?

The answer: group chats.

!> Use-case for group chats are the same, but scales with multiple users

## Communities module

- Having a big pool of users is great, but as different people are having different eco topics that they want to cover, is there a more organized way of collecting the ideas into a single place?

The answer: subscribing to communities.

![subscribe-to-community](../img/use-case/subscribe-to-community.png)

- Having communities is great, but if single user is unable to find a community of his own thoughts and ideas, what should he do?

The answer: create and administrate his own community.

![add-community](../img/use-case/add-community.png)

- As communities are growing in size, it becomes difficult to administrate them singlehandedly, how the users are supposed to scale the community?

The answer: users could ask friends to become the moderator of their group, so they can perform different tasks such as editing/creating in their communities.

![add-community-moderator](../img/use-case/add-community-moderator.png)

## Map module

- While wanting to sort trash, it is essential to have a place to send your trash to, so that it will be utilized. How users will be able to find such places?

The answer: users could use the eco map the system provides and search for a proper place in their city.

![view-map](../img/use-case/view-map.png)

- There could be a bug number of recycling points across the city, how to find the proper one? (to be sure that a place can accept a certain material)

The answer: the eco map provides a way to filter places according to materials they want.

![view-map-filtered](../img/use-case/view-map-filtered.png)

## Eco Projects module

- There are so much is happening around the globe: eco moves, projects, activities and etc. How potentially interested people could know where or when such events are happening?

The answer: special users are able to keep track of such events and publish them in events feed.

![view-eco-projects](../img/use-case/view-eco-projects.png)

## Administration module

- Having at least one special kind of users (that are able to publish events), how are they being created?

The answer: another special user type with admin role (which is created by hand) is able to access admin console and perform such a task.

![administrate-moderators](../img/use-case/administrate-moderators.png)
