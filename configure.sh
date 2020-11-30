#!/usr/bin/env bash


sudo apt install i3

# Move i3 config file to i3 directory



# Drop in i3 for the window manager

gsettings set org.mate.session.required-components windowmanager 'i3'
gsettings set org.mate.session required-components-list "['windowmanager', 'panel', 'dock']"

# Move theme and icons to appropriate directories

mkdir -p ~/.icons/
cp -r ./yaru-blue/Icons/* ~/.icons/.
mkdir -p ~/.themes/
cp -r ./yaru-blue/Theme/* ~/.themes/.

# Set the theme and icons

gsettings set org.mate.interface gtk-theme 'Yaru-Blue-dark'
gsettings set org.mate.interface icon-theme 'ePapirus'

# Move desktop indicator script to i3 folder