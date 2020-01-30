source ~/.secrets.sh

git config --global --unset-all core.editor
git config --global --add core.editor "subl -wn"
git config --global user.name "Tyler Hartland"
git config --global user.email $TYLER_EMAIL
git config --global push.default current
git config --global core.excludesfile .gitignore_global
