#!/usr/bin/env bash

version="v1.0.0"

if [ ! -z $GHOST_TTY_VERSION ]; then
    version="$GHOST_TTY_VERSION"
fi

echo "Installing version $version of ghostty"

if [ -d $HOME/Documents/tools/ghostty ]; then
    sudo rm -r $HOME/Documents/tools/ghostty
fi

git clone git@github.com:ghostty-org/ghostty.git $HOME/Documents/tools/ghostty

git -C $HOME/Documents/tools/ghostty fetch --all
git -C $HOME/Documents/tools/ghostty checkout $version

(
    cd $HOME/Documents/tools/ghostty/
    nice zig build -p $HOME/.local -Doptimize=ReleaseFast
)
