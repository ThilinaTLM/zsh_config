#!/bin/zsh

export WEBSTORM_HOME="/opt/WebStorm/"
export CLION_HOME="/opt/CLion/"
export INTELLIJ_HOME="/opt/IntelliJ/"
export PYCHARM_HOME="/opt/PyCharm/"

function __start_ide() {
    kstart5 $1 $2 >/dev/null 2>&1
}

# open directory in webstorm
function webstorm() {
    if [ -z "$1" ]; then
        __start_ide $WEBSTORM_HOME/bin/webstorm.sh
        return
    fi 
    __start_ide $WEBSTORM_HOME/bin/webstorm.sh $1
}

# open directory in clion 
function clion() {
    if [ -z "$1" ]; then
        __start_ide $CLION_HOME/bin/clion.sh
        return
    fi 
    __start_ide $CLION_HOME/bin/clion.sh $1
}

# open directory in intellij 
function intellij() {
    if [ -z "$1" ]; then
        __start_ide $INTELLIJ_HOME/bin/idea.sh
        return
    fi 
    __start_ide $INTELLIJ_HOME/bin/idea.sh $1
}

# open directory in pycharm 
function pycharm() {
    if [ -z "$1" ]; then
        __start_ide $PYCHARM_HOME/bin/pycharm.sh
        return
    fi 
    __start_ide $PYCHARM_HOME/bin/pycharm.sh $1
}

