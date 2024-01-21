#!/bin/bash

echo "Install apps"

APPS=(
	"fortune-mod"
	"python3-dev"
	"python-is-python3"
	"git"
	"build-essential"
	"cmake"
	"golang"
	"nodejs"
	"npm"
	"mono-complete"
	"openjdk-17-jdk"
	"openjdk-17-jre"
	"openssh-server"
	"fonts-powerline"
	"neovim"
)

sudo apt update
sudo apt install "${APPS[@]}"

echo "Instal git completion for bash"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

if [ ! -d "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
	echo "Install vim-plug and vim plugins"
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs http://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	neovim --headless  +PlugInstall
fi

echo "Install rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Setup SSH server"
sudo systemctl enable ssh --now


echo "Install App complete!"
