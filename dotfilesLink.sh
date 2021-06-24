#!/bin/bash

ln -sf ~/GitHub/dotfiles/vimrc ~/.vimrc
ln -sf ~/GitHub/dotfiles/colors ~/.vim

if [ "`echo $SHELL | grep 'fish'`" ]; then
  echo "containing fish"
  ln -sf ~/GitHub/dotfiles/config.fish ~/.config/fish/config.fish
else
  echo "not contain fish"
fi

printf '\033[32mSUCCESS\033[m'