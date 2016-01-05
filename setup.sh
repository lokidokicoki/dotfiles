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
ln -s $HERE/jsbeautifyrc.json ~/.jsbeautifyrc
ln -s $HERE/gitconfig ~/.gitconfig
ln -s $HERE/git-prompt.sh ~/.git-prompt.sh
ln -s $HERE/scss-lint.yml ~/.scss-lint.yml

DIRECTORY=~/.atom
if [ -d "$DIRECTORY" ]; then
  # Control will enter here if $DIRECTORY exists.
  echo 'Replace atom configs'

  for f in $HERE/atom/*; do
    t=$(basename $f);

    if [ -e "$DIRECTORY/$t" ]; then
      rm "$DIRECTORY/$t"
      ln -s "$f" "$DIRECTORY/$t"
    fi
  done
fi
