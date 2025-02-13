#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function copyDotFiles() {
    rsync --exclude ".git/" \
        --exclude ".DS_Store" \
        --exclude "bootstrap.sh" \
        --exclude "homebrew.sh" \
        --exclude "settings/" \
        --exclude "README.md" \
        -avh --no-perms . ~;
    source ~/.zshrc;
}

function installBrews() {
    source homebrew.sh;
}

function copyThemes() {
    cp -r -i cmz-themes/ ~/.oh-my-zsh/custom/themes/;
}

# Oh My ZSH
echo -n "Install Oh My Zsh? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi;

echo -n "Need some brew? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    installBrews;
fi;
unset installBrews;

echo -n "Want to copy some dotfiles? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    copyDotFiles;
fi;
unset copyDotFiles;