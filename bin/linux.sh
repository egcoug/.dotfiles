#!/bin/bash

# Append the output of echo statements to the linuxsetup.log file
exec >> ~/linuxsetup.log 2>&1

# Comment: The shebang is set to bash for proper script execution
echo "Starting the Linux setup script..."

# Check if the operating system is Linux
if [ "$(uname)" != "Linux" ]; then
    # If the OS is not Linux, log the error message and exit the script
    echo "Error: This script only works on Linux." 
    exit 1
else
    echo "Operating system is Linux. Continuing script execution..."
fi

# Create the .TRASH directory in the home directory if it does not exist
if [ ! -d "$HOME/.TRASH" ]; then
    mkdir "$HOME/.TRASH"
    echo "Created .TRASH directory in home directory."
else
    echo ".TRASH directory already exists."
fi

# Check if the .nanorc file exists in the home directory
if [ -f "$HOME/.nanorc" ]; then
    # If it exists, rename it to .bup nanorc and log the change
    mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
    echo "Renamed .nanorc to .bup_nanorc."
fi

# Overwrite the contents of etc/nanorc file to .nanorc in the home directory
cat ~/etc/nanorc > "$HOME/.nanorc"
echo "Overwritten .nanorc with contents from etc/nanorc."

# Add the statement to source bashrc custom to the end of .bashrc
echo "source $HOME/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"
echo "Added source command for bashrc custom to .bashrc."

