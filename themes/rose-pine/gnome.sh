#!/bin/bash

SYSTEM42_THEME_COLOR="red"
SYSTEM42_THEME_BACKGROUND="rose-pine/background.jpg"
source $SYSTEM42_PATH/themes/set-gnome-theme.sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
