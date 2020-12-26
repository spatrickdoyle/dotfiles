#!/usr/bin/env bash


# Install i3wm

sudo apt install i3

# Move i3 config file to i3 directory

mkdir -p ~/.config/i3/
cp ./config ~/.config/i3/.

# Drop in i3 for the window manager

gsettings set org.mate.session.required-components windowmanager 'i3'
gsettings set org.mate.session required-components-list "['windowmanager', 'panel', 'dock']"

# Install theme, icons and fonts

snap install yaru-colors

git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme.git ./icons/.
bash ./icons/install.sh

# Move theme and icons to appropriate directories

# mkdir -p ~/.icons/
# cp -r ./themes/Icons/* ~/.icons/.
# mkdir -p ~/.themes/
# cp -r ./themes/Theme/* ~/.themes/.

# Set the theme and icons

gsettings set org.mate.interface gtk-theme 'Yaru-Blue-dark'
gsettings set org.mate.interface icon-theme 'ePapirus'

# Disable annoying menu hotkey

gsettings set com.solus-project.brisk-menu hot-key ''

# Move desktop indicator script to i3 folder