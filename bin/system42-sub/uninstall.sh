#!/bin/bash

UNINSTALLER=$(gum file $SYSTEM42_PATH/uninstall --height 26)
[ -n "$UNINSTALLER" ] && gum confirm "Run uninstaller?" && source $UNINSTALLER && gum spin --spinner globe --title "Uninstall completed!" -- sleep 3
clear
source $SYSTEM42_PATH/bin/system42
