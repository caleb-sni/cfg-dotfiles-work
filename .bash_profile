# make zsh the default shell
export SHELL=`which zsh`
[ -z "$ZSH_VERSION" ] && exec /bin/zsh -l
