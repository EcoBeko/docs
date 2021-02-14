# api/users/fetch-data (GET)

## Description

Fetch user data for the specified user

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Response examples

| Response Status code | Description        |
| :------------------: | ------------------ |
|         200          | Success            |
|         401          | No token presented |
|         403          | Unauthorized       |

### 200 - Success

```js
{
  status: true,
  message: "Data fetched",
  user: {
    id: 1,
    name: "user-name",
    surname: "user-surname",
    modules: {
      name: "user"
    }
    gender: 1,
    phone: "user-phone",
    avatar: "user-avatar",
    birthday: "user-birthday",
    stats: {
      trees: 0.0,
      energy: 0.0,
      waste: 0.0
    }
  }
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
