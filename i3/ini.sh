echo "Iniciando..."

echo " "; echo "¿Desea abrir uno de los siguientes programas? c : VScode / e : eclipse / i : idea / v : virtualbox /  : -"
read programa

i3-msg "workspace 2: - Internet"; i3-msg "exec firefox";

i3-msg "workspace 1:   Terminal" ; lxterminal -e "i3-msg move up;sudo ntpd -qg;echo ;cal;curl -s wttr.in | head -n 7;echo;date;read;ranger;lxterminal" ; lxterminal -e "i3-msg move left;lxterminal -e bashtop";

i3-msg "exec telegram-desktop"


case $programa in
	c)
		nohup code &
		;;
	e) 
		nohup eclipse &
		;;
	i) 
		nohup intellij-idea-ultimate-edition &
		;;
	v) 
		nohup virtualbox &
		;;
esac

clear
echo "Desea abrir 2 terminales en WS9? y/n"
read opcion

if [ "$opcion" == "y" ]; then
	i3-msg "workspace 9:   Term"; i3-msg "exec lxterminal";i3-msg "exec lxterminal";
fi

clear
