if which chruby &> /dev/null; then
	source /usr/local/opt/chruby/share/chruby/chruby.sh
	latest_installed_ruby=$(chruby | tr " " "\n" | grep ^ruby | sort | tail -n 1)
	chruby $latest_installed_ruby
	source /usr/local/opt/chruby/share/chruby/auto.sh
fi
