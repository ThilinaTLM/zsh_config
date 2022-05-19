
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

# directory to path

source ./git_alias.zsh
source ./aliases.zsh
source ./env_vars.zsh

# source plugins 
source "./plugins/compleat.plugin.zsh"
source "./plugins/history-substring-search.plugin.zsh"
source "./plugins/history.plugin.zsh"
source "./plugins/lf.plugin.zsh"
source "./plugins/zsh-suggest.plugin.zsh"
source "./plugins/zsh-syntax-highlighting.plugin.zsh"
source "./plugins/zsh-z.plugin.zsh"

eval "$(starship init zsh)"

