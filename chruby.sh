chruby_path=/opt/homebrew/opt/chruby/share/chruby

if [ -f $chruby_path/chruby.sh ]; then
	source $chruby_path/chruby.sh
	latest_installed_ruby=$(chruby | tr " " "\n" | grep ^ruby | sort | tail -n 1)
	chruby $latest_installed_ruby
	source $chruby_path/auto.sh
else
	if brew list chruby &> /dev/null; then
		echo 'Chruby is installed, but the path is unknown.'
		echo "Check \`brew info chruby\` and then update $BASH_SCRIPTS_DIR/chruby.sh"
	fi
fi
