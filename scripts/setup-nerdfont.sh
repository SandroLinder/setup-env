#!/usr/bin/env bash

if [ -d $HOME/.fonts ]; then
    sudo rm -r $HOME/.fonts
fi

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip

unzip -d $HOME/.fonts JetBrainsMono.zip
rm -r JetBrainsMono.zip

fc-cache -fv
