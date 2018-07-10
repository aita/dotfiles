#!/bin/sh

ROOT_DIR=$(cd $(dirname $0) && pwd)
UNAME=`uname`

ln -sv $ROOT_DIR/.gitconfig $HOME
ln -sv $ROOT_DIR/.zshrc $HOME

mkdir -v $HOME/.config
ln -sv $ROOT_DIR/nvim $HOME/.config

ln -sv $ROOT_DIR/.tmux.conf $HOME
if [ "$UNAME" = "Darwin" ]; then
	ln -sv $ROOT_DIR/.tmux.mac.conf $HOME
fi;
