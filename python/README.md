Worldwide Earthquakes API
============

Worldwide Earthquakes tracks global seismic activity recorded over the past hour. It delivers magnitudes, epicenter coordinates, location names, tsunami warning flags, and 24-hour activity summaries sourced from the USGS.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-worldwideearthquakes.svg)](https://pypi.org/project/apiverve-worldwideearthquakes/)

This is a Python wrapper for the [Worldwide Earthquakes API](https://apiverve.com/marketplace/earthquake?utm_source=pypi&utm_medium=referral&utm_content=readme)

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

Before using the Worldwide Earthquakes API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

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

The Worldwide Earthquakes API documentation is found here: [https://docs.apiverve.com/ref/earthquake](https://docs.apiverve.com/ref/earthquake?utm_source=pypi&utm_medium=referral&utm_content=readme).
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

# This API does not require a Query

try:
    result = api.execute()
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
