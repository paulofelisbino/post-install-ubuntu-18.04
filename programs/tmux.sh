#!/bin/bash

blue_text "Installing tmux..."

# verificar se tmux esta instalado
if [ -n "`$SHELL -c 'tmux -V'`" ]; then
  yellow_text "Tmux already instaled!"
else
  #####################################################################
  # Install tmux                                                      #
  #####################################################################

  sudo apt install -y tmux

  #####################################################################
  # Power up tmux                                                     #
  #####################################################################

  # tmux plugin manager
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  # tmux session manager
  # instalar o tmuxp

  #####################################################################
  # Configure                                                         #
  #####################################################################

  linkDotfile .tmux.conf

  yellow_text "Tmux instaled!"
fi
