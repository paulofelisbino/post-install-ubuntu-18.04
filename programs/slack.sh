#!/bin/bash

start_section "slack"

DEB="slack-desktop-4.4.2-amd64.deb"
URL="https://downloads.slack-edge.com/linux_releases/$DEB"

wget -c "$URL" -P "$DOWNLOADS_DIR"
sudo dpkg -i "$DOWNLOADS_DIR/$DEB"

finish_section "slack"
