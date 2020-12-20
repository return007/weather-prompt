# weather-prompt
Displays current weather information in bash PS1

Fetches hourly data from https://openweathermap.org/ and stores it locally.

## How to

1. Hahaha! First of all, star this repository. Hahaha! Just kidding, only do it you want to make me happy :)
2. Clone the repository and move `.promptrc` to your home directory.

   OR, run the following

   ```
   $ wget https://raw.githubusercontent.com/return007/weather-prompt/main/.promptrc
   ```

3. Source `.promptrc` in your `.bashrc`

   ```
   $ echo "source .promptrc" >> ~/.bashrc
   ```

4. Register on https://home.openweathermap.org/users/sign_up to get your free API key
5. Add the name of your city and APIKEY in your `~/.promptrc` file.
6. Source your `~/.bashrc` to see the changes.

## STATUS

#### DONE

 * Basic functionality

#### TODO

 * Installer script
