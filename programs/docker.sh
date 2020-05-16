#!/bin/bash

blue_text "Installling docker..."

if [ -x "$(command -v docker)" ]; then
  yellow_text "Docker already installed!"
else
  #####################################################################
  # Install dependencies                                              #
  #####################################################################

  sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
  sudo apt update -y

  #####################################################################
  # Install                                                           #
  #####################################################################

  sudo apt install -y docker-ce
  sudo docker run hello-world

  yellow_text "Docker installed!"
fi
