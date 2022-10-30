
PLUG_LIST="$ZSH_CONFIG_DIR/plugins.list"
PLUG_DIR="$ZSH_CONFIG_DIR/plugins"
CAT="/usr/bin/cat"

# check for plugin system
function _plug_system_init() {
    if [ ! -d "$PLUG_DIR" ]; then
        mkdir -p "$PLUG_DIR"
    fi
    if [ ! -f $PLUG_LIST ]; then
        touch $PLUG_LIST
    fi
}

function _git_download_plugin() {
    local IFS=' '
    echo $1 | read name url
    if [[ -d $PLUG_DIR/$name ]]; then
        echo "Plugin $name already installed"
    else
        echo "Installing plugin $name; url=$url"
        git clone "$url" $PLUG_DIR/$name --depth=1
    fi
}

function plug_list() {
    _plug_system_init
    if [[ -z $($CAT $PLUG_LIST) ]]; then
        echo "No plugins installed"
    else
        $CAT $PLUG_LIST
    fi
}

function plug_install() {
    if [[ ! -f $PLUG_LIST ]]; then
        touch $PLUG_LIST
    fi
    local IFS=$'\n'                     # make newlines the only separator
    set local_options -f                # disable globbing
    for plugin in $($CAT $PLUG_LIST); do
        _git_download_plugin $plugin
    done
}
    
function plug_tidy() {
    if [[ ! -f $PLUG_LIST ]]; then
        touch $PLUG_LIST
        return 0
    fi
    # remove empty lines
    sed -i '/^$/d' $PLUG_LIST

    # remove duplicate lines 
    sort -u $PLUG_LIST > $PLUG_LIST.tmp 
    mv $PLUG_LIST.tmp $PLUG_LIST 

    # remove invalid lines
    sed -i 's/^[ \t]*//;s/[ \t]*$//' $PLUG_LIST # trim
    sed -i '/^[^ ]*$/d' $PLUG_LIST
}

function plug_add() {
    name=$1; url=$2;
    if [[ -z $name ]]; then
        echo "No plugin name provided"
    elif [[ -z $url ]]; then
        echo "No plugin url provided"
    else
        echo "$name $url" >> $PLUG_LIST
        echo "Added plugin $name"
        echo "Tidying plugins list"
        plug_tidy
    fi
}

function plug_remove() {
    name=$1;
    if [[ -z $name ]]; then
        echo "No plugin name provided"
    else
        sed -i "/$name/d" $PLUG_LIST
        echo "Removed plugin $name"
        echo "Tidying plugins list"
        plug_tidy
    fi
}

function plug_source() {
    for plugin in $(cat $PLUG_LIST); do
        local IFS=$' '
        echo $plugin | read name url 
        if [ -d "$PLUG_DIR/$name" ]; then
            source $PLUG_DIR/$name/${name}.plugin.zsh
        fi
    done
}

