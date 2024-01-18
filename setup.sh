#!/bin/bash

# need to document
HERE=$(pwd)
echo $HOME
echo "Setup dotfiles in $HOME"

FILES_TO_LINK=('profile' 'bash_aliases' 'bashrc' 'git-prompt.sh' 'vimrc' 'inputrc' 'tmux.conf' 'remarkrc.json')

ELEMENTS=${#FILES_TO_LINK[@]}

for (( i=0;i<$ELEMENTS;i++)); do
	FILE=${FILES_TO_LINK[${i}]}
	SRC="$HERE/$FILE"
	DEST="$HOME/.$FILE"

	echo "-> current file: $SRC -> $DEST"
	if [ ! -L "$DEST" ]; then
		echo "--> no symlink for $SRC, back up and link"
		if [ -f "$DEST" ]; then
			mv "$DEST" "$DEST"-old
		fi
		ln -s "$SRC" "$DEST"
	else
		echo "--> link exists for file $SRC, no action required"
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
		echo 'target exists'
	fi
done

if [ -d ~/.config/nvim -a -L ~/.config/nvim ]; then
	echo ".config/nvim exists as dir and link"

else
	ln -s $HERE/nvim ~/.config/nvim
fi
