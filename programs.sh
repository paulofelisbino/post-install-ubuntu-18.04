#!/bin/bash

blue_text "Installing programs..."

sudo apt update -y

#####################################################################
# Install stuff                                                     #
#####################################################################

sudo apt install -y awscli curl filezilla gnome-tweak-tool snapd terminator tmux

#install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

source ./programs/zsh.sh

source ./programs/dbeaver.sh
source ./programs/docker.sh
source ./programs/graphiql.sh
source ./programs/openfortigui.sh
source ./programs/postman.sh
source ./programs/slack.sh
source ./programs/virtualbox.sh
source ./programs/vscode.sh

source ./programs/chrome.sh
source ./programs/tusk.sh
source ./programs/spotify.sh



sudo snap install authy --beta && sudo snap install bitwarden vlc
