#!/bin/bash

dir=$(pwd)

# rofi config
mkdir ~/.config/rofi
ln -s $dir/rofi/config ~/.config/rofi/config
ln -s $dir/rofi/customdark.rasi ~/.config/rofi/customdark.rasi
ln -s $dir/rofi/liam.rasi ~/.config/rofi/liam.rasi

# vim config
ln -s $dir/.vimrc ~/.vimrc

# bash config
ln -s $dir/.bashrc ~/.bashrc

# tmux config
ln -s $dir/.tmux.conf ~/.tmux.conf
