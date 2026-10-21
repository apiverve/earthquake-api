# Worldwide Earthquakes API - Ruby Gem

Worldwide Earthquakes tracks global seismic activity recorded over the past hour. It delivers magnitudes, epicenter coordinates, location names, tsunami warning flags, and 24-hour activity summaries sourced from the USGS.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_earthquake'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_earthquake
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_earthquake'

# Initialize the client
client = APIVerve::Earthquake::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({  })
  puts response["data"]
rescue APIVerve::Earthquake::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Earthquake::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Earthquake::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/earthquake?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/earthquake?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/earthquake?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
