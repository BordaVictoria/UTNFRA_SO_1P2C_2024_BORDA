#!/bin/bash
IP=$(curl -s ifconfig.me)
echo "Mi IP publica es: $IP">/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_BORDA/RTA_ARCHIVOS_examen_12102024/Filtro_avanzado.txt
USUARIO=$(whoami)
echo "Mi usuario es : $USUARIO">>/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_BORDA/RTA_ARCHIVOS_examen_12102024/Filtro_avanzado.txt
HASH=$(sudo cat /etc/shadow | grep vagrant | awk -F":" '{print$2}')
echo "El hash de mi usuario es : $HASH ">>/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_BORDA/RTA_ARCHIVOS_examen_12102024/Filtro_avanzado.txt
URL=$(git remote get-url origin)
echo "La url de mi repo es : $URL " >>/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_BORDA/RTA_ARCHIVOS_examen_12102024/Filtro_avanzado.txt


