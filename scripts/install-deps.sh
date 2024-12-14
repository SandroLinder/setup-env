#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y

sudo apt install gettext npm python3 python3-pip

sudo apt autoremove -y
