#!/usr/bin/env bash

version="0.13.0"

if [ ! -z $ZIG_VERSION ]; then
    version="$ZIG_VERSION"
fi

echo "Installing version $version of zig"

if [ -d $HOME/Documents/tools/zig ]; then
    sudo rm -r $HOME/Documents/tools/zig
fi

git clone git@github.com:ziglang/zig.git $HOME/Documents/tools/zig

git -C $HOME/Documents/tools/zig fetch --all
git -C $HOME/Documents/tools/zig checkout $version

mkdir $HOME/Documents/tools/zig/build

(
    cd $HOME/Documents/tools/zig/build
    cmake ..
    sudo make install
)

