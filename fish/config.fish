# Emacs
alias emacs "emacs -nw --no-desktop"
alias ec "emacsclient -t"

# Go
if command -v go
    set -gx GOPATH "$HOME/go"
    set -gx fish_user_paths "$GOPATH/bin" $fish_user_paths
end

# Rust
if command -v cargo
    set -gx fish_user_paths $HOME/.cargo/bin $fish_user_paths
end

if test -e "$HOME/.local/bin"
    set -gx fish_user_paths "$HOME/.local/bin" $fish_user_paths
end

if test -e "$HOME/.opam"
    # opam configuration
    source $HOME/.opam/opam-init/init.fish >/dev/null 2>/dev/null
    or true
end

if test -e "$HOME/.rbenv"
    status --is-interactive
    and source (rbenv init -|psub)
end


if [ (uname -s) = "Darwin" ]
    # Python
    if test -e /usr/local/opt/python
        set -gx fish_user_paths /usr/local/opt/python/libexec/bin $fish_user_paths
    end

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
