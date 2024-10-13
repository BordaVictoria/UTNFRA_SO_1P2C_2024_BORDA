#!/bin/bash
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
PASSW=$(sudo grep vagrant /etc/shadow | awk -F':' '{print$2}')
for i in {1..3};do
        sudo useradd -m -s /bin/bash -c "Alumno $i " -G p1c2_2024_gAlumno -p $PASSW p1c2_2024_A$i
done
sudo useradd -m -s /bin/bash -c "profesor" -G p1c2_2024_gProfesores -p $PASSW p1c2_2024_P1
for i in {1..3};do

        sudo chown p1c2_2024_A$i /Examenes-UTN/alumno$i
        sudo chgrp p1c2_2024_gAlumno /Examenes-UTN/alumno$i
done
sudo chown p1c2_2024_P1 /Examenes-UTN/profesores
sudo chgrp p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 750 /Examenes-UTN/alumno1
sudo chmod 750 /Examenes-UTN/alumno2
sudo chmod 700 /Examenes-UTN/alumno3
sudo chmod 775 /Examenes-UTN/profesores

sudo su p1c2_2024_P1 -c whoami > /Examenes-UTN/profesores/validar.txt <<EOF
vagrant
vagrant
EOF
sudo su p1c2_2024_A1 -c whoami > /Examenes-UTN/alumno1/validar.txt <<EOF
vagrant
vagrant
EOF
sudo su p1c2_2024_A2 -c whoami > /Examenes-UTN/alumno2/validar.txt <<EOF
vagrant
vagrant
EOF
sudo su p1c2_2024_A3 -c whoami > /Examenes-UTN/alumno3/validar.txt <<EOF
vagrant
vagrant
EOF

