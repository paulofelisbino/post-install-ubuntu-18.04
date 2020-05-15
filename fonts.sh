#!/bin/bash

blue_text "Installing fonts..."

#####################################################################
# Install Powerline                                                 #
#####################################################################

# only install if absent
if ! fc-list | grep -i "powerline" >/dev/null; then
  yellow_text "Installing Powerline fonts..."

  git clone https://github.com/powerline/fonts.git --depth=1
  cd fonts
  ./install.sh
  cd ..
  rm -rf fonts

  yellow_text "Powerline fonts installed!"
else
  yellow_text "Powerline fonts already installed!"
fi
