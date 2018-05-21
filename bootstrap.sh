#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
    rsync --exclude ".git/" \
        --exclude ".DS_Store" \
        --exclude "bootstrap.sh" \
        --exclude "README.md" \
        -avh --no-perms . ~;
    source ~/.zshrc;
}

echo -n "This may overwrite existing files in your home directory. Are you sure? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
fi;
unset doIt;