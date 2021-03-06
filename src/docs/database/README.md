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

The datasets:

- [Recycling points (Almaty)](../datasets/recycling-points-almaty.csv ":ignore :target=_blank")
- [Waste types](../datasets/waste-types.csv ":ignore :target=_blank")

After the schema will be done (After Phase 4), we will generate our users and populate tables.

## Database Schema

![schema](../img/schema.png)
