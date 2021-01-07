#!/usr/bin/env bash

set -e

echo 'Initializing Croncuts'
echo

echo 'Installing dependencies'
sudo apt update
sudo apt-add-repository universe
sudo apt update
sudo apt install bluez git python3 python3-pip tmux dbus libbluetooth-dev -y
sudo apt install bluez-utils -y || apt install bluez-utils -y || true # apt sometimes doesn't immediately find bluez-utils

echo 'Installing pip3 dependencies'
sudo pip3 install dbus-python pybluez

echo 'Cloning manualmanul/Croncuts.git'
git clone https://github.com/manualmanul/Croncuts.git

echo 'Setting up manualmanul/Croncuts.git'
cd Croncuts
sudo ./setup.sh

echo '\nPlease run "cd Croncuts; sudo ./start.sh" to start Croncuts'
