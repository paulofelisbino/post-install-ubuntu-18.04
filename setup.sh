#!/bin/bash
set -euo pipefail

source ./colors.sh

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
source ./symlink.sh
