# api/users/friends/fetch (GET)

## Description

Fetch user's friends list

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Response examples

| Response Status code | Description              |
| :------------------: | ------------------------ |
|         200          | Success                  |
|         401          | No Token                 |
|         403          | Unauthorized (bad token) |

### 200 - Success

```js
{
  status: true,
  message: "Success",
  users: [
    // all user's friends
    {
      id: 1,
      phone: "user-phone",
      name: "user-name",
      surname: "user-surname",
      avatar: "user-avatar",
      lastTime: "dd-mm-yyyy h:min:sec",
      status: "relationship-status"
    }
  ]
}
```

### 401 - No token

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
