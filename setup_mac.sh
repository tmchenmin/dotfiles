#!/bin/bash

# 1. setup homebrew

# 2. setup rcm according to README.md

# 3. install homebrew packages

# command line tools
brew install tmux the_silver_searcher | yes
brew install diff-so-fancy | yes
brew install ripgrep | yes
# develop tools
brew install cmake tig git-lfs | yes
# gnu utils
#brew install gawk gsed gdu
brew install coreutils | yes

# ========================================================
# brew cask, need open it and setup manually
brew install hammerspoon | yes
# use ln -s ~/dotfiles/awesome-hammerspoon ~/.hammerspoon
# for monitor controls install ddcctl
# brew install ddcctl, not work on mac arm, use
# https://github.com/TinkoLiu/DDCCli instead
brew install raycast | yes

brew install kitty | yes
# setup keyboard 
brew install karabiner-elements | yes
# modifications of keys for HHKB
# blackslash(\)             -> escape
# delete_or_backspace       -> blackslash(\)
# escape                    -> grave_accent_and_tilde(`)
# grave_accent_and_tilde(`) -> delete_or_backspace 

#brew install wireshark-app | yes
# ========================================================



