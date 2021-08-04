                                                 
#     ___   ___   _ __ ___   _ __ ___    ___   _ __  
#    / __| / _ \ | '_ ` _ \ | '_ ` _ \  / _ \ | '_ \ 
#   | (__ | (_) || | | | | || | | | | || (_) || | | |
#    \___| \___/ |_| |_| |_||_| |_| |_| \___/ |_| |_|
#                                                    
                                                 

# Start Stop Services
alias start="sudo systemctl start "
alias stop="sudo systemctl stop "

## alternative system tools 
# need to have bat,exa installed
alias cat="bat --plain "
alias ls="exa --icons "
alias ssh="kitty +kitten ssh"

## ViM
# need to have neovim installed
alias vim="nvim "
alias v="nvim "

# MPV
# staring mpv player with full screen
alias mpv-full="mpv --geometry=1366x768 "

# Google Drive Sync with RClone
# alias sem3up="rclone sync -P \"/mnt/LocalDisk1/Studies/Semester 03/\" Sem3:/"
# alias sem3down="rclone sync -P Sem3:/ \"/mnt/LocalDisk1/Studies/Semester 03/\""
# alias sem4up="rclone sync -P \"/mnt/LocalDisk1/Studies/Semester 04/\" aca-folders:/\"Semester 04\""
# alias sem4down="rclone sync -P aca-folders:/\"Semester 04\" \"/mnt/LocalDisk1/Studies/Semester 04/\""

