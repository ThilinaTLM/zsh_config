
# Helper function to get user selection from directoris
function _jump_to_dir() {
    cd "$1/$(ls $1 | dmenu -i -l 10 -p CD:)"
}


# Directories
DIR_DOTFILES='"/home/tlm/dotfiles"'
DIR_PROJECTS='"/home/tlm/Disk1/Programming"'
DIR_FILMS='"/home/tlm/Disk2/Films & TV Series"'

# aliases
alias jd="_jump_to_dir $DIR_DOTFILES "
alias jp="_jump_to_dir $DIR_PROJECTS "
alias jf="_jump_to_dir $DIR_FILMS "

