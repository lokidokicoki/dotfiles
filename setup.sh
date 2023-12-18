#!/bin/bash

# need to document
HERE=$(pwd)
echo $HOME
echo 'Setup dotfiles'

FILES_TO_LINK=('profile' 'bash_aliases' 'bashrc' 'git-prompt.sh' 'vimrc' 'inputrc' 'remarkrc.json')

ELEMENTS=${#FILES_TO_LINK[@]}

echo "array count $ELEMENTS"

for (( i=0;i<$ELEMENTS;i++)); do
  FILE=${FILES_TO_LINK[${i}]}
  echo "current file: $HOME/$FILE"
  if [ ! -h $HOME/$FILE ]; then
    echo "no link for $FILE"
    if [ -f $HOME/$FILE ]; then
      mv $HOME/$FILE $HOME/$FILE-old
    fi
    ln -s $HERE/$FILE $HOME/.$FILE
  else
    echo "link exists for file $FILE"
  fi
done


TEMPLATES_TO_COPY=('gitconfig')

ELEMENTS=${#TEMPLATES_TO_COPY[@]}

echo "template array count $ELEMENTS"

for (( i=0;i<$ELEMENTS;i++)); do
  FILE=${TEMPLATES_TO_COPY[${i}]}
  echo "current file: $HOME/.$FILE"
  if [ ! -f "$HOME/.$FILE" ]; then
    mv "$HOME/.$FILE" "$HOME/.$FILE-old"
    cp "$HERE/$FILE" "$HOME/.$FILE"
  else
	echo "target $FILE exists"
  fi
done

echo "create symlink for vim subdirs"

ln -s $HERE/vim $HOME/.vim

ln -s $HERE/init.vim $HOME/.config/nvim/init.vim
