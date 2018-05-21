#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
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

echo -n "This may overwrite existing files in your home directory. Are you sure? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
fi;
unset doIt;

echo -n "Need some brew? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    installBrews;
fi;
unset installBrews;