
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
