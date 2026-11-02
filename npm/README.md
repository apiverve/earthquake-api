# Worldwide Earthquakes API

Worldwide Earthquakes tracks global seismic activity recorded over the past hour. It delivers magnitudes, epicenter coordinates and depth, location names, tsunami warning flags, USGS event links and 24-hour activity summaries sourced from the USGS. Filter by minimum magnitude; paid plans list the past 24 hours, search around any point, and add 7- and 30-day counts, the month's largest quake and daily history.

[![npm version](https://img.shields.io/npm/v/@apiverve/earthquake.svg)](https://www.npmjs.com/package/@apiverve/earthquake)

This is a JavaScript wrapper for the [Worldwide Earthquakes API](https://apiverve.com/marketplace/earthquake?utm_source=npm&utm_medium=referral&utm_content=readme)

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
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Worldwide Earthquakes API documentation is found here: [https://docs.apiverve.com/ref/earthquake](https://docs.apiverve.com/ref/earthquake?utm_source=npm&utm_medium=referral&utm_content=readme).
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
var query = {
  period: "hour",
  minMagnitude: 2.5,
  lat: 34.05,
  lon: -118.24,
  radius: 500,
  daily: false
};

api.execute(query, function (error, data) {
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
var query = {
  period: "hour",
  minMagnitude: 2.5,
  lat: 34.05,
  lon: -118.24,
  radius: 500,
  daily: false
};

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
    var query = {
  period: "hour",
  minMagnitude: 2.5,
  lat: 34.05,
  lon: -118.24,
  radius: 500,
  daily: false
};

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
    "earthquakes_LastUpdated": "2026-10-26T20:35:55.000Z",
    "earthquakes_LastHour": 7,
    "count24h": 200,
    "largestMagnitude24h": 5.5,
    "avgMagnitude24h": 1.74,
    "count7d": 1889,
    "count30d": 9917,
    "avgDailyCount30d": 335.3,
    "m45Count30d": 735,
    "largestMagnitude7d": 7,
    "largestMagnitude30d": 7.7,
    "largestPlace30d": "12 km WSW of Pitaloza Arriba, Panama",
    "largestTime30d": 1791568566036,
    "daysStored": 30,
    "period": "day",
    "count": 2,
    "earthquakes": [
      {
        "mag": 1.63,
        "place": "2 km NW of Sylmar, CA",
        "time": 1792978838050,
        "felt": null,
        "cdi": null,
        "mmi": null,
        "alert": null,
        "status": "reviewed",
        "tsunami": 0,
        "sig": 41,
        "net": "ci",
        "types": ",focal-mechanism,nearby-cities,origin,phase-data,scitech-link,",
        "nst": 56,
        "dmin": 0.04284,
        "rms": 0.27,
        "gap": 34,
        "magType": "ml",
        "type": "earthquake",
        "title": "M 1.6 - 2 km NW of Sylmar, CA",
        "coordinates": [
          -118.464666666667,
          34.3231666666667
        ],
        "depthKm": 4.21,
        "id": "ci41352567",
        "url": "https://earthquake.usgs.gov/earthquakes/eventpage/ci41352567",
        "distanceKm": 37
      },
      {
        "mag": 1.28,
        "place": "1 km WNW of Anaheim, CA",
        "time": 1792989969550,
        "felt": null,
        "cdi": null,
        "mmi": null,
        "alert": null,
        "status": "automatic",
        "tsunami": 0,
        "sig": 25,
        "net": "ci",
        "types": ",nearby-cities,origin,phase-data,",
        "nst": 59,
        "dmin": 0.03761,
        "rms": 0.24,
        "gap": 55,
        "magType": "ml",
        "type": "earthquake",
        "title": "M 1.3 - 1 km WNW of Anaheim, CA",
        "coordinates": [
          -117.9,
          33.839
        ],
        "depthKm": 8.14,
        "id": "ci41352687",
        "url": "https://earthquake.usgs.gov/earthquakes/eventpage/ci41352687",
        "distanceKm": 39
      }
    ],
    "daily": [
      {
        "date": "2026-09-28",
        "count": 395,
        "maxMagnitude": 5.4,
        "m45Count": 34
      },
      {
        "date": "2026-09-29",
        "count": 366,
        "maxMagnitude": 5.6,
        "m45Count": 24
      },
      {
        "date": "2026-09-30",
        "count": 372,
        "maxMagnitude": 5.6,
        "m45Count": 24
      },
      {
        "date": "2026-10-01",
        "count": 415,
        "maxMagnitude": 5.3,
        "m45Count": 22
      },
      {
        "date": "2026-10-02",
        "count": 357,
        "maxMagnitude": 5.7,
        "m45Count": 35
      },
      {
        "date": "2026-10-03",
        "count": 332,
        "maxMagnitude": 5.7,
        "m45Count": 18
      },
      {
        "date": "2026-10-04",
        "count": 332,
        "maxMagnitude": 5.1,
        "m45Count": 18
      },
      {
        "date": "2026-10-05",
        "count": 323,
        "maxMagnitude": 5.3,
        "m45Count": 17
      },
      {
        "date": "2026-10-06",
        "count": 367,
        "maxMagnitude": 5.8,
        "m45Count": 18
      },
      {
        "date": "2026-10-07",
        "count": 428,
        "maxMagnitude": 5.2,
        "m45Count": 23
      },
      {
        "date": "2026-10-08",
        "count": 312,
        "maxMagnitude": 6.3,
        "m45Count": 20
      },
      {
        "date": "2026-10-09",
        "count": 390,
        "maxMagnitude": 7.7,
        "m45Count": 63
      },
      {
        "date": "2026-10-10",
        "count": 334,
        "maxMagnitude": 6,
        "m45Count": 38
      },
      {
        "date": "2026-10-11",
        "count": 325,
        "maxMagnitude": 6.2,
        "m45Count": 28
      },
      {
        "date": "2026-10-12",
        "count": 381,
        "maxMagnitude": 6.1,
        "m45Count": 30
      },
      {
        "date": "2026-10-13",
        "count": 331,
        "maxMagnitude": 6.8,
        "m45Count": 23
      },
      {
        "date": "2026-10-14",
        "count": 260,
        "maxMagnitude": 5.9,
        "m45Count": 12
      },
      {
        "date": "2026-10-15",
        "count": 303,
        "maxMagnitude": 5.6,
        "m45Count": 14
      },
      {
        "date": "2026-10-16",
        "count": 340,
        "maxMagnitude": 6.9,
        "m45Count": 18
      },
      {
        "date": "2026-10-17",
        "count": 300,
        "maxMagnitude": 5.7,
        "m45Count": 12
      },
      {
        "date": "2026-10-18",
        "count": 421,
        "maxMagnitude": 5.2,
        "m45Count": 12
      },
      {
        "date": "2026-10-19",
        "count": 354,
        "maxMagnitude": 6,
        "m45Count": 29
      },
      {
        "date": "2026-10-20",
        "count": 290,
        "maxMagnitude": 6.3,
        "m45Count": 24
      },
      {
        "date": "2026-10-21",
        "count": 315,
        "maxMagnitude": 5.3,
        "m45Count": 19
      },
      {
        "date": "2026-10-22",
        "count": 372,
        "maxMagnitude": 7,
        "m45Count": 25
      },
      {
        "date": "2026-10-23",
        "count": 302,
        "maxMagnitude": 5.7,
        "m45Count": 24
      },
      {
        "date": "2026-10-24",
        "count": 255,
        "maxMagnitude": 6.9,
        "m45Count": 49
      },
      {
        "date": "2026-10-25",
        "count": 234,
        "maxMagnitude": 6.5,
        "m45Count": 26
      },
      {
        "date": "2026-10-26",
        "count": 217,
        "maxMagnitude": 5.5,
        "m45Count": 19
      },
      {
        "date": "2026-10-27",
        "count": 194,
        "maxMagnitude": 5.8,
        "m45Count": 17
      }
    ]
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
