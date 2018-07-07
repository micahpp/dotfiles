#!/bin/bash

source dots/.exports

DOTS_PATH=$DOTFILES_PATH/dots
DOTFILE_GLOB=".[[:alpha:]]*"

echo "creating symlinks dotfiles from $DOTS_PATH"
for DOTFILE in $DOTS_PATH/$DOTFILE_GLOB; do
        dotfile=$(basename "${DOTFILE}")
        ln -sf $DOTFILE $HOME/$dotfile
        echo "$dotfile linked"
done;

