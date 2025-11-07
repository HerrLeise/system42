#!/bin/bash

cp ~/.local/share/system42/configs/alacritty/shared.toml ~/.config/alacritty/shared.toml
cp ~/.local/share/system42/configs/alacritty/pane.toml ~/.config/alacritty/pane.toml
cp ~/.local/share/system42/configs/alacritty/btop.toml ~/.config/alacritty/btop.toml
cp ~/.local/share/system42/configs/alacritty.toml ~/.config/alacritty/alacritty.toml

source $SYSTEM42_PATH/applications/About.sh
source $SYSTEM42_PATH/applications/Activity.sh
source $SYSTEM42_PATH/applications/Neovim.sh
source $SYSTEM42_PATH/applications/Docker.sh
source $SYSTEM42_PATH/applications/system42.sh

alacritty migrate 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/pane.toml 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/btop.toml 2>/dev/null || true
