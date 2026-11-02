using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.WorldwideEarthquakes
{
    /// <summary>
    /// Query options for the Worldwide Earthquakes API
    /// </summary>
    public class WorldwideEarthquakesQueryOptions
    {
        /// <summary>
        /// Time window: hour (the past hour) or day (the past 24 hours)
        /// </summary>
        [JsonProperty("period")]
        public string Period { get; set; }

        /// <summary>
        /// Only return earthquakes of at least this magnitude
        /// </summary>
        [JsonProperty("minMagnitude")]
        public double? MinMagnitude { get; set; }

        /// <summary>
        /// Latitude to search around. With lon, returns only earthquakes within radius km, nearest first, each with distanceKm
        /// </summary>
        [JsonProperty("lat")]
        public double? Lat { get; set; }

        /// <summary>
        /// Longitude to search around (use with lat)
        /// </summary>
        [JsonProperty("lon")]
        public double? Lon { get; set; }

        /// <summary>
        /// Search radius in kilometers around lat/lon
        /// </summary>
        [JsonProperty("radius")]
        public double? Radius { get; set; }

        /// <summary>
        /// Include one row per UTC day for the last 30 days: event count, largest magnitude and M4.5+ count
        /// </summary>
        [JsonProperty("daily")]
        public bool? Daily { get; set; }
    }
}
