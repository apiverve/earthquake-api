# Worldwide Earthquakes API - Dart/Flutter Client

Worldwide Earthquakes tracks global seismic activity recorded over the past hour. It delivers magnitudes, epicenter coordinates and depth, location names, tsunami warning flags, USGS event links and 24-hour activity summaries sourced from the USGS. Filter by minimum magnitude; paid plans list the past 24 hours, search around any point, and add 7- and 30-day counts, the month's largest quake and daily history.

[![pub package](https://img.shields.io/pub/v/apiverve_earthquake.svg)](https://pub.dev/packages/apiverve_earthquake)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Worldwide Earthquakes API](https://apiverve.com/marketplace/earthquake?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_earthquake: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_earthquake/apiverve_earthquake.dart';

void main() async {
  final client = EarthquakeClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'period': 'hour',
      'minMagnitude': 2.5,
      'lat': 34.05,
      'lon': -118.24,
      'radius': 500,
      'daily': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Worldwide Earthquakes API](https://apiverve.com/marketplace/earthquake?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/earthquake](https://docs.apiverve.com/ref/earthquake?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
