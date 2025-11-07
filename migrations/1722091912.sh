#!/bin/bash

sudo echo "Running upgrade migration..."

# Add rustc and pgsql client libs
source $SYSTEM42_PATH/install/terminal/libraries.sh

# Set name and class for desktop files
source $SYSTEM42_PATH/applications/About.sh
source $SYSTEM42_PATH/applications/Activity.sh
source $SYSTEM42_PATH/applications/Basecamp.sh
source $SYSTEM42_PATH/applications/HEY.sh
source $SYSTEM42_PATH/applications/Docker.sh
source $SYSTEM42_PATH/applications/Neovim.sh
source $SYSTEM42_PATH/applications/system42.sh
source $SYSTEM42_PATH/applications/WhatsApp.sh
