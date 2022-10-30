## Aliases -------------------------------------------------------------

# replace cat with bat
# check bat command exists $(which bat)
if [ -x "$(which bat)" ]; then
  alias cat="bat "
fi

# replace ls with exa
if [ -x "$(which exa)" ]; then
  alias ls="exa --icons --git --group-directories-first --color=always --time-style=long-iso "
fi

# alias for neovim 
alias v="nvim "


## Env variables -------------------------------------------------------

# if neovim exists, use it $(which nvim)
if [ -x "$(which nvim)" ]; then
    export EDITOR="$(which nvim)"
fi

# kitty terminal 
if [ $TERM = "xterm-kitty" ]; then
    alias ssh="kitty +kitten ssh "
    alias icat="kitty +kitten icat "
fi
