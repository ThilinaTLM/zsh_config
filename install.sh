#!/bin/sh
# backup the current config 
cp $HOME/.zshrc $HOME/.zshrc.bak

# generate .zshrc
CONF_DIR=$(pwd)

tee $HOME/.zshrc <<EOF
FPATH=$CONF_DIR:$FPATH
autoload -Uz zshrc
zshrc init
EOF
