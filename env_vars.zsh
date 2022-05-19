
# if neovim exists, use it $(which nvim)
if [ -x "$(which nvim)" ]; then
    export EDITOR="$(which nvim)"
fi

export BROWSER=/bin/brave
export CHROME_EXECUTABLE="$BROWSER"
