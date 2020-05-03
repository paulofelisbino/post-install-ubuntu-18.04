#!/bin/bash

start_section "dbeaver"

#####################################################################
# Install dependencies                                              #
#####################################################################

wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
sudo apt update -y

#####################################################################
# Install                                                           #
#####################################################################

sudo apt -y  install dbeaver-ce

finish_section "dbeaver"






