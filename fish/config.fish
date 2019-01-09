# Vim
alias vim nvim
alias vi nvim

# Go
set -x GOPATH "$HOME/go"
set -x fish_user_paths "$GOPATH/bin" $fish_user_paths

# Rust
set -x fish_user_paths $HOME/.cargo/bin $fish_user_paths

# $HOME/.local
set -x fish_user_paths "$HOME/.local/bin" $fish_user_paths

# Python
set -x fish_user_paths "$HOME/Library/Python/3.7/bin" $fish_user_paths


if [ (uname -s) = "Darwin" ]
    # findutils
    set -x fish_user_paths "/usr/local/opt/findutils/libexec/gnubin" $fish_user_paths
    set -x MANPATH "/usr/local/opt/findutils/libexec/gnuman" $MANPATH
    # coreutils
    set -x fish_user_paths "/usr/local/opt/coreutils/libexec/gnubin" $fish_user_paths
    set -x MANPATH "/usr/local/opt/coreutils/libexec/gnuman" $MANPATH
    # gnu sed
    set -x fish_user_paths "/usr/local/opt/gnu-sed/libexec/gnubin" $fish_user_paths
    set -x MANPATH "/usr/local/opt/gnu-sed/libexec/gnuman" $MANPATH
    # gnu tar
    set -x fish_user_paths "/usr/local/opt/gnu-tar/libexec/gnubin" $fish_user_paths
    set -x MANPATH "/usr/local/opt/gnu-tar/libexec/gnuman" $MANPATH
    # gnu grep
    set -x fish_user_paths "/usr/local/opt/grep/libexec/gnubin" $fish_user_paths
    set -x MANPATH "/usr/local/opt/grep/libexec/gnuman" $MANPATH
end

if [ -d "$HOME/.opam" ]
    # opam configuration
    source /Users/ryo.aita/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
end
