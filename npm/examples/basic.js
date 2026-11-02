/**
 * Basic Example - Worldwide Earthquakes API
 *
 * This example demonstrates how to use the Worldwide Earthquakes API.
 * Make sure to set your API key in the .env file or replace '[YOUR_API_KEY]' below.
 */

require('dotenv').config();
const earthquakeAPI = require('../index.js');

// Initialize the API client
const api = new earthquakeAPI({
    api_key: process.env.API_KEY || '[YOUR_API_KEY]'
});

// Example query
var query = {
  period: "hour",
  minMagnitude: 2.5,
  lat: 34.05,
  lon: -118.24,
  radius: 500,
  daily: false
};

// Make the API request using callback
console.log('Making request to Worldwide Earthquakes API...\n');

api.execute(query, function (error, data) {
    if (error) {
        console.error('Error occurred:');
        if (error.error) {
            console.error('Message:', error.error);
            console.error('Status:', error.status);
        } else {
            console.error(JSON.stringify(error, null, 2));
        }
        return;
    }

    console.log('Response:');
    console.log(JSON.stringify(data, null, 2));
});
