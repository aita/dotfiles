# Vim
export VISUAL=nvim
export EDITOR=nvim
alias vim=nvim
alias vi=nvim

# Python
alias python=python3
alias pip=pip3


function share_history {
    history -a
    history -c
    history -r
}

# Save and reload the history after each command finishes
export PROMPT_COMMAND='share_history'

# append to history, don't overwrite it
shopt -u histappend

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history


# bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# git completion
. /usr/local/etc/bash_completion.d/git-completion.bash
. /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\]@\h \[\033[32m\]\W\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\] \$ '


# fasd
eval "$(fasd --init auto)"

