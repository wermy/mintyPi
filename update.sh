#!/bin/bash

git fetch --all
git reset --hard origin/master
sh ./update-scripts.sh