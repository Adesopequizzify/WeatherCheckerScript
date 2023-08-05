# Weather Checker Script

This is a simple script that allows you to check the current weather for a specific location using the OpenWeatherMap API. The script prompts you for your API key and provides a menu to either check the weather or exit.

## How to Use

1. Clone or download this repository to your local machine.
2. Open a terminal window and navigate to the directory where the script is located.
3. Run the script by entering the following command:

    ```bash
    bash weather.sh
    ```

4. Follow the prompts to enter your OpenWeatherMap API key. If you don't have an API key, you can follow the instructions below to obtain one.
5. Once the API key is validated, you will see a menu with options to check the weather or exit.
6. Choose the "Check Weather" option, enter the location you want to check, and the script will display the current weather information.

## How to Obtain an OpenWeatherMap API Key

1. Visit the [OpenWeatherMap website](https://home.openweathermap.org/users/sign_up) and sign up for a free account.
2. After signing up, log in to your account.
3. Navigate to the [API Keys](https://home.openweathermap.org/api_keys) section.
4. Click on the "Generate" button to create a new API key.
5. Copy the generated API key and use it when prompted by the script.

## Test API Key

For testing purposes, you can use the following API key: `0076f5c2e949981a7dac2b6129a7fd47`. Please note that this is a shared test API key and may have usage limitations. It's recommended to obtain your own API key for production use.

**Disclaimer:** This test API key is provided for demonstration purposes only and may have limitations or restrictions. It's recommended to obtain your own API key for proper usage.

## Dependencies

This script requires `curl` and `jq` to be installed in your terminal environment. You can install them using the following commands:

```bash
pkg install curl jq
