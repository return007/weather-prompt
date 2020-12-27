# Installer script
# Run it as:
#   $ ./install.sh

echo -e "\e[34m"
echo -e "
██╗    ██╗███████╗ █████╗ ████████╗██╗  ██╗███████╗██████╗     ██████╗ ██████╗  ██████╗ ███╗   ███╗██████╗ ████████╗
██║    ██║██╔════╝██╔══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗    ██╔══██╗██╔══██╗██╔═══██╗████╗ ████║██╔══██╗╚══██╔══╝
██║ █╗ ██║█████╗  ███████║   ██║   ███████║█████╗  ██████╔╝    ██████╔╝██████╔╝██║   ██║██╔████╔██║██████╔╝   ██║   
██║███╗██║██╔══╝  ██╔══██║   ██║   ██╔══██║██╔══╝  ██╔══██╗    ██╔═══╝ ██╔══██╗██║   ██║██║╚██╔╝██║██╔═══╝    ██║   
╚███╔███╔╝███████╗██║  ██║   ██║   ██║  ██║███████╗██║  ██║    ██║     ██║  ██║╚██████╔╝██║ ╚═╝ ██║██║        ██║   
 ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝        ╚═╝   
"
echo -e "\e[0m"

echo -ne "\e[1mEnter the API key to access your OpenWeather account.\nPress enter if you don't have an API key: \e[0m"
read apikey

if [[ $apikey == '' ]]; then
  # If the user doesn't have API key, we should ask them for first create their account
  echo "No issues! Let me help you in getting your free API key..."
  echo "Please follow the below steps:"
  echo "  1. Go to the following link to setup your account"
  echo -e "      \e[34mhttps://home.openweathermap.org/users/sign_up\e[0m"
  echo "  2. After signup, go to the following page to access your API key"
  echo -e "      \e[34mhttps://home.openweathermap.org/api_keys\e[0m"
  echo -ne "\n\e[1mEnter the API key to access your OpenWeather account: \e[0m"
  read apikey
fi

echo -ne "\e[1mEnter the name of your city: \e[0m"
read city

# Move the file
# Add the city name and API key inside ~/.promptrc
# Source .promptrc in .bashrc

BASHRC=`realpath ~/.bashrc`
DESTINATION_PROMPTRC=`realpath ~/.promptrc`
SOURCE_PROMPTRC=`realpath .promptrc`

cp -f $SOURCE_PROMPTRC $DESTINATION_PROMPTRC
sed -i "s/APIKEY=/APIKEY='$apikey'/g" $DESTINATION_PROMPTRC
sed -i "s/CITY=/CITY='$city'/g" $DESTINATION_PROMPTRC

echo "source $DESTINATION_PROMPTRC" >> $BASHRC
