echo -n "Install Xcode Command Line Tools? (y/n) "
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    xcode-select --install
fi;