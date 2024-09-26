#!/usr/bin/env bash
# Install command-line tools using Homebrew.

# Install Homebrew
echo -n "Need to install Homebrew? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    # Make sure we’re using the latest Homebrew.
    brew update

    # Upgrade any already-installed formulae.
    brew upgrade
fi;

# Useful utilities
brew tap homebrew/cask
brew install cask
brew install tree
# brew install zsh-syntax-highlighting
# brew install yarn

brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# Install VS Code
echo -n "Need Visual Studio Code? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    brew cask install visual-studio-code
fi;

# Install iTerm2
echo -n "Need iTerm2? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    brew cask install iterm2
fi;

# Remove outdated versions from the cellar.
brew cleanup