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

# OPAM configuration
. /Users/ryoaita/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# $HOME/.local
export PATH="$HOME/.local/bin:$PATH"

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

