#!/usr/bin/env bash

version="v0.10.2"

if [ ! -z $NVIM_VERSION ]; then
    version="$NVIM_VERSION"
fi

echo "Installing version $version of neovim"

if [ -d $HOME/Documents/tools/neovim ]; then
    rm -r $HOME/Documents/tools/neovim
fi

git clone git@github.com:neovim/neovim.git $HOME/Documents/tools/neovim

git -C $HOME/Documents/tools/neovim fetch --all
git -C $HOME/Documents/tools/neovim checkout $version

make -C $HOME/Documents/tools/neovim clean
make -C $HOME/Documents/tools/neovim CMAKE_BUILD_TYPE=RelWithDebInfo

sudo make -C $HOME/Documents/tools/neovim install

cd $HOME/Documents/tools
