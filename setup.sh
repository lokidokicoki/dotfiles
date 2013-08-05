#!/bin/bash

HERE=$(pwd)
echo 'Setup dotfiles'

ln -s $HERE/bashrc ~/.bashrc
ln -s $HERE/bash_aliases ~/.bash_aliases
ln -s $HERE/bash_profile ~/.bash_profile
ln -s $HERE/vimrc ~/.vimrc