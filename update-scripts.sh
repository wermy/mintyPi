#!/bin/bash
echo "Updating mintyPi..."
chmod +x /home/pi/mintyPi/minty-startup.sh
sleep 2s

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

echo "Updating Will.I.Am's mintyPi theme..."
cd /home/pi/.emulationstation/themes/tft-mintypi
git fetch --all
git reset --hard origin/master
echo "Done!"
sleep 2s

echo "Updating mintyPi scripts..."
cd /home/pi/OneForAll
git fetch --all
git reset --hard origin/mintypi_v3
cd /home/pi/OneForAll
sudo -u pi make clean
sudo -u pi make
echo "Done!"
sleep 2s

echo "Your mintyPi is up-to-date.  Rebooting now..."
sleep 5s
sudo reboot
