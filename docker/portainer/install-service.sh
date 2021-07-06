DIR="/etc/systemd/system/"

if [ -d "$DIR" ] then
  echo "Installing the portainer service"
  sudo cp ./portainer.service $DIR.
else
  echo "Wasn't able to install the portainer service..."
  echo "The '$DIR' doesn't exist."
fi