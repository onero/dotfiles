#!/bin/bash

# Show all file extensions in the Finder.
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder

# Show hidden files inside the Finder
defaults write com.apple.Finder "AppleShowAllFiles" -bool "true" && killall Finder

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "
