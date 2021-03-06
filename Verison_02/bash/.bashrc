#
# ~/.bashrc
#

stty -ixon
shopt -s autocd

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
. /usr/share/bash-completion/bash_completion

# add .scripts to path
export PATH="$PATH:$HOME/.scripts"
