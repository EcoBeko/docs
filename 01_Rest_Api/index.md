# REST Api reference #️⃣

This document describes a REST Api abstraction of this system.

**Base url:** api/

- users/
  - [register-user](./01_Users/01_register-user.md)
  - [validate](./01_Users/02_validate.md)
  - [authenticate](./01_Users/03_authenticate.md)
  - [fetch-data](./01_Users/04_fetch-data.md)
  - [update-photo](./01_Users/05_update-photo.md)
  - [update-info](./01_Users/06_update-info.md)
  - [update-credentials](./01_Users/07_update-credentials.md)
  - friends/
    - [recommendations](./01_Users/01_Friends/01_recommendations.md)
    - [fetch](./01_Users/01_Friends/02_fetch.md)
    - [update](./01_Users/01_Friends/03_update.md)
  - stats/
    - [add](./01_Users/02_Stats/01_add.md)
- token/
  - [validate](./02_Token/01_validate.md)
- posts/
  - [fetch-portion](./03_Posts/01_fetch-portion.md)
  - [fetch-one](./03_Posts/02_fetch-one.md)
  - [write](./03_Posts/03_write.md)
  - :id/
    - comments/
      - [fetch](./03_Posts/01_Comments/01_fetch.md)
      - [write](./03_Posts/01_Comments/02_write.md)
- points/
  - [fetch/:type](./04_Points/01_fetch.md)
  - wastes/
    - [fetch](./04_Points/01_Wastes/01_fetch.md)
- chats/
  - [fetch](./05_Chats/01_fetch.md)
  - :chat-id/
    - [fetch](./05_Chats/01_chat/01_fetch.md)
    - [write](./05_Chats/01_chat/02_write.md)
