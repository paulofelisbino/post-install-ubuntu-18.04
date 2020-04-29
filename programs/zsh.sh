#!/bin/bash

sudo apt update

#####################################################################
# Install ZSH                                                       #
#####################################################################

sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# set zsh instead of bash
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
~/.fzf/install

#####################################################################
# Install the best theme                                            #
#####################################################################

git clone https://github.com/dracula/zsh.git ~/dracula.zsh-theme
ln -s ~/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme
