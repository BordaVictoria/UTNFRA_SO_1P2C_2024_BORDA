#!/bin/bash
sudo fdisk /dev/sdc << EOF
m
n



+1G
n



+1G
n



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

for i in {1,2,3,5,6,7,8,9,10,11}; do
  sudo mkfs.ext4 /dev/sdc$i
done

sudo mkdir -p /Examenes-UTN/profesores/parte{1,2,3,5,6,7,8,9,10,11}

for i in {1,2,3,5,6,7,8,9,10,11}; do
        sudo mount /dev/sdc$i /Examenes-UTN/profesores/parte$i
done
for i in {1,2,3,5,6,7,8,9,10,11}; do
	
	echo "/dev/sdc$i /Examenes-UTN/profesores/parte$i ext4 defaults 0 0" | sudo tee -a /etc/fstab
done

sudo mount -a

