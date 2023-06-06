#! /bin/bash

set -e

# Variables
StorePath=~/Documents/.scripts/ConfigFiles

# Home directory
cd ~
cp .bashrc $StorePath
cp .vimrc $StorePath

# swaywm
cd ~/.config/sway
cp config $StorePath/config.sway

# waybar
cd ~/.config/waybar
cp config $StorePath/config.waybar
cp style.css $StorePath/syle.css.waybar

# alacritty
cd ~/.config/alacritty
cp alacritty.yml $StorePath/

cd ~/Documents/.scripts/ConfigFiles/
git add -A
git commit
git push
