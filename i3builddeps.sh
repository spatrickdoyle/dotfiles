#!/usr/bin/env bash

sudo sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
sudo apt-get update

sudo apt build-dep i3-wm