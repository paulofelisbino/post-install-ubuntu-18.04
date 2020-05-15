#!/bin/bash

blue_text "Installing zsh..."

if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  yellow_text "ZSH already instaled!"
else
  #####################################################################
  # Install ZSH                                                       #
  #####################################################################

  sudo apt install -y zsh

  #####################################################################
  ## Install OH-MY-ZSH                                                #
  #####################################################################

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  chsh -s $(which zsh)

  #####################################################################
  # Install plugins                                                   #
  #####################################################################

  # auto suggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  # syntax highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

  # fuzzy finder
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --all

  #####################################################################
  # Install the best theme                                            #
  #####################################################################

  git clone https://github.com/dracula/zsh.git ~/dracula.zsh-theme
  ln -s ~/dracula.zsh-theme/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme

  #####################################################################
  # Configure                                                         #
  #####################################################################

  linkDotfile .zshrc

  yellow_text "ZSH instaled!"
fi
