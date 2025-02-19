#!/usr/bin/env bash
# Install command-line tools using Homebrew.
function installBrews() {
    # Install Homebrew
    echo -n "Need to install Homebrew? (y/n) "
    read REPLY
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
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

    # Install fonts
    brew tap homebrew/cask-fonts
    brew install --cask font-fira-code
    brew install --cask font-fira-code-nerd-font
    brew install --cask font-jetbrains-mono
    brew install --cask font-hack-nerd-font
    brew install --cask font-jetbrains-mono-nerd-font

    # Install FastFetch
    brew install fastfetch

    # Install Zoxide
    brew install zoxide

    # Install fzf
    brew install fzf

    # Install skhd
    brew install koekeishiya/formulae/skhd

    # Install alt-tab
    echo -n "Need Alt-Tab? (y/n) "
    read REPLY
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        brew install --cask alt-tab
    fi;

    # Install Raycast
    echo -n "Need Raycast? (y/n) "
    read REPLY
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        brew install --cask raycast
    fi;

    # Remove outdated versions from the cellar.
    brew cleanup
}

echo -n "Need some brews? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    installBrews;
fi;
unset installBrews;