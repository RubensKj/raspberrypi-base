DIR="/etc/systemd/system/"

if [ -d "$DIR" ]; then
  echo "Installing the portainer service"
  sudo cp ./portainer.service $DIR.
  sudo systemctl start portainer.service
  sudo systemctl enable portainer.service
  sudo systemctl status portainer.service
else
  echo "Wasn't able to install the portainer service..."
  echo "The '$DIR' doesn't exist."
fi