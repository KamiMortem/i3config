#!/bin/bash

##i3-msg "workspace 9:   Term;exec lxterminal"
##i3-msg "exec lxterminal"

##$( sleep 1 )

i3-msg "workspace 2:  "
i3-msg "exec firefox"
i3-msg "workspace 1:  "

##$( i3-msg exec lxterminal)
##$( lxterminal )

lxterminal -e "i3-msg move up;sudo ntpd -qg;echo ;cal;curl -s wttr.in | head -n 7;echo;date;read;ranger;lxterminal"

##$( i3-msg "move left" )

lxterminal -e "i3-msg move left;lxterminal -e bashtop"

i3-msg "exec telegram-desktop"


