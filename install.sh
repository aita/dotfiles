#!/bin/sh

ROOT_DIR=$(cd $(dirname $0) && pwd)
UNAME=`uname`

ln -sv $ROOT_DIR/.zshrc $HOME
ln -sv $ROOT_DIR/.config $HOME

ln -sv $ROOT_DIR/.tmux.conf $HOME
if [ "$UNAME" = "Darwin" ]; then
	ln -sv $ROOT_DIR/.tmux.mac.conf $HOME
fi;
