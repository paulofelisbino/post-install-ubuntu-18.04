#!/bin/bash

start_section "postman"

#####################################################################
# Download tar                                                      #
#####################################################################

TAR="postman.tar.gz"
URL="https://dl.pstmn.io/download/latest/linux"

wget -c "$URL" -O "$DOWNLOADS_DIR/$TAR"

#####################################################################
# Install                                                           #
#####################################################################

tar -xzf "$DOWNLOADS_DIR/$TAR" -C "$DOWNLOADS_DIR"
sudo mv "$DOWNLOADS_DIR/Postman" ~/Postman

#####################################################################
# Wrap up                                                           #
#####################################################################

# create symbolic link
sudo ln -s ~/Postman/Postman /usr/bin/postman

# add icon to launcher
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=$HOME/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

finish_section "postman"
