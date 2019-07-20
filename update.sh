#!/bin/bash

git fetch --all
git reset --hard origin/mintyPiv3
sh ./update-scripts.sh