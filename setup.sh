#!/bin/bash

# need to document
HERE=$(pwd)
echo $HOME
echo 'Setup dotfiles'

FILES=('profile' 'bash_aliases' 'bashrc' 'git-prompt.sh' 'gitconfig', 'vimrc')

ELEMENTS=${#FILES[@]}

echo "array count $ELEMENTS"

for (( i=0;i<$ELEMENTS;i++)); do
  FILE=${FILES[${i}]}
  echo "current file: $HOME/.$FILE"
  if [ ! -h $HOME/.$FILE ]; then
    echo "no link for $FILE"
    if [ -f $HOME/.$FILE ]; then
      mv $HOME/.$FILE $HOME/.$FILE-old
    fi
    ln -s $HERE/$FILE $HOME/.$FILE
  else
    echo "link exists for  file $FILE"
  fi
done
# ln -s $HERE/bashrc ~/.bashrc
# ln -s $HERE/bash_aliases ~/.bash_aliases
# ln -s $HERE/profile ~/.profile
# ln -s $HERE/vimrc ~/.vimrc
# ln -s $HERE/gitconfig ~/.gitconfig
# ln -s $HERE/git-prompt.sh ~/.git-prompt.sh
# ln -s $HERE/npmrc ~/.npmrc

