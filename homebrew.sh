#!/usr/bin/env bash
# Install command-line tools using Homebrew.

# Install Homebrew
echo -n "Need to install Homebrew? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    # Make sure we’re using the latest Homebrew.
    brew update

    # Upgrade any already-installed formulae.
    brew upgrade
fi;

# Useful utilities
brew tap caskroom/cask
brew install cask
brew install tree
brew install zsh-syntax-highlighting
brew install yarn

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

#Install Hyper.js
echo -n "Need Hyper.js? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    brew cask install hyper
fi;

# Remove outdated versions from the cellar.
brew cleanup