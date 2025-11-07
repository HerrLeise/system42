#!/bin/bash

envsubst < ~/.local/share/system42/configs/xcompose > ~/.XCompose
ibus restart
gsettings set org.gnome.desktop.input-sources xkb-options "['compose:caps']"
