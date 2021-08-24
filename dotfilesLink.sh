#!/bin/bash

ln -sf ~/dotfiles/vimrc ~/.vimrc
mkdir -p ~/.vim/colors
ln -sf ~/dotfiles/colors ~/.vim/colors

if [ "`echo $SHELL | grep 'fish'`" ]; then
  echo "containing fish"
  ln -sf ~/dotfiles/config.fish ~/.config/fish/config.fish
else
  echo "not contain fish"
fi
