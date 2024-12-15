#!/usr/bin/env bash

if [ -d $HOME/.dotfiles ]; then
    sudo rm -r $HOME/.dotfiles/
fi

mkdir $HOME/.dotfiles

git -C $HOME/ clone git@github.com:SandroLinder/.dotfiles.git


(
    cd $HOME/.dotfiles/
    stow .
)
