function copyDotFiles() {
    rsync --exclude ".git/" \
        --exclude ".gitignore" \
        --exclude ".DS_Store" \
        --exclude "bootstrap.sh" \
        --exclude "homebrew.sh" \
        --exclude "dotfiles.sh" \
        --exclude "themes.sh" \
        --exclude "ohmyzsh.sh" \
        --exclude "commandlinetools.sh" \
        --exclude "settings/" \
        --exclude "README.md" \
        -avh --no-perms . ~;
    source ~/.zshrc;
}

echo -n "Want to copy some dotfiles? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    copyDotFiles;
fi;
unset copyDotFiles;