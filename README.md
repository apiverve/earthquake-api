# [Worldwide Earthquakes API](https://apiverve.com/marketplace/earthquake?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Worldwide Earthquakes tracks global seismic activity recorded over the past hour. It delivers magnitudes, epicenter coordinates and depth, location names, tsunami warning flags, USGS event links and 24-hour activity summaries sourced from the USGS. Filter by minimum magnitude; paid plans list the past 24 hours, search around any point, and add 7- and 30-day counts, the month&#x27;s largest quake and daily history.

The Worldwide Earthquakes API provides a simple, reliable way to integrate worldwide earthquakes functionality into your applications. Built for developers who need production-ready worldwide earthquakes capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/earthquake?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/earthquake?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/earthquake)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.WorldwideEarthquakes)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-earthquake/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_earthquake)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/earthquake)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_earthquake)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callWorldwideEarthquakesAPI() {
    try {
        const params = new URLSearchParams({
            minMagnitude: 2.5
        });

        const response = await fetch(`https://api.apiverve.com/v1/earthquake?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callWorldwideEarthquakesAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/earthquake?minMagnitude=2.5" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/earthquake
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/earthquake) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.WorldwideEarthquakes
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.WorldwideEarthquakes) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-earthquake
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-earthquake/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_earthquake
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_earthquake) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/earthquake
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/earthquake) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_earthquake
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_earthquake) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:earthquake-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/earthquake-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Worldwide Earthquakes API](https://apiverve.com/marketplace/earthquake?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/earthquake](https://docs.apiverve.com/ref/earthquake)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Worldwide Earthquakes API is commonly used for:

- **Web Applications** - Add worldwide earthquakes features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with worldwide earthquakes capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Worldwide Earthquakes API:

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

## Support & Community

- 🏠 **API Home**: [Worldwide Earthquakes API](https://apiverve.com/marketplace/earthquake?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
