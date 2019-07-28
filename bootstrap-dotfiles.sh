#!/bin/bash

## vars
DOT_DIR="$HOME/dotfiles"

DOT_BASHRC="$DOT_DIR/.bashrc"
BASHRC="$HOME/.bashrc"

DOT_SSH_CONFIG="$DOT_DIR/.ssh/config"
SSH_CONFIG="$HOME/.ssh/config"

DOT_EXPORTS="$DOT_DIR/.bash_exports"

## setup .bashrc
if ! [ -f $DOT_BASHRC ]; then
    cp $DOT_BASHRC.stub $DOT_BASHRC
    chown $USER $DOT_BASHRC
    chmod 644 $DOT_BASHRC
    echo "Created $DOT_BASHRC from stub"
fi
[[ -f $BASHRC ]] && cp $BASHRC $BASHRC.bak
ln -sfn $DOT_BASHRC $BASHRC
echo "Symlinked to $BASHRC"

## setup .ssh/config
if ! [ -f $DOT_SSH_CONFIG ]; then
    cp $DOT_SSH_CONFIG.stub $DOT_SSH_CONFIG
    chown $USER $DOT_SSH_CONFIG
    chmod 600 $DOT_SSH_CONFIG
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