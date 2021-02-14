# api/users/stats/add (PUT)

## Description

Update user statistics

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Request example

| Parameter | Description                   |
| :-------: | ----------------------------- |
|   trees   | Float, amount of saved trees  |
|  energy   | Float, amount of saved energy |
|   waste   | Float, miscellaneous rubbish  |

```js
{
  trees: 0.1,
  energy: 0.5,
  waste: 0.3
}
```

## Response examples

| Response Status code | Description                    |
| :------------------: | ------------------------------ |
|         200          | Added                          |
|         401          | No token presented             |
|         403          | Unauthorized                   |
|         412          | Request conditions are not met |

### 200 - Added

```js
{
  status: true,
  message: "Added"
}
```

### 401 - No token presented

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
  message: "Bad Token"
}
```

### 412 - Request conditions are not met

```js
{
  status: false,
  message: "Request conditions are not met"
}
```
