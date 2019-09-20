#!/bin/bash

## vars
DOT_DIR="$HOME/dotfiles"

DOT_GITCONFIG="$DOT_DIR/.gitconfig"
GITCONFIG="$HOME/.gitconfig"

DOT_GITIGNORE_GLOBAL="$DOT_DIR/.gitignore_global"
GITIGNORE_GLOBAL="$HOME/.gitignore_global"

## setup gitfiles

if ! [ -f $DOT_GITCONFIG ]; then
    cp $DOT_GITCONFIG.stub $DOT_GITCONFIG
    echo "Created $DOT_GITCONFIG from stub"
fi
[[ -f $GITCONFIG ]] && cp $GITCONFIG $GITCONFIG.bak
ln -sfn $DOT_GITCONFIG $GITCONFIG
echo "Symlinked to $GITCONFIG"

if ! [ -f $DOT_GITIGNORE_GLOBAL ]; then
    cp $DOT_GITIGNORE_GLOBAL.stub $DOT_GITIGNORE_GLOBAL
    echo "Created $DOT_GITIGNORE_GLOBAL from stub"
fi
[[ -f $GITIGNORE_GLOBAL ]] && cp $GITIGNORE_GLOBAL $GITIGNORE_GLOBAL.bak
ln -sfn $DOT_GITIGNORE_GLOBAL $GITIGNORE_GLOBAL
echo "Symlinked to $GITIGNORE_GLOBAL"