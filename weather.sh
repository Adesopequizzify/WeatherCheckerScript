#!/bin/bash

# Function to check weather
function check_weather {
    # Prompt user for location
    read -p "Enter the location for weather check: " location

    # Use curl to fetch weather data from OpenWeatherMap API
    weather_data=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=$location&units=metric&appid=$API_KEY")

    # Extract relevant information from the weather data
    temperature=$(echo "$weather_data" | jq -r '.main.temp')
    description=$(echo "$weather_data" | jq -r '.weather[0].description')

    # Display the weather information
    if [ "$temperature" == "null" ] || [ "$description" == "null" ]; then
        echo "Weather data not available for $location."
    else
        echo "Current weather in $location:"
        echo "Temperature: $temperature°C"
        echo "Description: $description"
    fi
}

# Prompt user for OpenWeatherMap API key
read -p "Enter your OpenWeatherMap API key: " API_KEY

# Test the API key by fetching weather data for a dummy location
test_data=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=DummyLocation&units=metric&appid=$API_KEY")
if [[ "$test_data" == *"Not found"* ]]; then
    echo "Invalid API key. Exiting..."
    exit 1
fi

# Display menu
while true; do
    echo "Menu:"
    echo "1. Check Weather"
    echo "2. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            check_weather
            ;;
        2)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done

