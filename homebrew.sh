#!/usr/bin/env bash
# Install command-line tools using Homebrew.

echo "Install Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install iTerm2
echo -n "Need iTerm? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    brew cask install iterm2
fi;

#Install Hyper.js
echo -n "Need some hyper terminal action? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    brew cask install hyper
fi;

# Remove outdated versions from the cellar.
brew cleanup