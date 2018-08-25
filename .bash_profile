# Python
alias python=python3
alias pip=pip3

# Vim
export VISUAL=nvim
export EDITOR=nvim
alias vim=nvim
alias vi=nvim

# Go
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# OPAM configuration
. /Users/ryoaita/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# $HOME/.local
export PATH="$HOME/.local/bin:$PATH"

# bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

