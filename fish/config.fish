alias emacs "emacs -nw --no-desktop"
alias ec "emacsclient -t"
alias vim nvim
alias vi nvim

# Go
if [ -x "(command -v go)" ]; then
    set -gx GOPATH "$HOME/go"
    set -gx fish_user_paths "$GOPATH/bin" $fish_user_paths
end

# Rust
if [ -x "(command -v cargo)" ]; then
    set -gx fish_user_paths $HOME/.cargo/bin $fish_user_paths
end

if [ -x "$HOME/.local" ]
    set -gx fish_user_paths "$HOME/.local/bin" $fish_user_paths
end

if [ (uname -s) = "Darwin" ]
    # Python
    set -gx fish_user_paths "$HOME/Library/Python/3.7/bin" $fish_user_paths

    # findutils
    set -gx fish_user_paths "/usr/local/opt/findutils/libexec/gnubin" $fish_user_paths
    set -gx MANPATH "/usr/local/opt/findutils/libexec/gnuman" $MANPATH
    # coreutils
    set -gx fish_user_paths "/usr/local/opt/coreutils/libexec/gnubin" $fish_user_paths
    set -gx MANPATH "/usr/local/opt/coreutils/libexec/gnuman" $MANPATH
    # gnu sed
    set -gx fish_user_paths "/usr/local/opt/gnu-sed/libexec/gnubin" $fish_user_paths
    set -gx MANPATH "/usr/local/opt/gnu-sed/libexec/gnuman" $MANPATH
    # gnu tar
    set -gx fish_user_paths "/usr/local/opt/gnu-tar/libexec/gnubin" $fish_user_paths
    set -gx MANPATH "/usr/local/opt/gnu-tar/libexec/gnuman" $MANPATH
    # gnu grep
    set -gx fish_user_paths "/usr/local/opt/grep/libexec/gnubin" $fish_user_paths
    set -gx MANPATH "/usr/local/opt/grep/libexec/gnuman" $MANPATH
end

if [ -x "$HOME/.opam" ]
    # opam configuration
    source /Users/ryoaita/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
end
