#!/bin/bash

blue_text "Installling Chrome..."

function install_chrome() {
  DEB="google-chrome-stable_current_amd64.deb"
  URL="https://dl.google.com/linux/direct/$DEB"

  wget -c "$URL" -P "$DOWNLOADS_DIR"
  sudo dpkg -i "$DOWNLOADS_DIR/$DEB"
}

if [ -x "$(command -v google-chrome)" ]; then
  yellow_text "Chrome already installed!"
else
  install_chrome
  yellow_text "Chrome installed!"
fi
