#!/bin/bash
set -euo pipefail

source ./colors.sh

function start_section() {
  blue_text "Starting ${1}..."
}

function finish_section() {
  blue_text "${1} done!"
}

function remove_locks() {
  yellow_text "Removing possible locks..."

  yellow_text "Removing /var/cache/apt/archives/lock..."
  sudo rm -f /var/cache/apt/archives/lock

  yellow_text "Removing /var/lib/dpkg/lock-frontend..."
  sudo rm -f /var/lib/dpkg/lock-frontend

  green_text "Locks removed!"
}

#####################################################################
# Start execution                                                   #
#####################################################################

source ./programs.sh
source ./symlink.sh
