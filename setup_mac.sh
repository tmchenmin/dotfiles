#!/bin/bash

# 1. setup homebrew

# 2. setup rcm according to README.md

# 3. install homebrew packages

# command line tools
brew install tmux the_silver_searcher
brew install diff-so-fancy
# develop tools
brew install cmake tig git-lfs

# ========================================================
# brew cask, need open it and setup manually
brew install hammerspoon
# use ln -s ~/dotfiles/awesome-hammerspoon ~/.hammerspoon
# for monitor controls install ddcctl
# brew install ddcctl, not work on mac arm, use
# https://github.com/TinkoLiu/DDCCli instead
brew install raycast

brew install kitty
# setup keyboard 
brew install karabiner-elements
# modifications of keys for HHKB
# blackslash(\)             -> escape
# delete_or_backspace       -> blackslash(\)
# escape                    -> grave_accent_and_tilde(`)
# grave_accent_and_tilde(`) -> delete_or_backspace 
brew install wireshark
# ========================================================



