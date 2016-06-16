parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED=31
GREEN=32

git_status_color() {
  if [[ -d .git ]] && [[ `git status` =~ ^.*nothing\ to\ commit.*$ ]]; then
  	echo $GREEN
  else
  	echo $RED
  fi
}

export PS1="\W\[\033[\$(git_status_color)m\]\$(parse_git_branch)\[\033[00m\] $ "
