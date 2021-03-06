
#!/bin/bash

blue_text "Installling vscode..."

function install_vscode() {
  # https://code.visualstudio.com/docs/setup/linux

  #####################################################################
  # Install dependencies                                              #
  #####################################################################

  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
  sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
  sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
  sudo apt-get install apt-transport-https
  sudo apt-get update

  #####################################################################
  # Install                                                           #
  #####################################################################

  sudo apt-get install code # or code-insiders
  sudo rm packages.microsoft.gpg
}

if [ -x "$(command -v code)" ]; then
  yellow_text "VSCode already installed!"
else
  install_vscode
  yellow_text "VSCode installed!"
fi

