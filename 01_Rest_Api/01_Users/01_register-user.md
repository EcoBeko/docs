# api/users/register-user (POST)

## Description

Register a new user

|    Note    | Value |
| :--------: | :---: |
| Need Token |  No   |
| Test route |  No   |

## Request example

| Parameter | Description                                                    |
| :-------: | -------------------------------------------------------------- |
|   name    | String, user's name                                            |
|  surname  | String, user's surname                                         |
| password  | String, user's password                                        |
|  gender   | Integer, 1 for male, 0 for female                              |
|   phone   | String, following Kazakhstan's phone pattern (omitting prefix) |
| birthday  | Date in format DD-MM-YYYY                                      |

```js
{
  name: "Ansar",
  surname: "Ryspekov",
  password: "some-password",
  gender: 1,
  phone: "7086144672",
  birthday: "2001/01/19"
}
```

## Response examples

| Response Status code | Description                    |
| :------------------: | ------------------------------ |
|         201          | Created                        |
|         400          | Phone number exists            |
|         406          | Validation error               |
|         412          | Request conditions are not met |

### 201 - Created

```js
{
  status: true,
  message: "User created"
}
```

### 400 - Phone number exists

```js
{
  status: false,
  message: "Phone number already exists"
}
```

### 406 - Validation error

```js
{
  status: false,
  message: "Data validation error on field-name"
}
```

### 412 - Request conditions are not met

```js
{
  status: false,
  message: "Request conditions are not met"
}
```
