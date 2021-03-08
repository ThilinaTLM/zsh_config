## Directories
#DIR_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DIR_ROOT=/home/tlm/dotfiles/shell
DIR_THEME=$DIR_ROOT/themes
DIR_PLUGS=$DIR_ROOT/plugins
DIR_SCRIPT=$DIR_ROOT/scripts

# Basic Configurations
# HISTFILE="$HOME/.zsh_history"

## PS1 SHELL THEME
source $DIR_THEME/theme.zsh-theme

# Git autocomplete
autoload -Uz compinit && compinit

# Edit command in the editor
autoload edit-command-line; zle -N edit-command-line

# HOME KEY and END KEY
# allow HOME and END key to move
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# Global Variables
# Yarn Globals
export PATH="/home/tlm/.yarn/bin:$PATH"
export EDITOR=/bin/nvim

# Setup modules
for f in $DIR_PLUGS/*.plugin.zsh; do source $f; done
for f in $DIR_SCRIPT/*.zsh; do source $f; done

# Startup echo
#$DIR_ROOT/pfetch
