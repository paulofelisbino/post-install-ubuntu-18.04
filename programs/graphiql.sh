#!/bin/bash

start_section "graphiql"

#####################################################################
# Install dependencies                                              #
#####################################################################

sudo apt-get install -y libcanberra-gtk-module

#####################################################################
# Download AppImage                                                 #
#####################################################################

DOWNLOADS_DIR="$HOME/Downloads/post-install-programs-debs"
mkdir -p "$DOWNLOADS_DIR"

APP="graphiql-app-0.7.2-x86_64.AppImage"
URL="https://github.com/skevy/graphiql-app/releases/download/v0.7.2/$APP"

wget -c "$URL" -P "$DOWNLOADS_DIR"

#####################################################################
# Install                                                           #
#####################################################################

sudo chmod +x "$DOWNLOADS_DIR/$APP"
sudo mv "$DOWNLOADS_DIR/$APP" "$HOME"

finish_section "graphiql"
