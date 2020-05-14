#!/bin/bash

blue_text "Configuring git hooks..."

#####################################################################
# Setup                                                             #
#####################################################################

readonly gitHooksOriginDir="${HOME}/post-install-ubuntu-18.04/git-hooks"
readonly gitHooksDir="${HOME}/.git-templates/hooks"

mkdir -p "${gitHooksDir}"

function linkHook {
  local origin="${gitHooksOriginDir}/${1}"
  local destination="${gitHooksDir}/${1}"

  if [ -f "${destination}" ]; then
    yellow_text "Hook '${1}' already configured!"
  else
    ln -s ${origin} ${destination}

    yellow_text "Hook '${1}' configured!"
  fi
}

#####################################################################
# Start execution                                                   #
#####################################################################

linkHook commit-msg
linkHook commit-msg.py

blue_text "Git hooks configured!"
