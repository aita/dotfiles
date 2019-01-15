#!/bin/sh

ROOT_DIR=$(cd $(dirname $0) && pwd)
CONF_DIR=$HOME/.config

cd $ROOT_DIR

ln -sv .gitconfig $HOME
ln -sv .bashrc $HOME
ln -sv .emacs.d $HOME

mkdir -v $CONF_DIR
ln -sv nvim $CONF_DIR
ln -sv flake8 $CONF_DIR
ln -sv .tmux.conf $HOME
if [ $(uname -s) = "Darwin" ]; then
    ln -sv .tmux.mac.conf $HOME
fi;
ln -sv $ROOT_DIR/fish $CONF_DIR
fish -c 'fisher'

# install emacs packages
emacs --batch --no-init-file --load .emacs.d/install.el
