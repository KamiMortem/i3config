#!/bin/bash

#$( lxterminal -e "cal ;read; lxterminal" )

#$( sleep 5 )

$( i3-msg "workspace - Internet" )
$( i3-msg "exec firefox")

$( i3-msg "workspace   Terminal" )

#$( i3-msg exec lxterminal)
#$( lxterminal )

$( lxterminal -e "i3-msg move up;echo;cal;curl -s wttr.in | head -n 7;echo;date;read;ranger;lxterminal")

#$( i3-msg "move left" )


$( lxterminal -e "i3-msg move left;lxterminal -e bashtop")


$( i3-msg "exec telegram-desktop" )

