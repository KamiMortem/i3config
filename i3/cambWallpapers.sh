directorio=/home/emilio/gitClone/i3config/FondosPantalla
function mi_resolucion(){
res=`xrandr | grep '*' | grep -o -E '[0-9]+x[0-9]+'`
mi_alto=`echo "$res" | cut -d "x" -f 2`
mi_ancho=`echo "$res" | cut -d "x" -f 1`
}
function rand_imagen(){
imagen=`ls -1 -b -R "$directorio" | grep -i -e ".png" -e ".jpg" -e ".jpeg" | sort --random-sort | head -1`
dir_imagen=`find "$directorio" -iname "$imagen"`
}
function resolucion_imagen(){
rand_imagen
imagen_alto=`identify -format "%h" "$dir_imagen"`
imagen_ancho=`identify -format "%w" "$dir_imagen"`
}
function proporcion(){
mi_resolucion
resolucion_imagen
proporcion_alto=`echo $imagen_alto/$mi_alto|bc -l`
proporcion_ancho=`echo $imagen_ancho/$mi_ancho|bc -l`
}
function escalar(){
proporcion
if [ `echo "$proporcion_alto > 1"|bc` -eq 1 -o `echo "$proporcion_ancho > 1"|bc` -eq 1 ]; then
nitrogen --set-zoom-fill "$dir_imagen"
else
nitrogen --set-zoom-fill "$dir_imagen"
fi
}

escalar
exit
