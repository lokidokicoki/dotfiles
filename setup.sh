#!/bin/bash

# need to document
HERE=$(pwd)
echo 'Setup dotfiles'

ln -s $HERE/bashrc ~/.bashrc
ln -s $HERE/bash_aliases ~/.bash_aliases
ln -s $HERE/bash_profile ~/.bash_profile
ln -s $HERE/vimrc ~/.vimrc
ln -s $HERE/jshintrc.json ~/.jshintrc
ln -s $HERE/htmlhintrc.json ~/.htmlhintrc
ln -s $HERE/jscsrc.json ~/.jscsrc
ln -s $HERE/jsbeautifyrc ~/.jsbeautifyrc
ln -s $HERE/gitconfig ~/.gitconfig
ln -s $HERE/scss-lint.yml ~/.scss-lint.yml
ln -s $HERE/alias_completion.sh ~/.alias_completion.sh
