#!/bin/bash

start_section "tusk"

#####################################################################
# Install dependencies                                              #
#####################################################################

sudo apt install -y gconf2 gconf-service libappindicator1

#####################################################################
# Install                                                           #
#####################################################################

DEB="tusk_0.23.0_amd64.deb"
URL="https://github.com/klaussinani/tusk/releases/download/v0.23.0/$DEB"

wget -c "$URL" -P "$DOWNLOADS_DIR"
sudo dpkg -i "$DOWNLOADS_DIR/$DEB"

#####################################################################
# Wrap up                                                           #
#####################################################################

#add icon to launcher
ICONS_DIR="$HOME/.local/share/icons"
mkdir -p "$ICONS_DIR"

LOGO_URL="https://raw.githubusercontent.com/klaussinani/tusk/master/docs/media/logo.png"
wget -c "$LOGO_URL" -O "$ICONS_DIR/tusk.png"

cat > ~/.local/share/applications/tusk.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Tusk
Exec=tusk
Icon=$HOME/.local/share/icons/tusk.png
Terminal=false
Type=Application
Categories=Development;
EOL

finish_section "tusk"
