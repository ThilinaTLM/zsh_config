#!/bin/sh

function resolve_requirements() {
    # check git 
    if ! which git > /dev/null; then
        echo "git is not installed"
        exit 1
    fi

    # check zsh 
    if ! which zsh > /dev/null; then
        echo "zsh is not installed"
        exit 1
    fi
    
    # create .config directory
    if [ ! -d ~/.config ]; then
        mkdir ~/.config
    fi
}

function get_the_repo() {
    # clone the repo
    echo "Cloning the repo..."
    if [ -d ~/.dotfiles ]; then
        echo ".config/zsh is already exits"
        exit 0
    fi
    git clone https://github.com/ThilinaTLM/zsh_config.git ~/.config/zsh --depth=1
    echo ""
}

function create_zshrc() {
    if [ -f ~/.zshrc ] ; then
        echo "zshrc config is already exists."
        cp ~/.zshrc ~/.zshrc.bak
        echo "backup the zshrc config to ~/.zshrc.bak"
    fi

    # generate .zshrc
    tee $HOME/.zshrc <<EOF
export ZSH_CONFIG_DIR="$HOME/.config/zsh"
FPATH=\$ZSH_CONFIG_DIR:\$FPATH
autoload -Uz zshrc
zshrc
EOF

    echo ".zshrc generated"
    echo
}

function install_starship_prompt() {
    echo "Installing starship prompt..."
    curl -sS https://starship.rs/install.sh | sh
}

function copy_starship_config() {
    echo "Copying starship config..."
    if [ -f ~/.config/starship.toml ] ; then
        echo ""
        echo "starship config is already exists."
        cp ~/.config/starship.toml ~/.config/starship.toml.bak
        echo "backup the starship config to ~/.config/starship.toml.bak"
    fi

    cp ./starship.toml ~/.config/starship.toml
    echo "starship config is copied to ~/.config/starship.toml"
}

echo "Installing ZSH config..."

resolve_requirements
get_the_repo
create_zshrc
install_starship_prompt
copy_starship_config

