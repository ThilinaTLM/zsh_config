## Directories
#DIR_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DIR_ROOT=/home/tlm/dotfiles/shell
DIR_THEME=$DIR_ROOT/themes
DIR_PLUGS=$DIR_ROOT/plugins
DIR_SHCUTS=$DIR_ROOT/aliases
DIR_SCRIPTS=$DIR_ROOT/scripts

# Basic Configurations
# HISTFILE="$HOME/.zsh_history"

## PS1 SHELL THEME
source $DIR_THEME/theme.zsh-theme

# Git autocomplete
autoload -Uz compinit && compinit

# Edit command in the editor
autoload edit-command-line; zle -N edit-command-line

# Expand aliases with TAB
zstyle ':completion:*' completer _expand_alias _complete _ignored

# 0 -- vanilla completion (abc => abc)
# 1 -- smart case completion (abc => Abc)
# 2 -- word flex completion (abc => A-big-Car)
# 3 -- full flex completion (abc => ABraCadabra)
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'


# HOME KEY and END KEY
# allow HOME and END key to move
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# VIM Mode
bindkey -v

# Global Variables
export PATH="/home/tlm/.yarn/bin:$PATH" # Yarn globals
export PATH="$DIR_SCRIPTS:$PATH"        # Add scripts 
export PATH="/home/tlm/.local/share/gem/ruby/2.7.0/bin:$PATH"
# directory to path
export EDITOR=/usr/local/bin/lvim
export TERMINAL=console
export BROWSER=/bin/brave

# FZF Commands
# export FZF_DEFAULT_COMMAND='ag --hidden --nocolor -g . --ignore node_modules --ignore .git --ignore .idea --ignore .vscode --ignore .ccls-cache'

# Setup modules
for f in $DIR_PLUGS/*.plugin.zsh; do source $f; done
for f in $DIR_SHCUTS/*.zsh; do source $f; done

# Startup echo
#$DIR_ROOT/pfetch
