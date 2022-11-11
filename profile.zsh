source ~/.secrets.sh
source "$BASH_SCRIPTS_DIR/profile.sh"
source "$BASH_SCRIPTS_DIR/prompt.zsh"

zstyle ':completion:*:*:git:*' script "$BASH_SCRIPTS_DIR/git-completion.bash"
fpath=("$BASH_SCRIPTS_DIR/zsh-functions" $fpath)
autoload -Uz compinit
compinit

setopt HISTIGNOREALLDUPS
