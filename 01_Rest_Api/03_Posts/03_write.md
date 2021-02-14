# api/posts/write (POST)

## Description

Create a new post

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Request example

| Parameter | Description                  |
| :-------: | ---------------------------- |
|   title   | String, title of the article |
|  article  | String, article itself       |
|   image   | String, image's hash sum     |

```js
{
  title: "some-title",
  article: "some-article",
  image: "some-image",
}
```

## Response examples

| Response Status code | Description                     |
| :------------------: | ------------------------------- |
|         201          | Created                         |
|         401          | No token presented              |
|         403          | Token presented, but is invalid |
|         406          | Validation failed               |
|         412          | Request conditions are not met  |

### 201 - Created

```js
{
  status: true,
  message: "Article created"
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

### 406 - Validation failed

```js
{
  status: false,
  message: "Some-fields have failed the validation"
}
```

### 412 - Request conditions are not met

```js
{
  status: false,
  message: "Request conditions are not met"
}
```
