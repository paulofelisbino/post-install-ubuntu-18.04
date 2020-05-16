#!/bin/bash

blue_text "Installing programs..."

sudo apt update -y

#####################################################################
# Install stuff                                                     #
#####################################################################

sudo apt install -y awscli curl filezilla gnome-tweak-tool snapd tig

# terminal
source ./programs/zsh.sh
source ./programs/tmux.sh

# dev env
source ./programs/chrome.sh
source ./programs/docker.sh
source ./programs/vscode.sh
source ./programs/postman.sh
source ./programs/dbeaver.sh
source ./programs/graphiql.sh

source ./programs/slack.sh
source ./programs/openfortigui.sh
source ./programs/virtualbox.sh
source ./programs/tusk.sh
source ./programs/spotify.sh

sudo snap install authy --beta && sudo snap install bitwarden vlc
