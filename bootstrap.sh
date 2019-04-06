#!/bin/bash

########
# VIM!

VIM_PLUGIN_DIR=~/.vim/pack/plugins/start/

# Clean slate.
rm -rf ~/.vim
rm ~/.vimrc

# Assuming vim 8, native package management.
mkdir -p $VIM_PLUGIN_DIR
git clone https://github.com/scrooloose/nerdtree.git $VIM_PLUGIN_DIR/nerdtree
git clone git://github.com/vim-ruby/vim-ruby.git $VIM_PLUGIN_DIR/vim-ruby

ln -s ~/dotfiles/.vimrc ~/.vimrc

########
# BASH!

rm ~/.profile

# Clean slate.
rm -rf ~/dotfiles/plugins

# Download all the things.
mkdir ~/dotfiles/plugins
git clone https://github.com/magicmonty/bash-git-prompt.git ~/dotfiles/plugins/.bash-git-prompt --depth=1

ln -s ~/dotfiles/.profile ~/.profile
