#!/bin/bash
sleep 5s
omxplayer -o alsa -b --layer 10000 "/home/pi/mintyPi/minty-splash.mp4" &
sleep 25s
sudo pkill omxplayer
