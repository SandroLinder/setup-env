#!/usr/bin/env bash

if [ -d $HOME/Documents/tools/zig ]; then
    sudo rm -r $HOME/Documents/tools/zig
    sudo rm /usr/local/bin/zig
fi

mkdir $HOME/Documents/tools/zig
curl -o $HOME/Documents/tools/zig/zig.tar.xz https://ziglang.org/download/0.13.0/zig-linux-x86-0.13.0.tar.xz

tar -xf $HOME/Documents/tools/zig/zig.tar.xz -C $HOME/Documents/tools/zig
rm $HOME/Documents/tools/zig/zig.tar.xz

sudo cp $HOME/Documents/tools/zig/zig-linux-x86-0.13.0/zig /usr/local/bin/zig
