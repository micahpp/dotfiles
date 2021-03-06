#!/bin/zsh

# export env vars
source dots/.env

echo "setting macos system configs"
./macos/defaults.sh

echo "symlinking config files to home dir"
for DOTS_CONFIG in `find ${DOTFILES}/configs`; do
    if [[ -f $DOTS_CONFIG ]]; then
        CONFIG_FILENAME=$(basename "${DOTS_CONFIG}")
        ln -sf $DOTS_CONFIG $HOME/$CONFIG_FILENAME
     fi
done;

echo "setting git global configs"
git config --global core.excludesfile "~/.gitignore"
git config --global pager.branch false