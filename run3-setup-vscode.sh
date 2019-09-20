#!/bin/bash

## vars
DOT_DIR="$HOME/dotfiles"

DOT_CODE_SETTINGS="$DOT_DIR/.config/Code/User/settings.json"
CODE_SETTINGS="$HOME/.config/Code/User/settings.json"

## setup .bashrc
if ! [ -f $DOT_CODE_SETTINGS ]; then
    cp $DOT_CODE_SETTINGS.stub $DOT_CODE_SETTINGS
    echo "Created $DOT_CODE_SETTINGS from stub"
fi
[[ -f $CODE_SETTINGS ]] && cp $CODE_SETTINGS $CODE_SETTINGS.bak
ln -sfn $DOT_CODE_SETTINGS $CODE_SETTINGS
echo "Symlinked to $CODE_SETTINGS"