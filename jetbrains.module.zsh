#!/bin/zsh

function __start_ide() {
    kstart5 $1 $2 >/dev/null 2>&1
}

# open directory in webstorm
function webstorm() {
    # check WEBSTORM_HOME 
    if [ -z "$WEBSTORM_HOME" ]; then
        echo "WEBSTORM_HOME is not set"
        echo "please set WEBSTORM_HOME in ~/.zshrc"
        return
    fi
    if [ -z "$1" ]; then
        __start_ide $WEBSTORM_HOME/bin/webstorm.sh
        return
    fi 
    __start_ide $WEBSTORM_HOME/bin/webstorm.sh $1
}

# open directory in clion 
function clion() {
    if [ -z "$CLION_HOME" ]; then
        echo "CLION_HOME is not set"
        echo "please set CLION_HOME in ~/.zshrc"
        return
    fi
    if [ -z "$1" ]; then
        __start_ide $CLION_HOME/bin/clion.sh
        return
    fi 
    __start_ide $CLION_HOME/bin/clion.sh $1
}

# open directory in intellij 
function intellij() {
    if [ -z "$INTELLIJ_HOME" ]; then
        echo "INTELLIJ_HOME is not set"
        echo "please set INTELLIJ_HOME in ~/.zshrc"
        return
    fi
    if [ -z "$1" ]; then
        __start_ide $INTELLIJ_HOME/bin/idea.sh
        return
    fi 
    __start_ide $INTELLIJ_HOME/bin/idea.sh $1
}

# open directory in pycharm 
function pycharm() {
    if [ -z "$PYCHARM_HOME" ]; then
        echo "PYCHARM_HOME is not set"
        echo "please set PYCHARM_HOME in ~/.zshrc"
        return
    fi
    if [ -z "$1" ]; then
        __start_ide $PYCHARM_HOME/bin/pycharm.sh
        return
    fi 
    __start_ide $PYCHARM_HOME/bin/pycharm.sh $1
}

# open directory in dataspell
function dataspell() {
    if [ -z "$DATASPLELL_HOME" ]; then
        echo "DATASPLELL_HOME is not set"
        echo "please set DATASPLELL_HOME in ~/.zshrc"
        return
    fi
    if [ -z "$1" ]; then
        __start_ide $DATASPLELL_HOME/bin/dataspell.sh
        return
    fi 
    __start_ide $DATASPLELL_HOME/bin/dataspell.sh $1
}

# open directory in phpstorm
function phpstorm() {
    if [ -z "$PHPSTORM_HOME" ]; then
        echo "PHPSTORM_HOME is not set"
        echo "please set PHPSTORM_HOME in ~/.zshrc"
        return
    fi
    if [ -z "$1" ]; then
        __start_ide $PHPSTORM_HOME/bin/phpstorm.sh
        return
    fi 
    __start_ide $PHPSTORM_HOME/bin/phpstorm.sh $1
}

