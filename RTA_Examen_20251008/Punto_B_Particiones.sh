#!/bin/bash
#
#Punto B - Particiones
#
#Particionamiento
#

DISCO="/dev/sdc"

echo "--- INICIALIZANDO PARTICIONAMIENTO EN $DISCO ---"

sudo fdisk $DISCO << EOF
n
p
1

+1G
n
p
2

+1G
n
e
3


n

+2G
n

+2G
n


w
EOF

sudo partprobe $DISCO
echo "--- PARTICIONAMIENTO FINALIZADO ---"
