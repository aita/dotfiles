#!/bin/sh

ROOT_DIR=$(cd $(dirname $0) && pwd)
ln -sv $ROOT_DIR/.zshrc $HOME
ln -sv $ROOT_DIR/.tmux.conf $HOME
ln -sv $ROOT_DIR/.config $HOME
