#!/bin/bash

#####################################################################
# Remove possible apt locks                                         #
#####################################################################
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

#####################################################################
# Install general dependencies                                      #
#####################################################################
sudo apt update
sudo apt install -y curl

#####################################################################
# Install stuff                                                     #
#####################################################################

cd programs/

./zsh.sh

#####################################################################
# Wrapping up                                                       #
#####################################################################
