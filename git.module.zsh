
# Choose branch
function _select_branch() {
    if [ -z $1 ]; then
        PROMPT="select: "
    else
        PROMPT=$1
    fi
    cat | fzf -m --marker=✓ --prompt="from: " --preview="echo {} | sed 's/\s\+//g' | sed 's/\*//g' | xargs git log"
}

# Create new git branch
function _git_new_branch() {
    if [ -z $1 ]; then
        echo "Usage: "
        echo "  arg1 - name for new branch"
        echo "  arg2 - branch created from"
        echo "         . means from current branch"
        echo "         or you can provide a branch name"
        echo "         or leave empty; list will be provided"
        return 1
    fi
    
    if [ -z $2 ]; then
        B_FROM=$(git branch | _select_branch 'from: ' | sed 's/\s\+//g' | sed 's/\*//g')
    elif [ $2 = "." ]; then
        B_FROM=$(git branch --show-current)
    else
        B_FROM=$2
    fi

    # checkout to source branch
    git checkout $B_FROM 

    # create the new branch and checkout
    git checkout -b $1
}

# Git switch branch
function _git_change_branch() {
    LIST_MODE=""
    while [[ $# -ge 1 ]];
    do
        opt="$1";
        shift;              #expose next argument
        case "$opt" in
            "-r" )
                LIST_MODE="-r"; 
                ;;
            "-a" )
                LIST_MODE="-a"; 
                ;;
            *) echo "Invalid option: $@"; return 1;;
       esac
    done
    git branch $LIST_MODE | sed 's/remotes\///g' | _select_branch 'checkout: ' | sed 's/\s\+//g' | sed 's/\*//g' | xargs git checkout
}

# git delete bulk
function git-del-branches() {
    LIST_MODE=""
    DEL_MODE="-d"
    while [[ $# -ge 1 ]];
    do
        opt="$1";
        shift;              #expose next argument
        case "$opt" in
            "-r" )
                LIST_MODE="-r"; 
                ;;
            "-D" )
                DEL_MODE="-D";
                ;;
            *) echo "Invalid option: $@"; return 1;;
       esac
    done
    git branch $LIST_MODE | sed 's/remotes\///g' | _select_branch 'delete: ' | sed 's/\s\+//g' | sed 's/\*//g' | xargs git branch $LIST_MODE $DEL_MODE 
}

# git log with pretty graph
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# Git status; git add all; git commit
alias gss="git status "
alias gaa="git add --all "
alias gcm="git commit -m "

# git push; git pull; git fetch
alias gps="git push "
alias gpl="git pull "
alias gf="git fetch "

# echo current branch name
# usage: gp origin `gcb`
alias gcb="git branch --show-current" 

# select git branch
# usage: git merge `gb`
alias gb="git branch -a | sed 's/remotes\///g' | _select_branch 'select: ' | sed 's/\s\+//g' | sed 's/\*//g'"

# git checkout
#alias gc="git branch -a | sed 's/remotes\///g' | _select_branch 'checkout: ' | sed 's/\s\+//g' | sed 's/\*//g' | xargs git checkout"
alias gc="_git_change_branch "


# Usage
#   gcb <branch-name>
#       Create new branch and switch to it
#   gcb <branch-name> master
#       Create new branch from master branch and switch to it
#   gcb <branch-name> .
#       Create new branch from current branch and switch to it
alias gnn="_git_new_branch "

