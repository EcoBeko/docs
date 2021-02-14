# api/chats/fetch (GET)

## Description

Fetch all user chats

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Response examples

| Response Status code | Description  |
| :------------------: | ------------ |
|         200          | Success      |
|         401          | No Token     |
|         403          | Unauthorized |

### 200 - Success

```js
{
  status: true,
  message: "Success",
  chats: [
    // chats
    {
      id: 1,
      last_time: "time",
      name: "friends-name",
      surname: "friends-surname",
      avatar: "friends-avatar"
    }
  ]
}
```

### 401 - No Token

```js
{
  status: false,
  message: "No token presented"
}
```

### 403 - Unauthorized

```js
{
  status: false,
  message: "Bad token"
}
```
