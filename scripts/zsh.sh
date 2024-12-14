#!/usr/bin/env bash

sudo rm -r $HOME/.oh-my-zsh
sudo rm -r $HOME/.zsh

sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true

