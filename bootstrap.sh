#!/bin/bash

# Check for git installation
if ! command -v git &>/dev/null; then
	echo "Git is not installed! Please install Git first."
	exit 1
fi

# Clone the dotfiles
git clone --bare https://github.com/afgallo/dotfiles.git $HOME/.dotfiles

# Define the alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >>$HOME/.zshrc

# Backup existing config
mkdir -p $HOME/.dotfiles-backup
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} $HOME/.dotfiles-backup/{}

# Checkout dotfiles
dotfiles checkout

# Set flag to hide untracked files
dotfiles config --local status.showUntrackedFiles no

echo "Dotfiles have been setup! Original config backed up in ~/.dotfiles-backup"
