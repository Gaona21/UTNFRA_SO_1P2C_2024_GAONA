#!/bin/bash

sudo fdisk /dev/sdc <<EOF
n
p


+1G
n
p


+1G
n
p


+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
EOF

sudo mkfs -t ext4 /dev/sdc1
sudo mkfs -t ext4 /dev/sdc2
sudo mkfs -t ext4 /dev/sdc3
sudo mkfs -t ext4 /dev/sdc5
sudo mkfs -t ext4 /dev/sdc6
sudo mkfs -t ext4 /dev/sdc7
sudo mkfs -t ext4 /dev/sdc8
sudo mkfs -t ext4 /dev/sdc9
sudo mkfs -t ext4 /dev/sdc10
sudo mkfs -t ext4 /dev/sdc11

echo "/dev/sdc1 Examenes-UTN/alumnos_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc2 Examenes-UTN/alumnos_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc3 Examenes-UTN/alumnos_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc5 Examenes-UTN/alumnos_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc6 Examenes-UTN/alumnos_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc7 Examenes-UTN/alumnos_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc8 Examenes-UTN/alumnos_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc9 Examenes-UTN/alumnos_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc10 Examenes-UTN/alumnos_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc11 Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

sudo mount -a
sudo systemctl daemon-reload
sudo lsblk

