# api/token/validate (POST)

## Description

Validate a given token

|    Note    | Value |
| :--------: | :---: |
| Need Token |  No   |
| Test route |  No   |

## Request example

| Parameter | Description |
| :-------: | ----------- |
|   token   | Text        |

```js
{
  token: "token-string",
}
```

## Response examples

| Response Status code | Description                    |
| :------------------: | ------------------------------ |
|         200          | Valid                          |
|         406          | Validation failed              |
|         412          | Request conditions are not met |

### 200 - Valid

```js
{
  status: true,
  message: "Token is Valid"
}
```

### 406 - Validation failed

```js
{
  status: false,
  message: "Bad token"
}
```

### 412 - Request conditions are not met

```js
{
  status: false,
  message: "Request conditions are not met"
}
```
