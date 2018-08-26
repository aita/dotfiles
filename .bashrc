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


# git completion
. /usr/local/etc/bash_completion.d/git-completion.bash

