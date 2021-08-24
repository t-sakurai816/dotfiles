#!/bin/bash

ln -sf ~/dotfiles/vimrc ~/.vimrc
# .vimディレクトリがない場合は作成
if [ ! -d ~/.vim ]; then
  mkdir ~/.vim
fi 
ln -s ~/dotfiles/colors ~/.vim/

if [ "`echo $SHELL | grep 'fish'`" ]; then
  echo "containing fish"
  ln -sf ~/dotfiles/config.fish ~/.config/fish/config.fish
else
  echo "not contain fish"
fi
