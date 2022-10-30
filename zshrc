
# edit-command-line
autoload edit-command-line; zle -N edit-command-line

# zsh completion
autoload -Uz compinit && compinit
zstyle ':completion:*' completer _expand_alias _complete _ignored
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'

bindkey  "^[[H"   beginning-of-line # home key
bindkey  "^[[F"   end-of-line # end key
bindkey  "^[[3~"  delete-char # delete key
bindkey -v # enable VIM mode

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# ZSH preserve history across sessions
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY

# directory to path
if [ -z "$ZSH_CONFIG_DIR" ]; then
  export ZSH_CONFIG_DIR="$HOME/.config/zsh"
fi

source "$ZSH_CONFIG_DIR/basic.module.zsh"
source "$ZSH_CONFIG_DIR/util.module.zsh"
source "$ZSH_CONFIG_DIR/git.module.zsh"

plug_source
eval "$(starship init zsh)"

