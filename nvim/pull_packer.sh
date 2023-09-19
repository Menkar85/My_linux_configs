#!/bin/bash

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim cmake -y
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 [[ -d /home/$USER/.config ]] || mkdir /home/${USER}/.config
cd ..
 cp -r ./nvim /home/${USER}/.config/ && rm /home/${USER}/.config/nvim/pull_packer.sh
 echo 'Completed'