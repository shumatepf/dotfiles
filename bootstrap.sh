#!/bin/bash

cd dotfiles

initial_setup () {
	sudo apt-get install python3-dev build-essential cmake vim-nox zsh -y
}

link () {
    for file in $( ls -A) ; do
	    ln -vf "$PWD/$file" "$HOME" || true
    done
}

setup_vim () {
    # Install Vundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	cd ~/.vim/bundle/YouCompleteMe
	python3 install.py

    vim +PluginInstall +qall
}

setup_zsh () {
	chsh -s $(which zsh)
	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
}


initial_setup
link
setup_vim
setup_zsh
