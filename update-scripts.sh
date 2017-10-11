#!/bin/bash
echo "Updating mintyPi..."

echo "Updating material theme..."
cd /home/pi/.emulationstation/themes/es-theme-material
git fetch --all
git reset --hard origin/master
echo "Done!"



echo "Done!  Your mintyPi is up-to-date."
sleep 10s
