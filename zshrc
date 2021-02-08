
## Directories
DIR_ROOT=~/dotfiles/shell
DIR_ALIAS=$DIR_ROOT/aliases
DIR_THEME=$DIR_ROOT/themes
DIR_PLUGS=$DIR_ROOT/plugins
DIR_SCRIPT=$DIR_ROOT/scripts

## PS1 SHELL THEME
source $DIR_THEME/theme.zsh-theme

# Yarn Globals
export PATH="/home/tlm/.yarn/bin:$PATH"

# Setup Plugins
source $DIR_PLUGS/*.zsh

# Scripts
source $DIR_SCRIPT/*.zsh

# Aliases
source $DIR_ALIAS/*.zsh