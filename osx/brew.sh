#!/bin/bash 
# Install Homebrew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/versions
brew tap caskroom/cask
brew update
brew upgrade

apps=(
	vim --override-system-vi --with-lua
	git
	bash-completion2
	wrk
	tmux
	tig
	wget
	brew-cask
)

brew install "${apps[@]}"

# Install Caskroom and packages

brew tap caskroom/versions

apps=(
	atom
	dropbox
	firefox
	google-chrome
	spotify
)

brew cask install "${apps[@]}"