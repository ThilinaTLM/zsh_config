#!/bin/sh
# backup the current config
# ask the user to confirm 

if [ -f ~/.zshrc ] ; then
    printf "zshrc config is already exists"
    read -p "Do you want to backup the current config? [Y/n] " -n 1 -r
    echo   # (optional) move to a new line 
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        cp ~/.zshrc ~/.zshrc.bak
    fi
fi

# generate .zshrc
CONF_DIR=$(pwd)

tee $HOME/.zshrc <<EOF
FPATH=$CONF_DIR:$FPATH
autoload -Uz zshrc
zshrc init
EOF
