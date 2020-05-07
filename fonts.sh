#!/bin/bash

start_section "fonts"

#####################################################################
# Install Powerline                                                 #
#####################################################################

# only install if absent
if [ -z $(fc-list | grep -i "powerline") ]; then
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
