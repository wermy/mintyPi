#!/bin/bash

if nc -zw1 google.com 443; then
  echo "Internet connection OK"
else
  echo "No internet detected!  You need to be connected to the internet to run the update script."
  sleep 5s
  exit 1
fi

echo "Updating mintyPi..."

echo "Updating material theme..."
cd /home/pi/.emulationstation/themes/es-theme-material
git fetch --all
git reset --hard origin/master
echo "Done!"
sleep 2s

echo "Updating carbon theme..."
cd /home/pi/.emulationstation/themes/es-theme-carbon
git fetch --all
git reset --hard origin/master
echo "Done!"
sleep 2s

cd /home/pi
if [ -d "/home/pi/mintyPi_setup" ] 
then
    cd /home/pi/mintyPi_setup
    git fetch --all
    git reset --hard origin/mintyPi_Lite
else
    git clone https://github.com/wermy/mintyPi_setup.git
fi

cd /home/pi/mintyPi_setup/mintyPi
sudo sh ./copy_files.sh
chmod +x /home/pi/mintyPi/minty-startup.sh
sleep 2s

echo "Your mintyPi is up-to-date.  Rebooting now..."
sleep 5s
sudo reboot
