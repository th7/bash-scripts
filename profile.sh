[[ ":$PATH:" != *":${HOME}/bin:"* ]] && PATH="${HOME}/bin:${PATH}"

source "$BASH_SCRIPTS_DIR/git-aliases.sh"
source "$BASH_SCRIPTS_DIR/aliases.sh"
source "$BASH_SCRIPTS_DIR/editor.sh"

source "$BASH_SCRIPTS_DIR/chruby.sh"
source "$BASH_SCRIPTS_DIR/subl.sh"
source "$BASH_SCRIPTS_DIR/libpq.sh"
source "$BASH_SCRIPTS_DIR/ruby-debug.sh"
