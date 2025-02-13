# Install Oh My ZSH
echo -n "Install Oh My Zsh? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi;