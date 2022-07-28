#!/bin/bash

# Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.
xcode-select --install

# Install Homebrew
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew update
brew upgrade

# Install software in Brewfile
brew bundle --file ~/.dotfiles/mac-setup/Brewfile

# Update npm & packages
npm install npm -g
npm update -g

# Update Ruby & gems
sudo gem update -system
sudo gem update

# Add syntax highlighting for nano
echo 'include "/usr/local/Cellar/nano/*/share/nano/*.nanorc"' > ~/.nanorc
