#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export EDITOR=vim
alias enccarpe='/home/emilio/gpg/enccarpe.sh'
alias diaryLoqui='/home/emilio/gpg/diaryLoqui.sh'
alias cambWP='/home/emilio/.config/i3/cambWallpapers.sh'
alias update='sudo pacman -Syu && yay -Syua'
