#!/bin/sh

# "echo -e "No\nYes" | dmenu -i -p "Do you want to shutdown ?"

CHOICE=$(echo "Cancel\nShutdown\nRestart\nLogout" | dmenu -i -p "Do you want to shutdown ?")

#if [[ $CHOICE == "Shutdown" ]]; then
#    shutdown now
#elif [[ $CHOICE == "Restart" ]]; then
#    reboot 
#elif [[ $CHOICE == "Logout" ]]; then
#    loginctl kill-session self
#fi;

# [[ $(echo -e "No\nYes" | dmenu -i -p "Do you want to shutdown ?") == "Yes" ]]  && shutdown now


case $CHOICE in 
    Shutdown)
        echo "Shutting down"
        shutdown now
        ;;
    Restart)
        echo "Restarting"
        reboot
        ;;
    Logout)
        echo "Logging out"
        loginctl kill-session self
        ;;
esac
