These install scripts are daisy-chained together using `bit.do` shortened urls that link back to the raw files on Github. They are meant to be run in succession starting with the `xcode-install-script` which is generally the first thing in a fresh install on a new machine. Although they can be run consecutively, some are useful as stand alone install scripts. You can visit the links directly to check out the code or read them on Github. Install them using the `curl -Lks http://bit.do/cfsanderson | bash` command from any bash shell. Below is an ordered list of the urls and a brief description of what they accomplish.

1a. `curl -Lks http://bit.do/cfsanderson | bash` just echos a creative ascii art name with the next xcode link and the github repo url.
1. http://bit.do/cfsanderson-xcode
  - installs Xcode select
2. http://bit.do/cfsanderson-cfg-alias
  - intializes the "cfg" alias
3. http://bit.do/cfsanderson-cfg-clone
  - clones the cfg-dotfiles repo
4. http://bit.do/cfsanderson-homebrew
  - installs homebrew and runs 'brew bundle' to install everything in the Brewfile
5. http://bit.do/cfsanderson-zsh
  - make zsh the default shell
6. http://bit.do/cfsanderson-oh-my-zsh
  - installs oh-my-zsh
  - probably will backup existing .zshrc file and will need to delete new and return backup to original name.
7. http://bit.do/cfsanderson-powerline
  - installs the Powerline fonts (Cousine)
  - may need to install `node` next with `asdf`
8. http://bit.do/cfsanderson-npm
  - installs any npm packages (like nodemon and trash CLI)
9. http://bit.do/cfsanderson-ssh
  - generate new SSH keys and give instructions for how to sync with Github.

Somewhere in there should have installed the latest Brewfile so `bundle install` from there.

-----
**DEPRECATED:**
- http://bit.do/cfsanderson-nvm
  - installs node and nvm - last command should output simply 'nvm' as a test

- http://bit.do/cfsanderson-rbenv
  - installs rbenv for a ruby manager
  - this assumes that rbenv has already been installed via Homebrew earlier
