#===============================================================================
#                / _|                   | |
#            ___| |_ ___  __ _ _ __   __| | ___ _ __ ___  ___  _ __
#           / __|  _/ __|/ _` | '_ \ / _` |/ _ \ '__/ __|/ _ \| '_ \
#          | (__| | \__ \ (_| | | | | (_| |  __/ |  \__ \ (_) | | | |
#           \___|_| |___/\__,_|_| |_|\__,_|\___|_|  |___/\___/|_| |_|
#===============================================================================

export ZSH=/Users/caleb/.oh-my-zsh
export ANDROID_HOME=/Users/caleb/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator:$PATH

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

alias bbd='brew bundle dump -f'
alias c='clear'
alias conf='/usr/bin/git --git-dir=/Users/caleb/.cfg-dotfiles/ --work-tree=/Users/caleb'
alias confstat='conf status'
alias conflog='conf log'
alias confloga='conf log --oneline --decorate --graph --all'
alias fulcode='cd ~/Projects/fulcrum && open fulcrum.code-workspace && open -a "Google Chrome" http://localhost:3000/ && ./start'
alias fuldroid='cd ~/Projects/fulcrum-android/ && emulator -avd Pixel_2_API_29 -netdelay none -netspeed full'
alias fulrun='cd ~/Projects/fulcrum && open -a "Google Chrome" http://localhost:3000/ && ./start'
alias fulsite='cd ~/Projects/fulcrumapp.com && ./start'
alias fulvim='cd ~/Projects/fulcrum && vim .'
alias curlcfsvimrc='curl -Lks https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.vimrc > .cfs_vimrc'
alias curlsnivimrc='curl -Lks https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles-work/master/.vimrc > .sni_vimrc'
alias gohome='~ && ls -la'
alias gs='git switch'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias jsfast='bundle exec jekyll serve --watch --limit_posts 1'
alias jsslow='make clean && bundle exec jekyll serve --watch --config _config_dev.yml --incremental --future'
alias lsa='ls -a'
alias lsl='ls -l'
alias myhub='open https://github.com/cfsanderson'
alias notes='cd ~/Projects/.notes && vim .'
alias sasswatch='sass --watch scss:css --style compressed'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias sni='cd ~/Projects/spatialnetworks.com && code .'
alias sourcezsh='source ~/Configs/zsh/.zshrc'
alias sourcevim='source ~/.vimrc'
alias st='speedtest'
alias to=touch_open
touch_open() {
	if ! [ "$1" ]; then
		echo "need a file!" >&2
		return 1
	fi
	: > "$1" && open "$1"
}
alias tp='trash-put'
alias vimrc='vim ~/.vimrc'
alias writer='cd /Users/caleb/Library/Mobile\ Documents/27N4MQEA55~pro~writer/Documents && code .'
alias zshrc='vim ~/Configs/zsh/.zshrc'

. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
export PATH="/usr/local/sbin:$PATH"
