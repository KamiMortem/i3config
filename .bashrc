#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

export PS1="\[\033[38;5;10m\][\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;31m\]:\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;2m\]\W\[$(tput sgr0)\]\[\033[38;5;10m\]]{\[$(tput sgr0)\]\[\033[38;5;32m\]\\$\[$(tput sgr0)\]\[\033[38;5;10m\]}>\[$(tput sgr0)\] \[$(tput sgr0)\]"


# History

HISTSIZE=30000
HISTFILESIZE=40000
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%F %T: "
unset PROMPT_COMMAND
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export EDITOR=vim

# Alias

alias enccarpe='/home/emilio/gpg/enccarpe.sh'
alias diaryLoqui='/home/emilio/gpg/diaryLoqui.sh'
alias cambWP='/home/emilio/.config/i3/cambWallpapers.sh'
alias furd='/mnt/D0FC9AAEFC9A8DFA/Proyectos/furd/Furd.out'
alias update='sudo pacman -Syu && yay -Syua'
alias iniciar='/home/emilio/.config/i3/ini.sh'
alias screenshotsA='/home/emilio/.config/i3/screenshots a'
alias screenshotsF='/home/emilio/.config/i3/screenshots f'
alias screenshotsW='/home/emilio/.config/i3/screenshots w'
alias clearcache='sudo pacman -Sc && yay -Sc'


# Iniciar terminal

echo "------------------------------------------------------"
echo "|----------------------------------------------------|"
echo "|                                                    | "
echo "|            ╦╔═┌─┐┌┬┐┬╔╦╗┌─┐┬─┐┌┬┐┌─┐┌┬┐            | "
echo "|            ╠╩╗├─┤││││║║║│ │├┬┘ │ ├┤ │││            | "
echo "|            ╩ ╩┴ ┴┴ ┴┴╩ ╩└─┘┴└─ ┴ └─┘┴ ┴            | "
echo '|                                                    | '
echo '|  $$\       $$$$$$\ $$\   $$\ $$\   $$\ $$\   $$\   | '
echo '|  $$ |      \_$$  _|$$$\  $$ |$$ |  $$ |$$ |  $$ |  | '
echo '|  $$ |        $$ |  $$$$\ $$ |$$ |  $$ |\$$\ $$  |  | '
echo '|  $$ |        $$ |  $$ $$\$$ |$$ |  $$ | \$$$$  /   | '
echo '|  $$ |        $$ |  $$ \$$$$ |$$ |  $$ | $$  $$<    | '
echo '|  $$ |        $$ |  $$ |\$$$ |$$ |  $$ |$$  /\$$\   | '
echo '|  $$$$$$$$\ $$$$$$\ $$ | \$$ |\$$$$$$  |$$ /  $$ |  | '
echo '|  \________|\______|\__|  \__| \______/ \__|  \__|  | '
echo '|                                                    | '
echo "|----------------------------------------------------| "
echo "|                    Bienvenido                      | "
echo "|----------------------------------------------------| "
echo "| 1 - furd            |    Cualquiera - /bin/bash    | "
echo "|----------------------------------------------------|"
echo "------------------------------------------------------ "
read opIniciar
clear
if [ "$opIniciar" == "1" ]; then
	furd
fi
