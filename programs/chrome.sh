#!/bin/bash

start_section "chrome"

DEB_NAME="google-chrome-stable_current_amd64.deb"
URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/$DEB_NAME"

wget -c "$URL_GOOGLE_CHROME" -P "$DOWNLOADS_DIR"
sudo dpkg -i "$DOWNLOADS_DIR/$DEB_NAME"

finish_section "chrome"
