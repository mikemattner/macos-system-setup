#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install iTerm2
brew cask install iterm2

#Install Hyper.js
brew cask install hyper

# Remove outdated versions from the cellar.
brew cleanup