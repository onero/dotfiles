#!/bin/bash
source helper.sh
LINUX="$DOTFILES/linux-setup"

# Setup symlinks
sh $DOTFILES/setup-symlinks.sh

# Install & update software
sh $LINUX/setup-software.sh
