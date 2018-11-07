#!/bin/bash

set -e

echo " ----- clone app repo ----- "
git clone https://github.com/Artemmkin/raddit.git

echo " ----- install dependent gems ----- "
cd ./raddit
sudo bundle install

echo " ----- start the app ----- "
sudo systemctl start raddit
sudo systemctl enable raddit
