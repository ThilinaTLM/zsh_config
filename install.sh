#!/bin/sh

function download_zsh_config() {
    # clone the repo
    if [ -d ~/.config/zsh ]; then
        echo "'zsh' directory is already exits inside the ~/.config directory."
        echo "Please backup and remove the directory before run the script."
        exit 1
    fi
    echo "Cloning the config files into ~/.config/zsh"
    git clone https://github.com/ThilinaTLM/zsh_config.git ~/.config/zsh --depth=1
    echo
}

function generate_zshrc() {
    if [ -f ~/.zshrc ] ; then
        echo "~/.zshrc config is already exists."
        cp ~/.zshrc ~/.zshrc.bak
        echo "Backuping the ~/.zshrc config to ~/.zshrc.bak"
    fi

    # generate .zshrc
    tee $HOME/.zshrc <<EOF
export ZSH_CONFIG_DIR="$HOME/.config/zsh"
FPATH=\$ZSH_CONFIG_DIR:\$FPATH
autoload -Uz zshrc
zshrc
EOF

    echo "~/.zshrc is generated"
    echo
}


echo "Installing ZSH config..."

# check zsh is installed
if ! command -v zsh > /dev/null; then
    echo "zsh is not installed."
    exit 1
fi

# check starship is installed
if ! command -v starship > /dev/null; then
    echo "starship is not installed, run following command to install it."
    echo "curl -sS https://starship.rs/install.sh | sh"
    exit 1
fi

# check git is installed
if ! command -v git > /dev/null; then
    echo "git is not installed."
    exit 1
fi

# download config file 
download_zsh_config

# generate .zshrc 
generate_zshrc

# copy starship.toml file
if [ -f ~/.config/starship.toml ] ; then
    echo "~/.config/starship.toml config is already exists."
    cp ~/.config/starship.toml ~/.config/starship.toml.bak
    echo "Backuping the ~/.config/starship.toml config to ~/.config/starship.toml.bak"
fi
echo "Copying the starship.toml config to ~/.config/starship.toml"
cp ~/.config/zsh/starship.toml ~/.config/starship.toml
echo ''

# check zsh is default shell 
if [ $(readlink -f "$SHELL") != "$(command -v zsh)" ]; then
    echo "zsh is not default shell."
    echo "run 'chsh -s $(command -v zsh)' to set zsh as default shell."
fi

echo "Run 'plug_install' to install the plugins."

echo "Done."
