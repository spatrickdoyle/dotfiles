#!/usr/bin/env bash

gsettings set org.mate.session.required-components windowmanager 'i3'
gsettings set org.mate.session required-components-list "['windowmanager', 'panel', 'dock']"