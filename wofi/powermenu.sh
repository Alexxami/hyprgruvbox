#!/bin/bash

option=$(echo -e "󰑙\n⏻\n󰗽" | wofi --dmenu --prompt "Selecciona una opción:" --allow-markup --insensitive -x 582 -y 450)

echo "Opción seleccionada: $option"  # Depuración: Verifica la opción seleccionada

case $option in
    "󰑙")
        xfce4-terminal -x sudo systemctl reboot
        ;;
    "⏻")
        xfce4-terminal -x sudo systemctl poweroff
        ;;
    "󰗽")
        xfce4-terminal -x sudo pkill -u $USER
        ;;
    *)
        echo "Opción no válida"
        ;;
esac
