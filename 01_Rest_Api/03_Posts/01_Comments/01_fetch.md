# api/posts/:id/comments/fetch (GET)

## Description

Retrieve comments by post-id

|    Note    | Value |
| :--------: | :---: |
| Need Token |  No   |
| Test route |  No   |

## Request example

| Parameter | Description      |
| :-------: | ---------------- |
|    :id    | Integer, Post id |

```http
http://domain.name/api/posts/comments/fetch/123
```

## Response examples

| Response Status code | Description |
| :------------------: | ----------- |
|         200          | Success     |
|         404          | Not found   |

### 200 - Success

```js
{
  status: true,
  message: "Success",
  comments: [
    // post comments
    {
      owner: {
        avatar: "owner-avatar",
        name: "owner-name",
        surname: "owner-surname"
      },
      text: "comment-text",
      time: "comment-time"
    }
  ]
}
```
