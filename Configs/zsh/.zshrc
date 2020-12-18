#===============================================================================
#                 ____                     __                         
#           _____/ __/________ _____  ____/ /__  ______________  ____ 
#          / ___/ /_/ ___/ __ `/ __ \/ __  / _ \/ ___/ ___/ __ \/ __ \
#         / /__/ __(__  ) /_/ / / / / /_/ /  __/ /  (__  ) /_/ / / / /
#         \___/_/ /____/\__,_/_/ /_/\__,_/\___/_/  /____/\____/_/ /_/ 
#                                                                     
#                                    __             
#                        ____  _____/ /_  __________
#                       /_  / / ___/ __ \/ ___/ ___/
#                        / /_(__  ) / / / /  / /__  
#                       /___/____/_/ /_/_/   \___/  
#                       
#===============================================================================


if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

export AWS_PROFILE=chaos
export ZSH=/Users/caleb/.oh-my-zsh
export ANDROID_HOME=/Users/caleb/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator:$PATH
export DOCKER_PG=1
export HOMEBREW_GITHUB_API_TOKEN=$HOME/.config/homebrew-github-api-token

ZSH_THEME=amuse

HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(
    git 
    npm 
    osx 
    vi-mode 
    web-search 
    zsh-syntax-highlighting
)

source $HOME/.bash_profile
source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/id_rsa"

# Aliases moved to ~/.oh-my-zsh/custom/aliases.zsh and accessible with "alius" alias.

. $(brew --prefix asdf)/asdf.sh
# . /usr/local/opt/asdf/asdf.sh
# . /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
export PATH="/usr/local/sbin:$PATH"
