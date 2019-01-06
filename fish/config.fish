# Vim
alias vim="nvim"

# Go
set -gx GOPATH "$HOME/go"
set -g fish_user_paths "$GOPATH/bin" $fish_user_paths

# Haskell
set -g fish_user_paths (stack path --compiler-bin) $fish_user_paths

# Rust
set -g fish_user_paths "$HOME/.cargo/bin" $fish_user_paths

# $HOME/.local
set -g fish_user_paths "$HOME/.local/bin" $fish_user_paths

# # LLVM
# set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths
# set -gx LDFLAGS "-L/usr/local/opt/llvm/lib" $LDFLAGS
# set -gx CPPFLAGS "-I/usr/local/opt/llvm/include" $CPPFLAGS
# set -gx CFLAGS "-I/usr/local/opt/llvm/include" $CFLAGS

# Python
set -g fish_user_paths "$HOME/Library/Python/3.7/bin" $fish_user_paths


if [ (uname -s) = "Darwin" ]
    # findutils
    set -g fish_user_paths "/usr/local/opt/findutils/libexec/gnubin" $fish_user_paths
    set -g MANPATH "/usr/local/opt/findutils/libexec/gnuman" $MANPATH
    # coreutils
    set -g fish_user_paths "/usr/local/opt/coreutils/libexec/gnubin" $fish_user_paths
    set -g MANPATH "/usr/local/opt/coreutils/libexec/gnuman" $MANPATH
    # gnu sed
    set -g fish_user_paths "/usr/local/opt/gnu-sed/libexec/gnubin" $fish_user_paths
    set -g MANPATH "/usr/local/opt/gnu-sed/libexec/gnuman" $MANPATH
    # gnu tar
    set -g fish_user_paths "/usr/local/opt/gnu-tar/libexec/gnubin" $fish_user_paths
    set -g MANPATH "/usr/local/opt/gnu-tar/libexec/gnuman" $MANPATH
    # gnu grep
    set -g fish_user_paths "/usr/local/opt/grep/libexec/gnubin" $fish_user_paths
    set -g MANPATH "/usr/local/opt/grep/libexec/gnuman" $MANPATH
end
