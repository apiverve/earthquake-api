// Package earthquake provides a Go client for the Worldwide Earthquakes API.
//
// For more information, visit: https://apiverve.com/marketplace/earthquake?utm_source=go&utm_medium=readme
package earthquake

import (
	"fmt"
	"reflect"
	"regexp"
	"strings"
)

// ValidationRule defines validation constraints for a parameter.
type ValidationRule struct {
	Type      string
	Required  bool
	Min       *float64
	Max       *float64
	MinLength *int
	MaxLength *int
	Format    string
	Enum      []string
}

// ValidationError represents a parameter validation error.
type ValidationError struct {
	Errors []string
}

func (e *ValidationError) Error() string {
	return "Validation failed: " + strings.Join(e.Errors, "; ")
}

// Helper functions for pointers
func float64Ptr(v float64) *float64 { return &v }
func intPtr(v int) *int             { return &v }

// Format validation patterns
var formatPatterns = map[string]*regexp.Regexp{
	"email":    regexp.MustCompile(`^[^\s@]+@[^\s@]+\.[^\s@]+$`),
	"url":      regexp.MustCompile(`^https?://.+`),
	"ip":       regexp.MustCompile(`^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$|^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$`),
	"date":     regexp.MustCompile(`^\d{4}-\d{2}-\d{2}$`),
	"hexColor": regexp.MustCompile(`^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$`),
}


// ResponseData contains the data returned by the Worldwide Earthquakes API.
type ResponseData struct {
	Earthquakes_LastUpdated int `json:"earthquakes_LastUpdated"`
	Earthquakes_LastHour int `json:"earthquakes_LastHour"`
	Earthquakes []EarthquakesItem `json:"earthquakes"`
}

// EarthquakesItem represents an item in the Earthquakes array.
type EarthquakesItem struct {
	Mag float64 `json:"mag"`
	Place string `json:"place"`
	Time int `json:"time"`
	Status string `json:"status"`
	Tsunami int `json:"tsunami"`
	Sig int `json:"sig"`
	Net string `json:"net"`
	Types string `json:"types"`
	Nst int `json:"nst"`
	Dmin float64 `json:"dmin"`
	Rms float64 `json:"rms"`
	Gap int `json:"gap"`
	MagType string `json:"magType"`
	Type string `json:"type"`
	Title string `json:"title"`
	Coordinates []float64 `json:"coordinates"`
}
