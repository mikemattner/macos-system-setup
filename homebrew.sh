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
brew install tree
brew install postgres
brew install redis

# Oh My ZSH
echo -n "Need Oh My Zsh (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
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