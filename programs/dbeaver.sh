#!/bin/bash

blue_text "Installling DBeaver..."

function install_dbeaver() {
  #####################################################################
  # Install dependencies                                              #
  #####################################################################

  wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
  echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
  sudo apt update -y

  #####################################################################
  # Install                                                           #
  #####################################################################

  sudo apt -y install dbeaver-ce
}

if [ -x "$(command -v dbeaver)" ]; then
  yellow_text "DBeaver already installed!"
else
  install_dbeaver
  yellow_text "DBeaver installed!"
fi





