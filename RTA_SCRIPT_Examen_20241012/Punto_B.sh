#!/bin/bash
sudo fdisk /dev/sdc << EOF
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
