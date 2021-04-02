
# Variables
# $gcb=$(git branch --show-current)
# function gb() {
#     echo -e "$(git branch -a | fzf | sed 's/[^a-zA-Z0-9/]*(remote)*//g')"
# }

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
        B_FROM=$(git branch | fzf -m --marker=✓ --prompt="from: " | sed 's/\s*\*\s*//g')
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

# Basic Aliases
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gss="git status "
alias gaa="git add --all "
alias gcm="git commit -m "

alias gps="git push "
alias gpl="git pull "
alias gf="git fetch "

alias gbb="git checkout -b "

alias gcb="git branch --show-current"
alias gb="git branch -a | sed 's/remotes\///g' | fzf -m | sed 's/\s*\**\s*//g'"
alias gc="git branch -a | sed 's/remotes\///g' | fzf | sed 's/\s*\**\s*//g' | xargs git checkout "


