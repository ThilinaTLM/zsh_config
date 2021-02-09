##
# https://denysdovhan.com/spaceship-prompt/docs/Options.html
##

## Spaceship configuration
SPACESHIP_PROMPT_ADD_NEWLINE=false	        # Adds a newline character before each prompt line
SPACESHIP_PROMPT_SEPARATE_LINE=false	        # Make the prompt span across two lines
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=false	# Shows a prefix of the first section in prompt
SPACESHIP_PROMPT_PREFIXES_SHOW=true	        # Show prefixes before prompt sections or not
SPACESHIP_PROMPT_SUFFIXES_SHOW=true	        # Show suffixes before prompt sections or not
SPACESHIP_PROMPT_DEFAULT_PREFIX='via·'	    # Default prefix for prompt sections

SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_CHAR_SYMBOL=$

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  jobs          # Background jobs indicator
  vi_mode       # Vi-mode indicator
  git           # Git section (git_branch + git_status)
  # time          # Time stamps section
  # exec_time     # Execution time
)

SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_SHOW=needed
SPACESHIP_HOST_SHOW=true

SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_TRUNC=3

SPACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_GIT_BRANCH_SHOW=true

SPACESHIP_FOOBAR_SHOW=false

SPACESHIP_HG_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_HASKELL_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_VENV_SHOW=true
SPACESHIP_CONDA_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECTL_SHOW=false
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_JOBS_SHOW=true
SPACESHIP_EXIT_CODE_SHOW=true

## Start
source $DIR_ROOT/themes/spaceship-prompt/spaceship.zsh

## Post Configurations
spaceship_vi_mode_enable
