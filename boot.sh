#!/bin/bash

set -e

ascii_art='
                                  _     _ ______  
                   _             | |   (_|_____ \ 
  ___ _   _  ___ _| |_ _____ ____| |_____  ____) )
 /___) | | |/___|_   _) ___ |    \_____  |/ ____/ 
|___ | |_| |___ | | |_| ____| | | |    | | (_____ 
(___/ \__  (___/   \__)_____)_|_|_|    |_|_______)
     (____/                                       


'

echo -e "$ascii_art"
echo "=> system42 is for fresh Ubuntu 24.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning system42..."
rm -rf ~/.local/share/system42
git clone https://github.com/HerrLeise/system42.git ~/.local/share/system42 >/dev/null
if [[ $SYSTEM42_REF != "master" ]]; then
	cd ~/.local/share/system42
	git fetch origin "${SYSTEM42_REF:-stable}" && git checkout "${SYSTEM42_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/system42/install.sh
