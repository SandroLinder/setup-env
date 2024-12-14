#!/usr/bin/env bash

mkdir $HOME/.zsh

git clone https://github.com/catppuccin/zsh-syntax-highlighting.git
cp zsh-syntax-highlighting/themes/catppuccin_macchiato-zsh-syntax-highlighting.zsh $HOME/.zsh/

sudo rm -r zsh-syntax-highlighting

# install oh-my-zhs plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
