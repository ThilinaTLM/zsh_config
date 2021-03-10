# shorts
alias gss="git status "
alias gaa="git add --all "
alias gcm="git commit -m "

alias gps="git push "
alias gpl="git pull "
alias gf="git fetch "

alias grl="git remote -v"
alias gb="git branch "
alias gbb="git checkout -b "
#alias gch="git checkout "

# Git checkout to a branch
function gbc() {
    git branch -a | fzf | sed 's/[^a-zA-Z0-9/]*(remote)*//g' | xargs git checkout
}
