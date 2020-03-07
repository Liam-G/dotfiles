#!/bin/bash

dir=$(pwd)

# rofi config
ln -sfn $dir/rofi/ ~/.config/rofi/

# vim config
ln -sf $dir/.vimrc ~/.vimrc

# bash config
ln -sf $dir/.bashrc ~/.bashrc

# tmux config
ln -sf $dir/.tmux.conf ~/.tmux.conf
