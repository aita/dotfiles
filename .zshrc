# enable complete
autoload -Uz compinit
compinit
setopt magic_equal_subst

# history
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt inc_append_history

# comment
setopt interactive_comments

# disable beep
setopt no_beep
setopt no_hist_beep
setopt no_list_beep

# share history
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history

# emacs bind
bindkey -e

# vim
export VISUAL=nvim
export EDITOR=nvim
alias vim=nvim
alias vi=nvim

# OPAM configuration
. /home/aita/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# $HOME/.local
export PATH="$HOME/.local/bin:$PATH"
