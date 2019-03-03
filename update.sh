#!/bin/bash

git fetch --all
git reset --hard origin/mintypiv3
sh ./update-scripts.sh