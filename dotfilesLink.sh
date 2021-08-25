#!/bin/bash

ln -sf ~/dotfiles/vimrc ~/.vimrc
# .vimディレクトリがない場合は作成
if [ ! -d ~/.vim ]; then
  mkdir ~/.vim
fi 
ln -s ~/dotfiles/vim/* ~/.vim

if [ "`echo $SHELL | grep 'fish'`" ]; then
  echo "containing fish"
  ln -sf ~/dotfiles/config.fish ~/.config/fish/config.fish
else if [ "`echo $SHELL | grep 'ash'`" ]; then
  echo "containing ash"
  ls -sf ~/dotfiles/ashrc ~/.ashrc
else
  echo "not contain fish"
fi
