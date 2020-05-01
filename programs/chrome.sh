#!/bin/bash

start_section "chrome"

DEB="google-chrome-stable_current_amd64.deb"
URL="https://dl.google.com/linux/direct/$DEB"

wget -c "$URL" -P "$DOWNLOADS_DIR"
sudo dpkg -i "$DOWNLOADS_DIR/$DEB"

finish_section "chrome"
