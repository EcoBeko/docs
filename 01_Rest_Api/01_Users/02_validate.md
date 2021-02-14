# api/users/validate (POST)

## Description

Validates user credentials

|    Note    | Value |
| :--------: | :---: |
| Need Token |  No   |
| Test route |  No   |

## Request example

| Parameter | Description               |
| :-------: | ------------------------- |
|   field   | String, field to validate |
|   value   | Any, value to test        |

```js
{
  field: "phone",
  value: "some-value"
}
```

## Response examples

| Response Status code | Description                    |
| :------------------: | ------------------------------ |
|         200          | Success                        |
|         400          | Fail                           |
|         412          | Request conditions are not met |

### 200 - Success

```js
{
  status: true,
  message: "Credentials are valid"
}
```

### 400 - Fail

```js
{
  status: false,
  message: "Validation failed";
}
```

### 412 - Request conditions are not met

```js
{
  status: false,
  message: "Request conditions are not met"
}
```
