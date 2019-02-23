#!/bin/sh

ROOT_DIR=$(cd $(dirname $0) && pwd)
CONF_DIR=$HOME/.config

ln -sfv $ROOT_DIR/.gitconfig $HOME
ln -sfv $ROOT_DIR/.bashrc $HOME
ln -sfv $ROOT_DIR/.emacs.d $HOME

mkdir -v $CONF_DIR
ln -sfv $ROOT_DIR/nvim $CONF_DIR
ln -sfv $ROOT_DIR/flake8 $CONF_DIR
ln -sfv $ROOT_DIR/.tmux.conf $HOME
if [ $(uname -s) = "Darwin" ]; then
    ln -sfv $ROOT_DIR/.tmux.mac.conf $HOME
fi;
ln -sfv $ROOT_DIR/fish $CONF_DIR
fish -c 'fisher'

# install emacs packages
emacs --batch --no-init-file --load .emacs.d/install.el
