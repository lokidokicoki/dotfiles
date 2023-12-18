#!/bin/bash

echo "Install apps"

sudo apt update

sudo apt install fortune-mod vim-gtk3 vim-nox vim-doc python3-dev python-is-python3 git build-essential cmake golang nodejs npm mono-complete openjdk-17-jdk openjdk-17-jre openssh-server fonts-powerline neovim

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

if [ ! -d "$HOME/.vim/autoload/plug.vim" ]; then
	echo "Install vim-plug and vim plugins"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs http://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	vim.nox  +PlugInstall 
fi


echo "Setup SSH server"
sudo systemctl enable ssh --now


echo "Install App complete!"
