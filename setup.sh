#!/bin/bash
set -euo pipefail

source ./colors.sh

#####################################################################
# Variables                                                         #
#####################################################################

readonly DOWNLOADS_DIR="$HOME/Downloads/post-install-downloads"
mkdir -p "$DOWNLOADS_DIR"

#####################################################################
# Common functions                                                  #
#####################################################################

function start_section() {
  blue_text "Installing ${1}..."
}

function finish_section() {
  blue_text "${1} installed!"
}

#####################################################################
# Start execution                                                   #
#####################################################################

source ./programs.sh
source ./theme.sh
source ./symlink.sh
