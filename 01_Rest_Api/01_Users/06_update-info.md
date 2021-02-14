# api/users/update-info (PUT)

## Description

Update user's info

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Request example

| Parameter | Description                       |
| :-------: | --------------------------------- |
|   name    | String, user's name               |
|  surname  | String, user's surname            |
|  gender   | Integer, 1 for male, 0 for female |
| birthday  | Date in format dd-mm-yyyy         |

```js
{
  name: "user-name",
  surname: "user-surname",
  gender: "user-gender",
  birthday: "user-birthday",
}
```

## Response examples

| Response Status code | Description                    |
| :------------------: | ------------------------------ |
|         200          | Updated                        |
|         401          | No Token                       |
|         403          | Unauthorized                   |
|         406          | Validation error               |
|         412          | Request conditions are not met |

### 200 - Updated

```js
{
  status: true,
  message: "User's info updated"
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

### 406 - Validation error

```js
{
  status: false,
  message: "Data validation error"
}
```

### 412 - Request conditions are not met

```js
{
  status: false,
  message: "Request conditions are not met"
}
```
