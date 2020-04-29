#####################################################################
# Environment Variables                                             #
#####################################################################

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#####################################################################
# Path                                                              #
#####################################################################

export PATH=~/.local/bin:$PATH

#####################################################################
# Terminal Style                                                    #
#####################################################################

ZSH_THEME="dracula"

#####################################################################
# Plugins                                                           #
#####################################################################

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#####################################################################
# Aliases                                                           #
#####################################################################

alias sshvizir="~/projects/pessoal/scripts/set_ssh_key 'work'"
alias sshpessoal="~/projects/pessoal/scripts/set_ssh_key 'personal'"

alias dc="docker-compose"
alias dcps="docker-compose ps"
alias dcup="docker-compose up"
alias dcupd="docker-compose up -d"
alias dcd="docker-compose down"
alias dclogs="docker-compose logs"
alias dcr="docker-compose restart"

alias update="sudo apt update"

alias graphiql="/opt/graphiql-app-0.7.2-x86_64.AppImage"
