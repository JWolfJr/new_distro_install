#!/bin/bash

# This script will update package manager then install xdg if not already installed.
# Then open the default web browser and open your preferred tabs

# Checking if a bin directory exists
if [ -d /home/jack/bin ];
then
	echo "Bin directory exits"
else
	mkdir -p /home/jack/bin
	echo "Bin directory has been created!"
fi

# Updating system and installing if needed certain dependencies
echo "Updating system and installing xdg"

sudo apt update && sudo apt install xdg-utils

echo "Setting default web brownser"

sudo xdg-settings set default-web-browser google-chrome.desktop

echo "Opening default browser and requested tabs"

# For loop to add sleep command before opening each tab to help ease system resources for older systems!
delay=4
site_array=( https://kdenlive.org/ https://github.com/SoftFever/OrcaSlicer/ https://inkscape.org/ https://github.com/EdgeTX/edgetx/ https://www.gimp.org/ https://code.visualstudio.com/ https://www.arduino.cc/en/software )
for item in "${site_array[@]}"
do
    echo "Opening sites followed by a short delay"
    sudo xdg-open $item
    sleep $delay
done

#sudo xdg-open https://kdenlive.org/
#sudo xdg-open https://github.com/SoftFever/OrcaSlicer/
#sudo xdg-open https://inkscape.org/
#sudo xdg-open https://github.com/EdgeTX/edgetx/
#sudo xdg-open https://www.gimp.org/
#sudo xdg-open https://code.visualstudio.com/
#sudo xdg-open https://www.arduino.cc/en/software

