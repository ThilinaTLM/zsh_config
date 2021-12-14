
#      _       _    __ _ _           
#   __| | ___ | |_ / _(_) | ___  ___ 
#  / _` |/ _ \| __| |_| | |/ _ \/ __|
# | (_| | (_) | |_|  _| | |  __/\__ \
#  \__,_|\___/ \__|_| |_|_|\___||___/
#

## Fill the list with your bookmarks
# Use absolute paths
# Use single quote for directory names which has spaces
#   Ex: 'Films & TV Series'
BOOKMARKS=(
        "sh /home/tlm/dotfiles/shell"
        "vim /home/tlm/dotfiles/vim"
        "dwm /home/tlm/dotfiles/dwm"

        "prog /home/tlm/Disk1/Programming"
        "stud /home/tlm/Disk1/Studies"
        "film /home/tlm/Disk2/'Films & TV Series'"
    )

function _goto_bookmark() {
    CHOICE=$(printf "%s\n" "${BOOKMARKS[@]}" | fzf | sed -e "s/^\w\+\s\+//g" )
    echo "$CHOICE"
}


## Usage
# cd `g`
alias g="_goto_bookmark"



