#!/bin/bash

opcion_update() {
	echo "Actualizando la lista de paquetes..."
	sleep 3
	echo ""
	apt update
	echo ""
	echo "Completado. Volviendo al menú principal..."
	sleep 3
}

opcion_upgrade() {
	echo "Actualizando paquetes instalados..."
	sleep 3
	echo ""
	apt upgrade -y
        echo ""
        echo "Completado. Volviendo al menú principal..."
        sleep 3
}

opcion_dist_upgrade() {
	echo "Actualizando paquetes instalados de manera inteligente..."
	sleep 3
	echo ""
	apt dist-upgrade -y
	echo ""
	echo "Completado. Volviendo al menú principal..."
	sleep 3
}

opcion_limpiar_residuales() {
	echo "Limpiando archivos residuales de actualizaciones..."
	echo ""
	sleep 3
	echo "Limpiando..."
	echo ""
	sleep 2
	apt autoclean
	echo ""
	echo "Completado."
	echo ""
	echo "Removiendo paquetes inservibles..."
	echo ""
	sleep 2
	apt autoremove
	echo ""
	echo "Completado."
	echo ""
	echo "Purgando archivos..."
	echo ""
	sleep 2
	apt --purge remove
	echo "Completado."
	echo ""
	echo "Todo el proceso de limpieza ha sido completado. Volviendo al menú principal..."
	sleep 3
}

pulsar_enter() {
	echo ""
	echo -n "	Pulsa 'Enter' para continuar "
	read
	clear
}

opcion_incorrecta() {
	echo "Opción incorrecta. Volviendo al menú principal..."
	sleep 3
}

until [ "$seleccion" = "0" ]; do
	clear
        echo "			 _____                                "
        echo "			|  ___|                               "
        echo "			| |__  __ _ ___ _   _                 "
        echo "			|  __|/ _\ / __| | | |                "
        echo "			| |__| (_| \__ \ |_| |                "
        echo "			\____/\__,_|___/\__, |                "
        echo "			                 __/ |                "
        echo "			                |___/                 "
        echo "			 _   _           _       _            "
        echo "			| | | |         | |     | |           "
        echo "			| | | |_ __   __| | __ _| |_ ___ _ __ "
        echo "			| | | | '_ \ / _\ |/ _\ | __/ _ \ '__|"
        echo "			| |_| | |_) | (_| | (_| | ||  __/ |   "
        echo "			\___/| .__/ \__,_|\__,_|\__\____|_|   "
        echo "			     | |                              "
        echo "			     |_|                              "
        echo "			 _____ _                              "
        echo "			/  __ \ |                             "
        echo "			| /  \/ | ___  __ _ _ __   ___ _ __   "
        echo "			| |   | |/ _ \/ _\ | '_ \ / _ \ '__|  "
        echo "			| \__/\ |  __/ (_| | | | |  __/ |     "
        echo "			 \____/_|\___|\__,_|_| |_|\___|_|     "
        echo "                                      		      "
        echo "                            		              "
	echo ""
	echo "     Twitter: @SrCroqueta_      Twitch: SrCroqueta_      GitHub: SrCroqueta        "
	echo ""
	echo ""
	echo "			1 - Actualizar lista de paquetes."
	echo "			2 - Actualizar paquetes instalados."
	echo "			3 - Actualizar paquetes instalados (Smart)."
	echo "			4 - Limpiar archivos residuales."
	echo "			0 - Salir."
	echo ""
	echo -n "	    Introduzca el número de la operación ha realizar: "
	read seleccion
	echo ""
	case $seleccion in
		1 ) clear ; opcion_update ; press_enter ;;
		2 ) clear ; opcion_upgrade ; press_enter ;;
		3 ) clear ; opcion_dist_upgrade ; press_enter ;;
		4 ) clear ; opcion_limpiar_residuales ; press_enter ;;
		0 ) clear ; exit ;;
		* ) clear ; opcion_incorrecta ; press_enter ;;
	esac
done
