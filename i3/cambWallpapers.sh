#!/bin/bash

# Select random wallpaper for each screen, by fiddling with the configuration file f
or nitrogen.
# TODO: Modify to use getops, allowing you to specify config file locations, etc.
# TODO: Modify to use an RC file, so that rather than looking at hardcoded shit in t
his script you go somewhere else. 

CONFIG="$HOME/.config/nitrogen/bg-saved.cfg" # Replace this with whatever the nitrog
en config file is.
WALLPAPERDIR="$HOME/FondosPantalla/"

function setwallpaper {
    # Modify the nitrogen configuration file (default location set in $CONFIG).
    # $1: Line to modify
    # TODO: Modify it so that rather than use a line to modify this, we just use the
 screen name.
    # Other potential features: allow you to use different modes rather than centre-
and-zoom.
    WALLPAPER=`find $WALLPAPERDIR -type f | grep -E "jpeg|jpg|png" | shuf -n1`
    echo "$(date -u) -- Setting line $1 to $WALLPAPER."
    sed -i "$1 c\file=$WALLPAPER" $CONFIG
    }

setwallpaper 7   # screen 1, defined in line #7
setwallpaper 2  # screen 2, defined in line #12

# Refresh Nitrogen with new wallpaper.
nitrogen --restore

exit

# ------------- viejo ----------------

#directorio=/home/emilio/gitClone/i3config/FondosPantalla
#function mi_resolucion(){
#res=`xrandr | grep '*' | grep -o -E '[0-9]+x[0-9]+'`
#mi_alto=`echo "$res" | cut -d "x" -f 2`
#mi_ancho=`echo "$res" | cut -d "x" -f 1`
#}
#function rand_imagen(){
#imagen=`ls -1 -b -R "$directorio" | grep -i -e ".png" -e ".jpg" -e ".jpeg" | sort --random-sort | head -1`
#dir_imagen=`find "$directorio" -iname "$imagen"`
#}
#function resolucion_imagen(){
#rand_imagen
#imagen_alto=`identify -format "%h" "$dir_imagen"`
#imagen_ancho=`identify -format "%w" "$dir_imagen"`
#}
#function proporcion(){
#mi_resolucion
#resolucion_imagen
#proporcion_alto=`echo $imagen_alto/$mi_alto|bc -l`
#proporcion_ancho=`echo $imagen_ancho/$mi_ancho|bc -l`
#}
#function escalar(){
#proporcion
#if [ `echo "$proporcion_alto > 1"|bc` -eq 1 -o `echo "$proporcion_ancho > 1"|bc` -eq 1 ]; then
#nitrogen --set-zoom-fill "$dir_imagen"
#else
#nitrogen --set-zoom-fill "$dir_imagen"
#fi
#}
#
#escalar
#exit
