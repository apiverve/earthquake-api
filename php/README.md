# Worldwide Earthquakes API - PHP Package

Earthquake is a simple tool for getting earthquake data. It returns the earthquake data for the past hour.

## Installation

Install via Composer:

```bash
composer require apiverve/earthquake
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Earthquake\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute();

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Earthquake\Client;
use APIVerve\Earthquake\Exceptions\APIException;
use APIVerve\Earthquake\Exceptions\ValidationException;

try {
    $response = $client->execute([]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/earthquake?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/earthquake?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/earthquake?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
