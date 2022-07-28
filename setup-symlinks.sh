#!/bin/bash
source helper.sh

# Ensure files are removed
rm -rf $HOME/.zshrc
rm -rf $HOME/.gitconfig
rm -rf $HOME/.vimrc

# Create symbolic links
ln $DOTFILES/.zshrc ~/.zshrc
ln $DOTFILES/.gitconfig ~/.gitconfig
ln $DOTFILES/.vimrc ~/.vimrc
