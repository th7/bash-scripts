alias szrc='source ~/.zshrc'
alias ezrc='subl -wn ~/.zshrc; szrc'

alias hi='history | grep'
alias be='bundle exec'
alias merge-push-main='this_branch=$(git branch --show-current) && git checkout main && git merge --ff-only $this_branch && git push && git branch -d $this_branch'
alias esh="subl -wn $BASH_SCRIPTS_DIR"
wpr_command="until gh pr status | grep 'passing\|fail'; do sleep 2; done"
alias wpr="echo '${wpr_command}' && $wpr_command"
alias rnf='be rspec --next-failure && (be rspec || be rspec --next-failure)'
alias rnfc='rnf && be rubocop'

function ruby-shorter-version {
	ruby -e "puts RUBY_VERSION.split('.').take(2).join('.')"
}

function ruby-doc {
	base_url="https://docs.ruby-lang.org/en/$(ruby-shorter-version)"
	if [ -n $2 ]; then
		if [[ $2 = "#"* ]]; then
			anchor="method-i-${2#\#}"
		elif [[ $2 = "."* ]]; then
			anchor="method-c-${2#.}"
		fi
		open "$base_url/$1.html#$anchor"
	elif [ -n $1 ]; then
		open "$base_url/$1.html"
	else
		open $base_url
	fi
}

function wut {
	type_output=$(type $1)
	echo $type_output
	if [[ $type_output = *"is a shell function"* ]]; then
		declare -f $1
	fi
}
