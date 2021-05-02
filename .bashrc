#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export PS1="\[\033[38;5;10m\][\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;31m\]:\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;2m\]\W\[$(tput sgr0)\]\[\033[38;5;10m\]]{\[$(tput sgr0)\]\[\033[38;5;32m\]\\$\[$(tput sgr0)\]\[\033[38;5;10m\]}>\[$(tput sgr0)\] \[$(tput sgr0)\]"

export EDITOR=vim
alias enccarpe='/home/emilio/gpg/enccarpe.sh'
alias diaryLoqui='/home/emilio/gpg/diaryLoqui.sh'
alias cambWP='/home/emilio/.config/i3/cambWallpapers.sh'
alias update='sudo pacman -Syu && yay -Syua'
