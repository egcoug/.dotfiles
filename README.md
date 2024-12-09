# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .bashrc
This is my custom .bashrc configuration for Bash.
# .dotfiles Repository

This repository contains configuration files and scripts for setting up and cleaning up a Linux development environment.

## Files and Directories

- **./bin/linux.sh**: A setup script that configures the Linux environment, including:
  - Checking the OS type.
  - Creating a `.TRASH` directory.
  - Backing up an existing `.nanorc` file.
  - Updating the `.bashrc` file with custom configurations.

- **./bin/cleanup.sh**: A cleanup script that reverses the changes made by `linux.sh`:
  - Removes the `.nanorc` file.
  - Deletes the `.TRASH` directory.
  - Removes the custom `source` line from `.bashrc`.

- **./Makefile**:
  - `linux` target: Runs the `linux.sh` script. Depends on the `clean` target.
  - `clean` target: Runs the `cleanup.sh` script.

- **./etc/nanorc**: Configuration file for the Nano text editor.

- **./etc/bashrc custom**: Custom Bash configurations including aliases and functions.

## Usage

1. Clone the repository into your home directory
2. Run 'make' to set up the environment
3. Run 'make clean' to reset the environment
