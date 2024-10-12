#!/bin/bash
sudo fdisk /dev/sdc << EOF
d
d
d
d
d
d
d
d
d
d
g
n
1
 
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


+1G
n


+1G
n


+1G
n



w
EOF

for i in {1..10}; do
  sudo mkfs.ext4 /dev/sdc$i
done

sudo mkdir -p /Examenes-UTN/profesores/parte{1..10}

for i in {1..10}; do
        sudo mount /dev/sdc$i /Examenes-UTN/profesores/parte$i
done

for i in {1..10}; do
	echo "/dev/sdb$i /Examenes-UTN/profesores/parte$i ext4 default 0 0 0" | sudo tee -a /etc/fstab 
done

sudo mount -a 

