# api/posts/:id/comments/write (POST)

## Description

Write a new comment to a post

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Request example

| Parameter | Description            |
| :-------: | ---------------------- |
|    :id    | Integer, post id       |
|  comment  | String, comment to add |

```js
{
  comment: "some-text",
}
```

## Response examples

| Response Status code | Description                    |
| :------------------: | ------------------------------ |
|         201          | Created                        |
|         401          | No Token                       |
|         403          | Unauthorized                   |
|         404          | Not found                      |
|         412          | Request conditions are not met |

### 201 - Created

```js
{
  status: true,
  message: "Comment added"
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

### 404 - Not found

```js
{
  status: false,
  message: "Post not found"
}
```

### 412 - Request conditions are not met

```js
{
  status: false,
  message: "Request conditions are not met"
}
```
