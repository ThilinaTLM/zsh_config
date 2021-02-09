
## Directories
#DIR_ROOT=~/dotfiles/shell
DIR_ALIAS=$DIR_ROOT/aliases
DIR_THEME=$DIR_ROOT/themes
DIR_PLUGS=$DIR_ROOT/plugins
DIR_SCRIPT=$DIR_ROOT/scripts

# Basic Configurations
# HISTFILE="$HOME/.zsh_history"

## PS1 SHELL THEME
source $DIR_THEME/theme.zsh-theme

# Yarn Globals
export PATH="/home/tlm/.yarn/bin:$PATH"

# Git autocomplete
autoload -Uz compinit && compinit


# Setup modules
for f in $DIR_PLUGS/*.plugin.zsh; do source $f; done
for f in $DIR_SCRIPT/*.zsh; do source $f; done
for f in $DIR_ALIAS/*.zsh; do source $f; done

# Startup echo
$DIR_ROOT/pfetch
