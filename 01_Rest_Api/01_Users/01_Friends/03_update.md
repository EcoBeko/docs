# api/users/friends/update (PUT)

## Description

Update relationship status with friend

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Request example

| Parameter | Description                                                                  |
| :-------: | ---------------------------------------------------------------------------- |
|   phone   | Following Kazakhstan's phone pattern (omitting prefix). Friends phone number |
|  action   | String. Represents new relationship status                                   |

```js
{
  phone: "7086144672",
  action: "request|remove|friends"
}
```

## Response examples

| Response Status code | Description                    |
| :------------------: | ------------------------------ |
|         200          | Updated                        |
|         401          | No Token                       |
|         403          | Unauthorized                   |
|         404          | Phone number not exists        |
|         412          | Request conditions are not met |

### 200 - Updated

```js
{
  status: true,
  message: "Relationship updated"
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

### 404 - Phone number doesn't exists

```js
{
  status: false,
  message: "Phone number does not exists"
}
```

### 412 - Request conditions are not met

```js
{
  status: false,
  message: "Request conditions are not met"
}
```
