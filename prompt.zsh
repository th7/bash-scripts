parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

git_status_color() {
  if [[ `git status 2> /dev/null` =~ ^.*nothing\ to\ commit.*$ ]]; then
  	echo 'green'
  else
  	echo 'red'
  fi
}

setopt promptsubst
echo $PROMPT
PROMPT='%1~%F{$(git_status_color)}$(parse_git_branch)%f $ '
echo $PROMPT
