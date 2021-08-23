alias a='git add'
alias b='git branch'
alias c='git checkout'
alias d='git diff'
alias f='git fetch --prune'
alias k='git cherry-pick'
alias l='git log --pretty=oneline --abbrev-commit'
alias n='git commit --verbose --amend'
alias r='git remote'
alias s='git commit --dry-run --short'
alias t='git diff --cached'

# git add and the staging area
alias a='git add'
alias aa='git add --update'          # mnemonic: "add all"
alias stage='git add'
alias ap='git add --patch'
alias p='git diff --cached'          # mnemonic: "patch"
alias unstage='git reset HEAD'

# commits and history
alias ci='git commit --verbose'
alias ca='git commit --verbose --all'
alias amend='git commit --verbose --amend'
alias n='git commit --verbose --amend'
alias k='git cherry-pick'
alias re='git rebase --interactive'
alias pop='git reset --soft HEAD^'
alias peek='git log -p --max-count=1'
alias pl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias bs="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

# git fetch
alias f='git fetch'
alias pm='git pull'          # mnemonic: pull merge
alias pr='git pull --rebase' # mnemonic: pull rebase
alias pff='git pull --ff-only' # mnemonic: pull fast-forward

# git diff
alias d='git diff'
alias ds='git diff --stat'    # mnemonic: "diff stat"

# git reset
alias hard='git reset --hard'
alias soft='git reset --soft'
alias scrap='git checkout HEAD'
