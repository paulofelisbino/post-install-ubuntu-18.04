#!/bin/bash

start_section "programs"

sudo apt update -y

#####################################################################
# Variables                                                         #
#####################################################################

DOWNLOADS_DIR="$HOME/Downloads/post-install-programs-debs"
mkdir -p "$DOWNLOADS_DIR"

#####################################################################
# Install stuff                                                     #
#####################################################################

sudo apt install -y awscli curl filezilla gnome-tweak-tool snapd

source ./programs/dbeaver.sh
source ./programs/graphiql.sh
source ./programs/openfortigui.sh
source ./programs/postman.sh
source ./programs/slack.sh
source ./programs/virtualbox.sh
source ./programs/vscode.sh

source ./programs/chrome.sh
source ./programs/tusk.sh
source ./programs/spotify.sh

source ./programs/zsh.sh

sudo snap install authy --beta && sudo snap install bitwarden vlc
