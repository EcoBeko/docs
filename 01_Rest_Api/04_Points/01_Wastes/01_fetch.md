# api/points/wastes/fetch (GET)

## Description

Get all waste types

|    Note    | Value |
| :--------: | :---: |
| Need Token |  No   |
| Test route |  No   |

## Response examples

| Response Status code | Description |
| :------------------: | ----------- |
|         200          | Success     |

### Success

HTTP code: 200

```js
{
  status: true,
  message: "Success"
  wastes: [
    // waste types
    {
      id: 1,
      title: "waste-title",
      mark: "waste-mark",
      icon: "waste-icon",
      saveType: "trees,energy",
    }
  ]
}
```
