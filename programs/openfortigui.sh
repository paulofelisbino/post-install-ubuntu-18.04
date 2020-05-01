#!/bin/bash

start_section "openfortigui"

#####################################################################
# Install dependencies                                              #
#####################################################################

sudo apt install -y libqt5core5a libqt5gui5 libqt5keychain1 libqt5network5 libqt5widgets5 qttranslations5-l10n

#####################################################################
# Install                                                           #
#####################################################################

DEB="openfortigui_0.8.2-1_amd64_bionic.deb"
URL="https://apt.iteas.at/iteas/pool/main/o/openfortigui/$DEB"

wget -c "$URL" -P "$DOWNLOADS_DIR"
sudo dpkg -i "$DOWNLOADS_DIR/$DEB"

finish_section "openfortigui"
