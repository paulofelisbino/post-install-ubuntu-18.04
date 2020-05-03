#!/bin/bash

start_section "virtualbox"

#####################################################################
# Install dependencies                                              #
#####################################################################

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian bionic contrib"
sudo apt update -y

#####################################################################
# Install                                                           #
#####################################################################

sudo apt install -y virtualbox-6.0

finish_section "virtualbox"
