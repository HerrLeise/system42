#!/bin/bash

cat <<EOF >~/.local/share/applications/system42.desktop
[Desktop Entry]
Version=1.0
Name=system42
Comment=system42 Controls
Exec=alacritty --config-file /home/$USER/.config/alacritty/pane.toml --class=system42 --title=system42 -e system42
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/system42/applications/icons/system42.png
Categories=GTK;
StartupNotify=false
EOF
