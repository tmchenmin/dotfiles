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

lists=("vim" "zsh" "vimrc.bundles" "aliases" "tmux.conf" "ctags" "gemrc"
  "gitconfig" "gitignore" "gitmessage" "hushlogin" "psqlrc" "rcrc" "rspec" "vimrc" "zshenv" "zshrc")

for i in ${lists[@]}
do
  echo "link $i"
  ln -s $PWD/$i ~/.$i
done



if ! [ -e $HOME/.vim ]; then
  echo "setup vim environment"
  mkdir -p $HOME/.vim/autoload
  mkdir -p $HOME/.vim/ftplugin
  mkdir -p $HOME/.vim/plugin
  pushd vim
  for i in `ls`
  do
      pushd $i
      for j in `ls`
      do
        ln -s $PWD/$j $HOME/.vim/$i/$j
      done
      popd
  done
  popd
  # PlugInstall might fails, you should try multiple times
  echo "vim environment setup finished, open vim and input :PlugInstall to install the plugins"
fi

if ! [ -e $HOME/.zsh ]; then
    echo "setup zsh environment"
    pushd zsh
    for i in `ls`
    do
      mkdir -p $HOME/.zsh/$i
      pushd $i
      for j in `ls`
      do
        ln -s $PWD/$j $HOME/.zsh/$i/$j
      done
      popd
    done
    popd
fi
