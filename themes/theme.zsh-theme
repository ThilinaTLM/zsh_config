
# Customization
export TYPEWRITTEN_SYMBOL="$"
export TYPEWRITTEN_PROMPT_LAYOUT="singleline"
export TYPEWRITTEN_RIGHT_PROMPT_PREFIX="# "

# Load theme
fpath+=$DIR_THEME/typewritten
autoload -U promptinit; promptinit
prompt typewritten


