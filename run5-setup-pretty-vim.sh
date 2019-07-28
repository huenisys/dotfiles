#!/bin/bash

DOT_VIM_DIR="$HOME/dotfiles/vim"

ln -sfn $DOT_VIM_DIR/.vimrc $HOME/.vimrc
ln -sfn $DOT_VIM_DIR/.vim $HOME/.vim 
ln -sfn $DOT_VIM_DIR/.vim_runtime $HOME/.vim_runtime
