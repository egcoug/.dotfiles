#!/bin/bash

# Comment: Remove the .nanorc file in the home directory
if [ -f "$HOME/.nanorc" ]; then
    rm "$HOME/.nanorc"
    echo "Removed .nanorc from home directory."
fi

# Comment: Remove the line sourcing bashrc custom from .bashrc
sed -i '' "/source $HOME\/.dotfiles\/etc\/bashrc custom/d" "$HOME/.bashrc"
echo "Removed 'source ~/.dotfiles/etc/bashrc custom' from .bashrc."

# Comment: Remove the .TRASH directory in the home directory
if [ -d "$HOME/.TRASH" ]; then
    rm -rf "$HOME/.TRASH"
    echo "Removed .TRASH directory from home directory."
fi

