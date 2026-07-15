# Worldwide Earthquakes API

Earthquake is a simple tool for getting earthquake data. It returns the earthquake data for the past hour.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/earthquake.svg)](https://www.npmjs.com/package/@apiverve/earthquake)

This is a Javascript Wrapper for the [Worldwide Earthquakes API](https://apiverve.com/marketplace/earthquake?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/earthquake
```

Using yarn:
```shell
yarn add @apiverve/earthquake
```

---

## Configuration

Before using the Worldwide Earthquakes API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The Worldwide Earthquakes API documentation is found here: [https://docs.apiverve.com/ref/earthquake](https://docs.apiverve.com/ref/earthquake?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const earthquakeAPI = require('@apiverve/earthquake');
const api = new earthquakeAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
// This API does not require a Query

api.execute(function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
// This API does not require a Query

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    // This API does not require a Query

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "earthquakes_LastUpdated": "2026-02-18T12:00:00.000Z",
    "earthquakes_LastHour": 9,
    "count24h": 187,
    "largestMagnitude24h": 5.2,
    "avgMagnitude24h": 1.84,
    "earthquakes": [
      {
        "mag": 3.4,
        "place": "153 km SSW of Channel Islands Beach, California",
        "time": 1765921110756,
        "felt": 1,
        "cdi": 2.2,
        "mmi": 2.538,
        "status": "reviewed",
        "tsunami": 0,
        "sig": 178,
        "net": "us",
        "types": ",dyfi,nearby-cities,origin,phase-data,scitech-link,shakemap,",
        "nst": 36,
        "dmin": 0.479,
        "rms": 0.65,
        "gap": 247,
        "magType": "ml",
        "type": "earthquake",
        "title": "M 3.4 - 153 km SSW of Channel Islands Beach, California",
        "coordinates": [
          -119.931,
          32.9103
        ]
      },
      {
        "mag": 2.25,
        "place": "6 km NW of The Geysers, CA",
        "time": 1765921522850,
        "status": "automatic",
        "tsunami": 0,
        "sig": 78,
        "net": "nc",
        "types": ",focal-mechanism,nearby-cities,origin,phase-data,",
        "nst": 54,
        "dmin": 0.01126,
        "rms": 0.05,
        "gap": 23,
        "magType": "md",
        "type": "earthquake",
        "title": "M 2.3 - 6 km NW of The Geysers, CA",
        "coordinates": [
          -122.792831,
          38.819332
        ]
      }
    ]
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
