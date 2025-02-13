function copyThemes() {
    cp -r -i omz-themes/ ~/.oh-my-zsh/custom/themes/;
}

echo -n "Want to copy some themes? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    copyThemes;
fi;
unset copyThemes;