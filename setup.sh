#!/bin/bash

# need to document
HERE=$(pwd)
echo 'Setup dotfiles'

ln -s $HERE/bashrc ~/.bashrc
ln -s $HERE/bash_aliases ~/.bash_aliases
ln -s $HERE/bash_profile ~/.bash_profile
ln -s $HERE/vimrc ~/.vimrc
ln -s $HERE/jshintrc ~/.jshintrc
ln -s $HERE/htmlhintrc ~/.htmlhintrc
ln -s $HERE/jscsrc ~/.jscsrc
ln -s $HERE/jsbeautifyrc ~/.jsbeautifyrc
ln -s $HERE/gitconfig ~/.gitconfig
ln -s $HERE/alias_completion.sh ~/.alias_completion.sh
