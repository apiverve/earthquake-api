Worldwide Earthquakes API
============

Earthquake is a simple tool for getting earthquake data. It returns the earthquake data for the past hour.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Worldwide Earthquakes API](https://apiverve.com/marketplace/earthquake?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-worldwideearthquakes
```

Using `pip3`:

```bash
pip3 install apiverve-worldwideearthquakes
```

---

## Configuration

Before using the earthquake API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_worldwideearthquakes.apiClient import EarthquakeAPIClient

# Initialize the client with your APIVerve API key
api = EarthquakeAPIClient("[YOUR_API_KEY]")

# This API does not require a Query

try:
    # Make the API call
    result = api.execute()

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Worldwide Earthquakes API documentation is found here: [https://docs.apiverve.com/ref/earthquake](https://docs.apiverve.com/ref/earthquake?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_worldwideearthquakes.apiClient import EarthquakeAPIClient

# Initialize the client with your APIVerve API key
api = EarthquakeAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
# This API does not require a Query
```

###### Simple Request

```python
# Make a request to the API
result = api.execute()

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "earthquakes_LastUpdated": 1740085202,
    "earthquakes_LastHour": 13,
    "earthquakes": [
      {
        "mag": 1.63,
        "place": "4 km SSW of Home Gardens, CA",
        "time": 1740084740320,
        "status": "automatic",
        "tsunami": 0,
        "sig": 41,
        "net": "ci",
        "types": ",nearby-cities,origin,phase-data,scitech-link,",
        "nst": 30,
        "dmin": 0.07665,
        "rms": 0.16,
        "gap": 212,
        "magType": "ml",
        "type": "earthquake",
        "title": "M 1.6 - 4 km SSW of Home Gardens, CA",
        "coordinates": [
          -117.5313333,
          33.8441667
        ]
      },
      {
        "mag": 1.53,
        "place": "3 km  of The Geysers, CA",
        "time": 1740084398050,
        "status": "automatic",
        "tsunami": 0,
        "sig": 36,
        "net": "nc",
        "types": ",focal-mechanism,nearby-cities,origin,phase-data,",
        "nst": 31,
        "dmin": 0.01013,
        "rms": 0.04,
        "gap": 61,
        "magType": "md",
        "type": "earthquake",
        "title": "M 1.5 - 3 km  of The Geysers, CA",
        "coordinates": [
          -122.770835876465,
          38.8066673278809
        ]
      },
      {
        "mag": 1.5,
        "place": "36 km SSW of Los Ybanez, Texas",
        "time": 1740083760065,
        "status": "automatic",
        "tsunami": 0,
        "sig": 35,
        "net": "tx",
        "types": ",origin,phase-data,",
        "nst": 21,
        "dmin": 0,
        "rms": 0.5,
        "gap": 98,
        "magType": "ml",
        "type": "earthquake",
        "title": "M 1.5 - 36 km SSW of Los Ybanez, Texas",
        "coordinates": [
          -102.118,
          32.437
        ]
      },
      {
        "mag": 1.28,
        "place": "2 km NNE of Rancho San Diego, CA",
        "time": 1740083416660,
        "status": "automatic",
        "tsunami": 0,
        "sig": 25,
        "net": "ci",
        "types": ",nearby-cities,origin,phase-data,scitech-link,",
        "nst": 18,
        "dmin": 0.02613,
        "rms": 0.18,
        "gap": 117,
        "magType": "ml",
        "type": "earthquake",
        "title": "M 1.3 - 2 km NNE of Rancho San Diego, CA",
        "coordinates": [
          -116.9288333,
          32.7591667
        ]
      },
      {
        "mag": 1.3,
        "place": "2 km N of The Geysers, CA",
        "time": 1740083145550,
        "status": "automatic",
        "tsunami": 0,
        "sig": 26,
        "net": "nc",
        "types": ",nearby-cities,origin,phase-data,",
        "nst": 17,
        "dmin": 0.008002,
        "rms": 0.02,
        "gap": 75,
        "magType": "md",
        "type": "earthquake",
        "title": "M 1.3 - 2 km N of The Geysers, CA",
        "coordinates": [
          -122.758499145508,
          38.792667388916
        ]
      },
      {
        "mag": 2.03,
        "place": "23 km NE of San Ardo, CA",
        "time": 1740083087170,
        "status": "automatic",
        "tsunami": 0,
        "sig": 63,
        "net": "nc",
        "types": ",nearby-cities,origin,phase-data,",
        "nst": 24,
        "dmin": 0.04482,
        "rms": 0.08,
        "gap": 78,
        "magType": "md",
        "type": "earthquake",
        "title": "M 2.0 - 23 km NE of San Ardo, CA",
        "coordinates": [
          -120.757835388184,
          36.1879997253418
        ]
      },
      {
        "mag": 1.5,
        "place": "18 km N of Nellis Air Force Base, Nevada",
        "time": 1740082632669,
        "status": "automatic",
        "tsunami": 0,
        "sig": 35,
        "net": "nn",
        "types": ",origin,phase-data,",
        "nst": 12,
        "dmin": 0.142,
        "rms": 0.352,
        "gap": 324.6699999999999,
        "magType": "ml",
        "type": "earthquake",
        "title": "M 1.5 - 18 km N of Nellis Air Force Base, Nevada",
        "coordinates": [
          -115.0204,
          36.4137
        ]
      },
      {
        "mag": 2.4,
        "place": "42 km ENE of Susitna North, Alaska",
        "time": 1740082487421,
        "status": "automatic",
        "tsunami": 0,
        "sig": 89,
        "net": "ak",
        "types": ",origin,phase-data,",
        "rms": 0.58,
        "magType": "ml",
        "type": "earthquake",
        "title": "M 2.4 - 42 km ENE of Susitna North, Alaska",
        "coordinates": [
          -149.1448,
          62.358
        ]
      },
      {
        "mag": 0.58,
        "place": "0 km  of The Geysers, CA",
        "time": 1740082396860,
        "status": "automatic",
        "tsunami": 0,
        "sig": 5,
        "net": "nc",
        "types": ",nearby-cities,origin,phase-data,",
        "nst": 8,
        "dmin": 0.01016,
        "rms": 0.04,
        "gap": 122,
        "magType": "md",
        "type": "earthquake",
        "title": "M 0.6 - 0 km  of The Geysers, CA",
        "coordinates": [
          -122.75666809082,
          38.7779998779297
        ]
      },
      {
        "mag": 0.77,
        "place": "4 km NNW of The Geysers, CA",
        "time": 1740082221410,
        "status": "automatic",
        "tsunami": 0,
        "sig": 9,
        "net": "nc",
        "types": ",nearby-cities,origin,phase-data,",
        "nst": 7,
        "dmin": 0.006593,
        "rms": 0.01,
        "gap": 141,
        "magType": "md",
        "type": "earthquake",
        "title": "M 0.8 - 4 km NNW of The Geysers, CA",
        "coordinates": [
          -122.78116607666,
          38.8066673278809
        ]
      },
      {
        "mag": 0.76,
        "place": "9 km NW of The Geysers, CA",
        "time": 1740082075350,
        "status": "automatic",
        "tsunami": 0,
        "sig": 9,
        "net": "nc",
        "types": ",nearby-cities,origin,phase-data,",
        "nst": 12,
        "dmin": 0.005851,
        "rms": 0.02,
        "gap": 80,
        "magType": "md",
        "type": "earthquake",
        "title": "M 0.8 - 9 km NW of The Geysers, CA",
        "coordinates": [
          -122.842498779297,
          38.8226661682129
        ]
      },
      {
        "mag": 1.8,
        "place": "47 km ENE of Susitna North, Alaska",
        "time": 1740081957855,
        "status": "automatic",
        "tsunami": 0,
        "sig": 50,
        "net": "ak",
        "types": ",origin,phase-data,",
        "rms": 0.79,
        "magType": "ml",
        "type": "earthquake",
        "title": "M 1.8 - 47 km ENE of Susitna North, Alaska",
        "coordinates": [
          -149.0437,
          62.3668
        ]
      },
      {
        "mag": 3.14,
        "place": "73 km N of Brenas, Puerto Rico",
        "time": 1740081663500,
        "status": "reviewed",
        "tsunami": 0,
        "sig": 152,
        "net": "pr",
        "types": ",origin,phase-data,",
        "nst": 10,
        "dmin": 0.8083,
        "rms": 0.23,
        "gap": 271,
        "magType": "md",
        "type": "earthquake",
        "title": "M 3.1 - 73 km N of Brenas, Puerto Rico",
        "coordinates": [
          -66.3835,
          19.1311666666667
        ]
      }
    ]
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `EarthquakeAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_worldwideearthquakes.apiClient import EarthquakeAPIClient, EarthquakeAPIClientError

api = EarthquakeAPIClient("[YOUR_API_KEY]")

# This API does not require a Query

try:
    result = api.execute()
    print("Success!")
    print(result)
except EarthquakeAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_worldwideearthquakes.apiClient import EarthquakeAPIClient, EarthquakeAPIClientError

api = EarthquakeAPIClient("[YOUR_API_KEY]")

# This API does not require a Query

try:
    result = api.execute()

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except EarthquakeAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_worldwideearthquakes.apiClient import EarthquakeAPIClient, EarthquakeAPIClientError

# This API does not require a Query

# Using context manager ensures proper cleanup
with EarthquakeAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute()
        print(result)
    except EarthquakeAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_worldwideearthquakes.apiClient import EarthquakeAPIClient

# Enable debug mode
api = EarthquakeAPIClient("[YOUR_API_KEY]", debug=True)

# This API does not require a Query

# Debug information will be printed to console
result = api.execute()
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_worldwideearthquakes.apiClient import EarthquakeAPIClient

api = EarthquakeAPIClient("[YOUR_API_KEY]")

try:
    # This API does not require a Query
    result = api.execute()
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
