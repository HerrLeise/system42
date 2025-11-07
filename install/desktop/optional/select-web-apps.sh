#!/bin/bash

source $SYSTEM42_PATH/defaults/bash/functions

AVAILABLE_WEB_APPS=("Chat GPT" "Google Photos" "Google Contacts" "Tailscale", "Whatsapp", "Teams", "AppleMusic")
apps=$(gum choose "${AVAILABLE_WEB_APPS[@]}" --no-limit --height 6 --header "Select web apps")

if [[ -n "$apps" ]]; then
  IFS=$'\n'
  for app in $apps; do
    case $app in
    "Chat GPT")
      web2app 'Chat GPT' https://chatgpt.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/chatgpt.png
      app2folder 'Chat GPT.desktop' WebApps
      ;;
    "Google Photos")
      web2app 'Google Photos' https://photos.google.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-photos.png
      app2folder 'Google Photos.desktop' WebApps
      ;;
    "Google Contacts")
      web2app 'Google Contacts' https://contacts.google.com/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-contacts.png
      app2folder 'Google Contacts.desktop' WebApps
      ;;
    "Tailscale")
      web2app 'Tailscale' https://login.tailscale.com/admin/ https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/tailscale-light.png
      app2folder 'Tailscale.desktop' WebApps
      ;;
    "Whatsapp")
      web2app 'Whatsapp' http://web.whatsapp.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/whatsapp.png
      app2folder 'Whatsapp.desktop' WebApps
      ;;
    "Teams")
      web2app 'Teams' https://teams.microsoft.com/ https://cdn.system42.org/dashboard-icons/msteams.png
      app2folder 'Microsoft Teams.desktop' WebApps
      ;;
    "AppleMusic")
      web2app 'Music' https://music.apple.com/ https://cdn.system42.org/dashboard-icons/applemusic.png
      app2folder 'Apple Music.desktop' WebApps
      ;;  
    esac
  done
fi
