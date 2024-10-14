#!/bin/bash

cat /proc/meminfo | grep -i memtotal > repogit/UTNFRA_SO_1P2C_2024_GAONA/RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt

sudo dmidecode -t chassis | grep "Chassis Information"  >> repogit/UTNFRA_SO_1P2C_2024_GAONA/RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt

sudo dmidecode -t chassis | grep "Manufacturer" >> repogit/UTNFRA_SO_1P2C_2024_GAONA/RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt

