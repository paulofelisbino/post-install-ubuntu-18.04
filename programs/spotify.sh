#!/bin/bash

start_section "spotify"

#####################################################################
# Install dependencies                                              #
#####################################################################

curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update -y

#####################################################################
# Install                                                           #
#####################################################################

sudo apt install -y spotify-client

finish_section "spotify"
