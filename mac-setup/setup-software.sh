#!/bin/bash

# Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install software in Brewfile
brew bundle --file $DOTFILES/mac-setup/Brewfile

# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew update
brew upgrade

# Update npm & packages
npm install npm -g
npm update -g

# Update Ruby & gems
sudo gem update -system
sudo gem update
