#!/bin/bash

echo "Install apps"

sudo apt update

sudo apt install fortune-mod vim-gtk3 vim-nox vim-doc python3-dev python-is-python3 git build-essential cmake golang nodejs npm mono-complete openjdk-17-jdk openjdk-17-jre openssh-server


if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
	echo "Install Vundle and vim plugins"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim.nox  +PluginInstall +qall
fi

echo "Build YCM"

cd $HOME/.vim/bundle/YouCompleteMe
python3 install.py --all

echo "Setup SSH server"
sudo systemctl enable ssh --now


echo "Install App complete!"
