
autoload edit-command-line; zle -N edit-command-line

# Autocomplete
autoload -Uz compinit && compinit
zstyle ':completion:*' completer _expand_alias _complete _ignored
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
export PATH="/home/tlm/.local/share/gem/ruby/2.7.0/bin:$PATH"
# directory to path
export EDITOR=/usr/bin/nvim
export TERMINAL=console
export BROWSER=/bin/brave
export CHROME_EXECUTABLE="$BROWSER"

source ./git_alias.zsh
eval "$(starship init zsh)"

