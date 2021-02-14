# api/points/fetch/:type (GET)

## Description

Get points by their type (recycle, utilization)

|    Note    | Value |
| :--------: | :---: |
| Need Token |  No   |
| Test route |  No   |

## Request example

| Parameter | Description               |
| :-------: | ------------------------- |
|   :type   | Point type                |
|   query   | Array of waste types ids' |

```js
{
  query: [
    2, 3, 4
  ],
}
```

## Response examples

| Response Status code | Description                    |
| :------------------: | ------------------------------ |
|         200          | Success                        |
|         412          | Request conditions are not met |

### 200 - Success

```js
{
  status: true,
  message: "Success"
  points: [
    // query result
    {
      id: 1,
      title: "point-title",
      address: "point-address",
      workingTime: "point-workingTime",
      site: "point-site",
      type: "point-type",
      phone: "point-phone",
      additionalInfo: "point-additionalInfo",
      longitude: 83.70,
      latitude: 83.10,
      icon: "point-icon"
    }
  ]
}
```

### 412 - Request conditions are not met

```js
{
  status: false,
  message: "Request conditions are not met"
}
```
