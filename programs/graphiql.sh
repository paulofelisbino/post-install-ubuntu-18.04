#!/bin/bash

blue_text "Installling Graphiql..."

APP="graphiql-app-0.7.2-x86_64.AppImage"

function install_graphiql() {
  #####################################################################
  # Install dependencies                                              #
  #####################################################################

  sudo apt-get install -y libcanberra-gtk-module

  #####################################################################
  # Download AppImage                                                 #
  #####################################################################

  URL="https://github.com/skevy/graphiql-app/releases/download/v0.7.2/$APP"

  wget -c "$URL" -P "$DOWNLOADS_DIR"

  #####################################################################
  # Install                                                           #
  #####################################################################

  sudo chmod +x "$DOWNLOADS_DIR/$APP"
  sudo mv "$DOWNLOADS_DIR/$APP" "$HOME"
}

if [[ -e "$HOME/$APP" ]]; then
  yellow_text "Graphiql already installed!"
else
  install_graphiql
  yellow_text "Graphiql installed!"
fi
