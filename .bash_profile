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

if [ "$(uname -s)" = "Darwin" ]; then
    # findutils
    export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
    # coreutils
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
    # gnu sed
    export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
    # gnu tar
    export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH"
    # gnu grep
    export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/grep/libexec/gnuman:$MANPATH"

    if [ -f ~/.bashrc ] ; then
        . ~/.bashrc
    fi
fi

