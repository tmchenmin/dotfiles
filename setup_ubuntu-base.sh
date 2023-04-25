#!/bin/bash

lists="silversearcher-ag ripgrep lua5.3 tig mosh fd-find fzf build-essential"

sudo apt install $lists -y

# change zsh as the login shell
# grep USER /etc/passwd to verify the login shell
# cat /etc/shells to see all the available shells
chsh -s /usr/bin/zsh
