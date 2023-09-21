#!/bin/bash
# 
# Author: Menkar85
# Date created: 2022
# Last modified: 20.09.2023

# Description: Script for installing nvim with packer. For Ubuntu only.

# Usage: ./nvim_with_packer.sh

VERSION="0.0.9"

cat /etc/os-release | grep -o 'NAME="Ubuntu"'
if (($? != 0)); then
    echo "Your OS is not Ubuntu"
    exit 1
else
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt update
    sudo apt install neovim cmake -y
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    [[ -d /home/$USER/.config ]] || mkdir /home/${USER}/.config
    cd ..
    cp -r ./nvim /home/${USER}/.config/ && rm /home/${USER}/.config/nvim/pull_packer.sh
    echo 'Completed'
fi
