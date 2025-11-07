#!/bin/bash

# Center new windows in the middle of the screen
gsettings set org.gnome.mutter center-new-windows true

# Make Window Chrome appear more macOS like
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

# Set Cascadia Mono as the default monospace font
gsettings set org.gnome.desktop.interface monospace-font-name 'CaskaydiaMono Nerd Font 10'

# Reveal week numbers in the Gnome calendar
gsettings set org.gnome.desktop.calendar show-weekdate true

# Turn off ambient sensors for setting screen brightness (they rarely work well!)
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false

# Make Window Chrome appear more macOS like
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'