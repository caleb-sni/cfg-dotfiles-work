# Aliases

alias alacritty='vim ~/.config/alacritty/alacritty.yml'
alias alius='vim ~/.oh-my-zsh/custom/aliases.zsh'
alias bbd='brew bundle dump -f'
alias brave='open -a "Brave Browser"'
alias c='clear'
alias calebpi='ssh caleb@192.168.254.100'
alias conf='/usr/bin/git --git-dir=/Users/caleb/.cfg-dotfiles/ --work-tree=/Users/caleb'
alias confbrowse='open -a "Brave Browser" https://github.com/cfsanderson-fulcrum/cfg-dotfiles-work'
alias confstat='conf status'
alias conflog='conf log'
alias confloga='conf log --oneline --decorate --graph --all'
alias chrome='open -a "Google Chrome"'
alias darkdown='cd $HOME/.vim/plugged/markdown-preview.nvim && gs darkdown'
alias firefox='open -a "Firefox"'
alias gs='git switch'
alias home='cd ~ && clear && neofetch'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias hb='hub browse'
alias lsa='ls -a'
alias lsl='ls -l'
alias myhub='open https://github.com/cfsanderson-fulcrum' 
alias mkcdir=mkdir_cd
mkdir_cd() {
    mkdir -p -- "$1" &&
    cd -P -- "$1" &&
    ls -la
}
alias preview='open -a Preview'
alias notes='cd ~/Projects/.notes && nvim .'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias sourcezsh='source ~/Configs/zsh/.zshrc'
alias st='speedtest'
alias timez='date "+EST: %H:%M" && TZ=America/Chicago date "+CST: %H:%M" && TZ=America/Denver date "+MST: %H:%M" && TZ=America/Los_Angeles date "+PST: %H:%M"'
alias to=touch_open
touch_open() {
	if ! [ "$1" ]; then
		echo "need a file!" >&2
		return 1
	fi
	: > "$1" && vim "$1"
}
alias tp='trash-put'
alias vim='nvim'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias zshrc='nvim ~/Configs/zsh/.zshrc'

# Fulcrum Android
alias androiddebug='cd ~/Projects/fulcrum-android && ./gradlew runDebugApp'
alias androidphone='cd ~/Projects/fulcrum-android && emulator -avd Pixel_2_API_29 -netdelay none -netspeed full'
alias androidtab='cd ~/Projects/fulcrum-android && emulator -avd Samsung_Tab_A_7_API_29 -netdelay none -netspeed full'

# Fulcrum iOS
alias ios='cd ~/Projects/fulcrum-ios && open Fulcrum.xcworkspace'

# Fulcrum web
alias loginaws='saml2aws login --role="arn:aws:iam::280296955917:role/standard" --skip-prompt && aws ecr get-login-password --region us-east-1 --profile chaos | docker login --username AWS --password-stdin 833023401363.dkr.ecr.us-east-1.amazonaws.com'
alias mailcatcher='kubectl -n tools port-forward svc/mailcatcher 1080:1080'
