#!/bin/bash

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1

sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A1


sudo useradd -m -s /bin/bash -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2

sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A2


sudo useradd -m -s /bin/bash -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3

sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A3


sudo useradd -m -s /bin/bash -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1

sudo usermod -G p1c2_2024_gProfesores p1c2_2024_P1


sudo chown p1c2_2024_A1:p1c2_2024_A1 Examenes-UTN/alumnos_1
sudo chmod 750 Examenes-UTN/alumno_1

sudo chmod 760 Examenes-UTN/alumnos_2
sudo chown p1c2_2024_A2:p1c2_2024_A2 Examenes-UTN/alumnos_2

sudo chmod 700 Examenes-UTN/alumnos_3
sudo chown p1c2_2024_A3:p1c2_2024_A3 Examenes-UTN/alumnos_3

sudo chmod 775 Examenes-UTN/profesores
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores Examenes-UTN/profesores

