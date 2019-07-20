#!/bin/bash

if nc -zw1 google.com 443; then
  echo "Internet connection OK"
else
  echo "No internet detected!  You need to be connected to the internet to run the update script."
  sleep 5s
  exit 1
fi

git fetch --all
git reset --hard origin/mintyPiv3
sh ./update-scripts.sh