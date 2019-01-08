#!/bin/sh

ROOT_DIR=$(cd $(dirname $0) && pwd)
UNAME=`uname`

ln -sv $ROOT_DIR/.gitconfig $HOME
ln -sv $ROOT_DIR/.bashrc $HOME
ln -sv $ROOT_DIR/.emacs.d $HOME

mkdir -v $HOME/.config
ln -sv $ROOT_DIR/nvim $HOME/.config
ln -sv $ROOT_DIR/flake8 $HOME/.config
ln -sv $ROOT_DIR/fish $HOME/.config
ln -sv $ROOT_DIR/fisherman $HOME/.config

# install emacs packages
emacs --batch --no-init-file --load .emacs.d/install.el

ln -sv $ROOT_DIR/.tmux.conf $HOME
if [ "$UNAME" = "Darwin" ]; then
	ln -sv $ROOT_DIR/.tmux.mac.conf $HOME
fi;
