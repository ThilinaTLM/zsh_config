#         ______   ______ _____ _____ __  __ 
#        / ___\ \ / / ___|_   _| ____|  \/  |
#        \___ \\ V /\___ \ | | |  _| | |\/| |
#         ___) || |  ___) || | | |___| |  | |
#        |____/ |_| |____/ |_| |_____|_|  |_|
#                                            

# Start Stop Services
alias start="sudo systemctl start "
alias stop="sudo systemctl stop "

# Alternative Bash Commands
alias cat="bat --plain "
alias ls="exa "
alias npm="pnpm "

#        _____ ___   ___  _     ____  
#       |_   _/ _ \ / _ \| |   / ___| 
#         | || | | | | | | |   \___ \ 
#         | || |_| | |_| | |___ ___) |
#         |_| \___/ \___/|_____|____/ 
#                                     

# ViM
alias vim="nvim "

# Laravel
alias pa="php artisan "

# MPV
alias mpv-full="mpv --geometry=1366x768 "

#         ___ _____ _   _ _____ ____  ____  
#        / _ \_   _| | | | ____|  _ \/ ___| 
#       | | | || | | |_| |  _| | |_) \___ \ 
#       | |_| || | |  _  | |___|  _ < ___) |
#        \___/ |_| |_| |_|_____|_| \_\____/ 
#                                           

# Google Drive Sync with RClone
alias sem3up="rclone sync -P \"/mnt/LocalDisk1/Studies/Semester 03/\" Sem3:/"
alias sem3down="rclone sync -P Sem3:/ \"/mnt/LocalDisk1/Studies/Semester 03/\""
alias sem4up="rclone sync -P \"/mnt/LocalDisk1/Studies/Semester 04/\" aca-folders:/\"Semester 04\""
alias sem4down="rclone sync -P aca-folders:/\"Semester 04\" \"/mnt/LocalDisk1/Studies/Semester 04/\""

