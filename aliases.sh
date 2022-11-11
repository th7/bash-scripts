alias sbp='source ~/.bash_profile'
alias ebp='subl -wn ~/.bash_profile; sbp'
alias szp='source ~/.zprofile'
alias ezp='subl -wn ~/.zprofile; szp'
alias hi='history | grep'
alias be='bundle exec'
alias merge-push-main='this_branch=$(git branch --show-current) && git checkout main && git merge --ff-only $this_branch && git push && git branch -d $this_branch'
alias esh="subl -wn $BASH_SCRIPTS_DIR"
wpr_command="until gh pr status | grep 'passing\|fail'; do sleep 2; done"
alias wpr="echo '${wpr_command}' && $wpr_command"
