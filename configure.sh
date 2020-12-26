#!/usr/bin/env bash


# Install i3wm (I like this fork that has support for gaps and rounded corners)

# Grab build dependencies

bash ./i3builddeps.sh

# Download and build i3-radius

git clone https://github.com/terroo/i3-radius.git

bash ./i3build.sh

# Move i3 config file and desktop indicator script to i3 directory

mkdir -p ~/.config/i3/
cp ./config ~/.config/i3/.
cp ./desktops.sh ~/.config/i3/.

# Drop in i3 for the window manager

bash ./matetoi3.sh

# Install theme, icons and fonts

snap install yaru-colors

git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme.git ./icons/.
bash ./icons/install.sh

# Set the theme and icons

# gsettings set org.mate.interface gtk-theme 'Yaru-Blue-dark'
gsettings set org.mate.interface icon-theme 'ePapirus'

# Disable annoying menu hotkey

gsettings set com.solus-project.brisk-menu hot-key ''


