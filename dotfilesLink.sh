#!/bin/bash

ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/colors ~/.vim/colors

if [ "`echo $SHELL | grep 'fish'`" ]; then
  echo "containing fish"
  ln -sf ~/dotfiles/config.fish ~/.config/fish/config.fish
else
  echo "not contain fish"
fi

printf '\033[32mSUCCESS\033[m'
