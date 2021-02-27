# EcoBeko's Documentation 💬

This document covers SDU's CSS348 Advanced Database Management course project. We, as a team are asked to build a system containing relatively complex database layer.

While building, the whole application will be available at cloud: [https://eco-beko.ryspekov.life](https://eco-beko.ryspekov.life). Documentation is available here: [https://eco-beko.ryspekov.life/docs](https://eco-beko.ryspekov.life/docs)

Table of contents:

- [EcoBeko's Documentation 💬](#ecobekos-documentation-)
  - [Project Description 📓](#project-description-)
  - [Scope 🧐](#scope-)
  - [Tech Stack & Tools ⚙️](#tech-stack--tools-️)
    - [Frontend](#frontend)
    - [Backend](#backend)
    - [Database](#database)
  - [REST API reference](#rest-api-reference)

## Project Description 📓

**EcoBeko** is a eco-activists oriented social network, where in addition to an ordinary online social interactions features, new ones are added!

Our **goal** is to build a social network with eco-specific features that could unite people, help contacting big organizations and just knowing about all the helpful activities that people around the world could share with simple articles.

This app _could potentially help_ the beginners that want to start help the planet. There are multiple ways of doing that: thoughtful consuming, collecting/sorting trash, planting trees, helping animals, engineering agricultural lands and etc. However, there is so much people can do wrong about everything, therefore, having organizations or experienced people just writing about their day-to-day routines in addition to articles that may demystify some conspiracies.

## Scope 🧐

What we want to achieve is a fully functional, standalone web application and database that could scale and handle things nicely.

We have tried to build EcoBeko before (old repositories are now archived), however we were able to have only authorization/registration with News feed, user trash recycling statistics and map containing recycling points in Almaty. Being more experienced with building stuff, we are able now to finish much more modules here.

General features/modules the system covers:

- User registration/authorization
- User profile module
- News module
- Ability to write posts
- Ability to write articles
- Friends module
- Recycling maps module
- User/Global statistics
- Eco Projects module
- Communities module

## Tech Stack & Tools ⚙️

The architecture is available [here](./src/docs/architecture/README.md)

We will be building a simple client-server architecture, but there are some details.

### Frontend

As a UI, we choose to build a web application with [Vue.js](https://vuejs.org/). We have some experience building such systems, so having web application is almost a standard. On the other side, web is growing big now.

### Backend

REST API is the common way to go, in terms of building apps as SPA's. Having single language to work with is an advantage, so [Node.js](https://nodejs.org/en/) is an obvious choice. In order to leverage TypeScript features and to have the ability to quickly write scalable/modular API, [NestJS](https://nestjs.com/) is our choice.

### Database

[Postgres SQL](https://www.postgresql.org/) is one of the most popular SQL database. It's Open Source nature brings a community, that any project definitely wants. Postgres is known to be a highly fault-tolerant and while comparing to the other SQL solutions, it's easy to setup and get start with.

## REST API reference

API docs will be build with [Swagger](https://swagger.io/) and will be available at [/apidoc](https://eco-beko.ryspekov.life/apidoc) endpoint
