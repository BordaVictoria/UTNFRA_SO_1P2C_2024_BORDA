#!/bin/bash
sudo cat /proc/meminfo | grep -i memtotal > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_BORDA/RTA_ARCHIVOS_examen_12102024/Filtro_basico.txt
sudo dmidecode -t chassis | grep -i -B 1  "manufacturer" >>/home/vagrant/repogit/UTNFRA_SO_1P2C_2024_BORDA/RTA_ARCHIVOS_examen_12102024/Filtro_basico.txt



