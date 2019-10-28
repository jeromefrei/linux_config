#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'
alias grep='grep --color=auto'
alias videoplay='ffplay -fs -nostats'
#alias fonts='gtk2fontsel'
alias calc='galculator'

PS1='[\u@\h \W]\$ '
