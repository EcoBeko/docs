# api/chats/:chat-id/fetch (GET)

## Description

Retrieving chat messages

|    Note    |  Value  |
| :--------: | :-----: |
| Need Token | **Yes** |
| Test route |   No    |

## Request example

| Parameter | Description                       |
| :-------: | --------------------------------- |
|    :id    | Integer, friend's relationship id |

```http
http://domain.name/api/chats/12/fetch
```

## Response examples

| Response Status code | Description    |
| :------------------: | -------------- |
|         200          | Success        |
|         401          | No Token       |
|         403          | Unauthorized   |
|         404          | Chat not found |

### 200 - Success

```js
{
  status: true,
  message: "Success",
  messages: [
    // list of messages sorted by timestamp
    {
      owner: "you|friend",
      message: "message",
      time: "time"
    }
  ]
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
  message: "Chat not found"
}
```
