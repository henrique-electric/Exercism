// Package weather contains functions to work with the weather.
package weather


// CurrentCondition stores the given condition.
var CurrentCondition string 

// CurrentLocation stores the given location.
var CurrentLocation string 


// Forecast  Prints the current condition the a location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
