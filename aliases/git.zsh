
# Variables
# $gcb=$(git branch --show-current)
# function gb() {
#     echo -e "$(git branch -a | fzf | sed 's/[^a-zA-Z0-9/]*(remote)*//g')"
# }

# Aliases
alias gss="git status "
alias gaa="git add --all "
alias gcm="git commit -m "

alias gps="git push "
alias gpl="git pull "
alias gf="git fetch "

alias gbb="git checkout -b "

alias gcb="git branch --show-current"
alias gb="git branch -a | fzf | sed 's/[^a-zA-Z0-9/]*(remote)*//g'"
alias gc="git branch -a | fzf | sed 's/[^a-zA-Z0-9/]*(remote)*//g' | xargs git checkout "



