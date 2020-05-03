#!/bin/bash

git fetch --all
git reset --hard origin/mintyPi_Lite
sh ./update-scripts.sh