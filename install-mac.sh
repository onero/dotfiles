#/!bin/bash
source helper.sh
MAC="$DOTFILES/mac-setup"

# Setup symlinks
$DOTFILES/setup-symlinks.sh

# Install & update software
$MAC/setup-software.sh

# Setup mac defaults
$MAC/mac-os-defaults.sh
