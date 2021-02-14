# api/users/update-credentials (PUT)

## Description

Update user's password

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Request example

|  Parameter  | Description                   |
| :---------: | ----------------------------- |
| oldPassword | String, Old password to check |
| newPassword | String, New password to set   |

```js
{
  oldPassword: "some-old-password",
  newPassword: "some-new-password",
}
```

## Response examples

| Response Status code | Description                    |
| :------------------: | ------------------------------ |
|         200          | Updated                        |
|         401          | No Token                       |
|         403          | Unauthorized (bad token)       |
|         406          | Old password is incorrect      |
|         412          | Request conditions are not met |

### 200 - Updated

```js
{
  status: true,
  message: "User's info updated"
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

### 406 - Password is incorrect

```js
{
  status: false,
  message: "Incorrect password"
}
```

### 412 - Request conditions are not met

```js
{
  status: false,
  message: "Request conditions are not met"
}
```
