# api/users/friends/recommendations (GET)

## Description

Get friends recommendations for user

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Response examples

| Response Status code | Description  |
| :------------------: | ------------ |
|         200          | Success      |
|         401          | No token     |
|         403          | Unauthorized |

### 200 - Success

```js
{
  status: true,
  message: "Success",
  users: [
    // closely related users
    {
      name: "user-name",
      surname: "user-surname",
      phone: "user-phone",
      avatar: "user-avatar",
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
