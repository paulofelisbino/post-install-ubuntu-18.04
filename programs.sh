#!/bin/bash

start_section "programs"

sudo apt update -y

#####################################################################
# Variables                                                         #
#####################################################################

DOWNLOADS_DIR="$HOME/Downloads/post-install-programs-debs"

#####################################################################
# Install stuff                                                     #
#####################################################################

sudo apt install -y snapd curl awscli

sudo snap install bitwarden

source ./programs/chrome.sh
source ./programs/vscode.sh
source ./programs/openfortigui.sh
source ./programs/slack.sh
source ./programs/postman.sh
source ./programs/spotify.sh
source ./programs/zsh.sh
