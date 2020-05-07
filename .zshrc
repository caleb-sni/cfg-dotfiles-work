#=====================================================
#============    @cfsanderson .zshrc   ===============
#=====================================================
export ZSH=/Users/caleb/.oh-my-zsh

export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export PATH=$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/emulator:$PATH

#====================    THEME    ====================
ZSH_THEME=amuse

#====================    STUFF    ====================
ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

# optional formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"


#====================  PLUGINS  ====================
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git brew chucknorris npm osx rand-quote web-search)


source $HOME/.bash_profile
source $ZSH/oh-my-zsh.sh


#====================  SSH  ====================
export SSH_KEY_PATH="~/.ssh/id_rsa"


# #====================  ALIASES  ====================
alias bbd='brew bundle dump -f'
alias c='clear'
alias cfg='/usr/bin/git --git-dir=/Users/caleb/.cfg-dotfiles/ --work-tree=/Users/caleb'
alias cfgloga='cfg log --oneline --decorate --graph --all'
alias fulcrum='cd ~/Projects/fulcrum && open fulcrum.code-workspace && open -a "Google Chrome" http://localhost:3000/'
alias fulcrumapp='cd ~/Projects/fulcrumapp.com && code .'
alias gohome='~ && ls -la'
alias gs='git switch'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias jsfast='bundle exec jekyll serve --watch --limit_posts 1'
alias jsslow='make clean && bundle exec jekyll serve --watch --config _config_dev.yml --incremental --future'
alias lsa='ls -a'
alias lsl='ls -l'
alias notes='cd ~/Projects/NOTES && code .'
alias sasswatch='sass --watch scss:css --style compressed'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias sni='cd ~/Projects/spatialnetworks.com && code .'
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
alias writer='cd /Users/caleb/Library/Mobile\ Documents/27N4MQEA55~pro~writer/Documents && code .'

. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
export PATH="/usr/local/sbin:$PATH"
