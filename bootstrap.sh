#!/bin/bash

########
# VIM!

# Clean slate.
rm -rf ~/.vim
rm ~/.vimrc

# Assuming vim 8, native package management.
mkdir -p ~/.vim/pack/plugins/start/
cd ~/.vim/pack/plugins/start/
git clone https://github.com/scrooloose/nerdtree.git
git clone git://github.com/vim-ruby/vim-ruby.git

ln -s ~/dotfiles/.vimrc ~/.vimrc

########
# BASH!


