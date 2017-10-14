#!/bin/bash
echo "Updating mintyPi..."

echo "Updating material theme..."
cd /home/pi/.emulationstation/themes/es-theme-material
git fetch --all
git reset --hard origin/master
echo "Done!"

echo "Updating carbon theme..."
cd /home/pi/.emulationstation/themes/es-theme-carbon
git fetch --all
git reset --hard origin/master
echo "Done!"

echo "Updating Will.I.Am's mintyPi theme..."
cd /home/pi/.emulationstation/themes/tft-mintypi
git fetch --all
git reset --hard origin/master
echo "Done!"

echo "Updating Hoolyhoo's mintyPi scripts..."
cd /home/pi/MintyComboScript
git fetch --all
git reset --hard origin/master
echo "Done!"

echo "Your mintyPi is up-to-date."
sleep 5s
