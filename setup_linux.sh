#!/bin/bash

# preinstall packages
# wget curl pkg-config python git p7zip-full

# install rcm
# https://github.com/thoughtbot/rcm
# manualy install plug.vim
# curl -fLo "$HOME"/.vim/autoload/plug.vim --create-dirs
# https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# build environment
# libglib2.0-dev
#lua
git submodule init && git submodule update

# depends

lists=("vimrc.bundles" "aliases" "tmux.conf" "ctags" "gemrc" "gitignore" "gitmessage" "hushlogin" "psqlrc" "rcrc" "rspec" "vimrc" "zshenv" "zshrc")

for i in ${lists[@]}
do
	echo "link $i"
	ln -s $PWD/$i ~/.$i
done
