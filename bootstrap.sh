#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

# Install Command Line Tools
source commandlinetools.sh;

# Install Oh My ZSH
source ohmyzsh.sh;

# Install Homebrew
source homebrew.sh;

# Copy Dotfiles
source dotfiles.sh;

# Load Custom OhMyZSH themes
source themes.sh;