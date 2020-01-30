source ~/.secrets.sh

[[ ":$PATH:" != *":${HOME}/bin:"* ]] && PATH="${HOME}/bin:${PATH}"

source "$BASH_SCRIPTS_DIR/git-aliases.bash"
source "$BASH_SCRIPTS_DIR/git-completion.bash"
source "$BASH_SCRIPTS_DIR/git-completion-aliases.bash"
source "$BASH_SCRIPTS_DIR/prompt.bash"
source "$BASH_SCRIPTS_DIR/aliases.bash"
source "$BASH_SCRIPTS_DIR/editor.bash"

source "$BASH_SCRIPTS_DIR/chruby.bash"
source "$BASH_SCRIPTS_DIR/nvm.bash"

export HISTCONTROL=ignoreboth:erasedups
