#!/bin/bash

## vars
DOT_DIR="$HOME/dotfiles"

DOT_SSH_CONFIG="$DOT_DIR/.ssh/config"
SSH_CONFIG="$HOME/.ssh/config"

DOT_EXPORTS="$DOT_DIR/.bash_exports"

## run
if ! [ -f $DOT_SSH_CONFIG ]; then
    cp $DOT_SSH_CONFIG.stub $DOT_SSH_CONFIG
    echo "Created $DOT_SSH_CONFIG from stub"
fi
ln -sfn $DOT_SSH_CONFIG $SSH_CONFIG
echo "Symlinked to $SSH_CONFIG"

## todo: install php, composer and laravel binaries

## PATH updates
if ! [ -f $DOT_EXPORTS ]; then
    cp $DOT_EXPORTS.stub $DOT_EXPORTS
    echo "Created $DOT_EXPORTS from stub"
fi