#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y gettext lua5.1 liblua5.1-0-dev npm python3 python3-pip \
    git xclip stow curl libfuse2 gnome-tweaks

sudo apt autoremove -y
